# PowerShell script to search for a string in .evtx files with enhanced debugging

# Parameters
$searchString = "172.17.79.129"  # Replace with your search string (e.g., IP address, event code)
$evtxPath = "C:\Users\madha\Downloads\hackthebox\campfire-2"  # Replace with the path to the folder containing .evtx files
$startTime = $null  # Set to $null to search all events; or use (Get-Date).AddDays(-7) for last 7 days
$caseSensitive = $false  # Set to $true for case-sensitive search

# Initialize results array
$results = @()

Write-Host "Searching for '$searchString' in .evtx files located in $evtxPath..."

# Get all .evtx files in the specified directory
$evtxFiles = Get-ChildItem -Path $evtxPath -Filter "*.evtx" -File -ErrorAction SilentlyContinue

if ($evtxFiles.Count -eq 0) {
    Write-Host "No .evtx files found in $evtxPath. Please check the path and ensure .evtx files exist."
    exit
}

Write-Host "Found $($evtxFiles.Count) .evtx files to process."

# Search through each .evtx file
foreach ($file in $evtxFiles) {
    try {
        Write-Host "Processing file: $($file.FullName) (Size: $($file.Length / 1KB) KB)"
        $events = Get-WinEvent -Path $file.FullName -ErrorAction SilentlyContinue

        if (-not $events) {
            Write-Warning "No events found in $($file.FullName). The file may be empty or corrupted."
            continue
        }

        Write-Host "Found $($events.Count) events in $($file.FullName). Filtering for matches..."

        # Filter events based on search string
        $filteredEvents = $events | Where-Object {
            $match = $false
            if ($startTime -and $_.TimeCreated -lt $startTime) {
                return $false  # Skip events outside the time range
            }

            # Search in Message
            if ($_.Message) {
                if ($caseSensitive) {
                    $match = $match -or ($_.Message -clike "*$searchString*")
                } else {
                    $match = $match -or ($_.Message -like "*$searchString*")
                }
            }

            # Search in Properties (e.g., for IP addresses or event codes)
            if ($_.Properties) {
                foreach ($prop in $_.Properties) {
                    if ($prop.Value -and $prop.Value.ToString()) {
                        if ($caseSensitive) {
                            $match = $match -or ($prop.Value.ToString() -clike "*$searchString*")
                        } else {
                            $match = $match -or ($prop.Value.ToString() -like "*$searchString*")
                        }
                    }
                }
            }

            # Search EventID specifically
            if ($_.Id -eq $searchString) {
                $match = $true
            }

            $match
        } | Select-Object TimeCreated, LogName, Id, LevelDisplayName, Message, @{Name="FilePath";Expression={$file.FullName}}

        # Add matching events to results
        foreach ($event in $filteredEvents) {
            $results += [PSCustomObject]@{
                TimeCreated     = $event.TimeCreated
                LogName         = $event.LogName
                EventID         = $event.Id
                Level           = $event.LevelDisplayName
                Message         = if ($event.Message.Length -gt 200) { $event.Message.Substring(0, 200) + "..." } else { $event.Message }
                FilePath        = $event.FilePath
            }
        }

        Write-Host "Found $($filteredEvents.Count) matching events in $($file.FullName)."
    }
    catch {
        Write-Warning "Error accessing file $($file.FullName): $_"
    }
}

# Display results
if ($results.Count -gt 0) {
    Write-Host "`nFound $($results.Count) matching events:`n"
    $results | Format-Table -AutoSize -Wrap
}
else {
    Write-Host "`nNo events found containing '$searchString' in the specified .evtx files."
    Write-Host "Suggestions:"
    Write-Host "- Verify the search string (e.g., exact IP address, event code)."
    Write-Host "- Check if the .evtx files contain relevant logs."
    Write-Host "- Try removing the time filter by setting `$startTime = $null`."
    Write-Host "- Ensure the .evtx files are not corrupted."
    Write-Host "- Run PowerShell as Administrator."
}

# Optionally export results to CSV
$exportPath = ".\EventLogSearchResults.csv"
$results | Export-Csv -Path $exportPath -NoTypeInformation
Write-Host "Results exported to $exportPath"