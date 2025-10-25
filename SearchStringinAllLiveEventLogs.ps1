# PowerShell script to search for a string in all Windows Event Logs

# Parameters
$searchString = "YOUR_SEARCH_STRING"  # Replace with the string you want to search for
$startTime = (Get-Date).AddDays(-7)  # Search logs from the last 7 days
$computerName = "localhost"          # Change to remote computer name if needed

# Get all event log names
$logNames = Get-WinEvent -ListLog * -ComputerName $computerName | Where-Object { $_.RecordCount -gt 0 } | Select-Object -ExpandProperty LogName

# Initialize results array
$results = @()

Write-Host "Searching for '$searchString' in Windows Event Logs..."

# Search through each log
foreach ($log in $logNames) {
    try {
        Write-Host "Processing log: $log"
        $events = Get-WinEvent -LogName $log -ComputerName $computerName -ErrorAction SilentlyContinue | 
            Where-Object { 
                $_.TimeCreated -ge $startTime -and 
                ($_.Message -like "*$searchString*" -or 
                 $_.Properties -like "*$searchString*")
            } | 
            Select-Object TimeCreated, LogName, Id, LevelDisplayName, Message

        # Add matching events to results
        foreach ($event in $events) {
            $results += [PSCustomObject]@{
                TimeCreated     = $event.TimeCreated
                LogName         = $event.LogName
                EventID         = $event.Id
                Level           = $event.LevelDisplayName
                Message         = $event.Message
            }
        }
    }
    catch {
        Write-Warning "Error accessing log $log : $_"
    }
}

# Display results
if ($results.Count -gt 0) {
    Write-Host "`nFound $($results.Count) matching events:`n"
    $results | Format-Table -AutoSize -Wrap
}
else {
    Write-Host "`nNo events found containing '$searchString' in the last 7 days."
}

# Optionally export results to CSV
$exportPath = ".\EventLogSearchResults.csv"
$results | Export-Csv -Path $exportPath -NoTypeInformation
Write-Host "Results exported to $exportPath"