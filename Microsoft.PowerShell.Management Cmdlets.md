# Microsoft.PowerShell.Management Cmdlets

[Add-Content](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/add-content?view=powershell-7.5) Adds content to the specified items, such as adding words to a file.
```
Add-Content
    [-Path] <string[]>
    [-Value] <Object[]>
    [-PassThru]
    [-Filter <string>]
    [-Include <string[]>]
    [-Exclude <string[]>]
    [-Force]
    [-Credential <pscredential>]
    [-WhatIf]
    [-Confirm]
    [-NoNewline]
    [-Encoding <Encoding>]
    [-AsByteStream]
    [-Stream <string>]
    [<CommonParameters>]
```
[Clear-Content](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/clear-content?view=powershell-7.5) Deletes the contents of an item, but does not delete the item.
```
Clear-Content
    -LiteralPath <String[]>
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Force]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [-Stream <String>]
    [<CommonParameters>]
```
[Clear-Item](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/clear-item?view=powershell-7.5) Clears the contents of an item, but does not delete the item.
```
Clear-Item
    [-Path] <String[]>
    [-Force]
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Clear-ItemProperty](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/clear-itemproperty?view=powershell-7.5) Clears the value of a property but does not delete the property.
```
Clear-ItemProperty
    [-Path] <String[]>
    [-Name] <String>
    [-PassThru]
    [-Force]
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Clear-RecycleBin](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/clear-recyclebin?view=powershell-7.5) Clears the contents of the current user's recycle bin.
```
Clear-RecycleBin
    [[-DriveLetter] <String[]>]
    [-Force]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Convert-Path](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/convert-path?view=powershell-7.5) Converts a path from a PowerShell path to a PowerShell provider path.
```
Convert-Path
    [-Path] <String[]>
    [<CommonParameters>]
```
[Copy-Item](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/copy-item?view=powershell-7.5) Copies an item from one location to another.
```
Copy-Item
    [-Path] <String[]>
    [[-Destination] <String>]
    [-Container]
    [-Force]
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Recurse]
    [-PassThru]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [-FromSession <PSSession>]
    [-ToSession <PSSession>]
    [<CommonParameters>]
```
[Copy-ItemProperty](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/copy-itemproperty?view=powershell-7.5) Copies a property and value from a specified location to another location.
```
Copy-ItemProperty
    [-Path] <String[]>
    [-Name] <String>
    [-Destination] <String>
    [-PassThru]
    [-Force]
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Debug-Process](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/debug-process?view=powershell-7.5) Debugs one or more processes running on the local computer.
```
Debug-Process
    [-Name] <String[]>
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Get-ChildItem](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-childitem?view=powershell-7.5) Gets the items and child items in one or more specified locations.
```
Get-ChildItem
    [[-Path] <string[]>]
    [[-Filter] <string>]
    [-Include <string[]>]
    [-Exclude <string[]>]
    [-Recurse]
    [-Depth <uint>]
    [-Force]
    [-Name]
    [<CommonParameters>]
```
[Get-Clipboard](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-clipboard?view=powershell-7.5) Gets the contents of the clipboard.
```
Get-Clipboard
    [-Raw]
    [<CommonParameters>]
```
[Get-ComputerInfo](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-computerinfo?view=powershell-7.5) Gets a consolidated object of system and operating system properties.
```
Get-ComputerInfo
    [[-Property] <String[]>]
    [<CommonParameters>]
```
[Get-Content](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-content?view=powershell-7.5) Gets the content of the item at the specified location.
```
Get-Content
    [-Path] <String[]>
    [-ReadCount <Int64>]
    [-TotalCount <Int64>]
    [-Tail <Int32>]
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Force]
    [-Credential <PSCredential>]
    [-Delimiter <String>]
    [-Wait]
    [-Raw]
    [-Encoding <Encoding>]
    [-AsByteStream]
    [-Stream <String>]
    [<CommonParameters>]
```
[Get-HotFix](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-hotfix?view=powershell-7.5) Gets the hotfixes that are installed on local or remote computers.
```
Get-HotFix
    [[-Id] <String[]>]
    [-ComputerName <String[]>]
    [-Credential <PSCredential>]
    [<CommonParameters>]
```
[Get-Item](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-item?view=powershell-7.5) Gets the item at the specified location.
```
Get-Item
    [-Path] <string[]>
    [-Filter <string>]
    [-Include <string[]>]
    [-Exclude <string[]>]
    [-Force]
    [-Credential <pscredential>]
    [-Stream <string[]>]
    [<CommonParameters>]
```
[Get-ItemProperty](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-itemproperty?view=powershell-7.5) Gets the properties of a specified item.
```
Get-ItemProperty
    [-Path] <String[]>
    [[-Name] <String[]>]
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Credential <PSCredential>]
    [<CommonParameters>]
```
[Get-ItemPropertyValue](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-itempropertyvalue?view=powershell-7.5) Gets the value for one or more properties of a specified item.
```
Get-ItemPropertyValue
    [[-Path] <String[]>]
    [-Name] <String[]>
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Credential <PSCredential>]
    [<CommonParameters>]
```
[Get-Location](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-location?view=powershell-7.5) Gets information about the current working location or a location stack.
```
Get-Location
    [-PSProvider <String[]>]
    [-PSDrive <String[]>]
    [<CommonParameters>]
```
[Get-Process](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-process?view=powershell-7.5) Gets the processes that are running on the local computer.
```
Get-Process
    [[-Name] <String[]>]
    [-Module]
    [-FileVersionInfo]
    [<CommonParameters>]
```
[Get-PSDrive](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-psdrive?view=powershell-7.5) Gets drives in the current session.
```
Get-PSDrive
    [[-Name] <String[]>]
    [-Scope <String>]
    [-PSProvider <String[]>]
    [<CommonParameters>]
```
[Get-PSProvider](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-psprovider?view=powershell-7.5) Gets information about the specified PowerShell provider.
```
Get-PSProvider
    [[-PSProvider] <String[]>]
    [<CommonParameters>]
```
[Get-Service](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-service?view=powershell-7.5) Gets the services on the computer.
```
Get-Service
    [[-Name] <String[]>]
    [-DependentServices]
    [-RequiredServices]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [<CommonParameters>]
```
[Get-TimeZone](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-timezone?view=powershell-7.5) Gets the current time zone or a list of available time zones.
```
Get-TimeZone
    [[-Name] <String[]>]
    [<CommonParameters>]
```
[Invoke-Item](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/invoke-item?view=powershell-7.5) Performs the default action on the specified item.
```
Invoke-Item
    [-Path] <String[]>
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Join-Path](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/join-path?view=powershell-7.5) Combines a path and a child path into a single path.
```
Join-Path
    [-Path] <String[]>
    [-ChildPath] <String>
    [[-AdditionalChildPath] <String[]>]
    [-Resolve]
    [-Credential <PSCredential>]
    [<CommonParameters>]
```
[Move-Item](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/move-item?view=powershell-7.5) Moves an item from one location to another.
```
Move-Item
    [-Path] <String[]>
    [[-Destination] <String>]
    [-Force]
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-PassThru]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Move-ItemProperty](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/move-itemproperty?view=powershell-7.5) Moves a property from one location to another.
```
Move-ItemProperty
    [-Path] <String[]>
    [-Name] <String[]>
    [-Destination] <String>
    [-PassThru]
    [-Force]
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[New-Item](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-item?view=powershell-7.5) Creates a new item.
```
New-Item
    [-Path] <String[]>
    [-ItemType <String>]
    [-Value <Object>]
    [-Force]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[New-ItemProperty](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-itemproperty?view=powershell-7.5) Creates a new property for an item and sets its value.
```
New-ItemProperty
    [-Path] <String[]>
    [-Name] <String>
    [-PropertyType <String>]
    [-Value <Object>]
    [-Force]
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[New-PSDrive](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-psdrive?view=powershell-7.5) Creates temporary and persistent drives that are associated with a location in an item data store.
```
New-PSDrive
    [-Name] <String>
    [-PSProvider] <String>
    [-Root] <String>
    [-Description <String>]
    [-Scope <String>]
    [-Persist]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[New-Service](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-service?view=powershell-7.5) Creates a new Windows service.
```
New-Service
    [-Name] <String>
    [-BinaryPathName] <String>
    [-DisplayName <String>]
    [-Description <String>]
    [-SecurityDescriptorSddl <String>]
    [-StartupType <ServiceStartupType>]
    [-Credential <PSCredential>]
    [-DependsOn <String[]>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Pop-Location](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/pop-location?view=powershell-7.5) Changes the current location to the location most recently pushed onto the stack.
```
Pop-Location
    [-PassThru]
    [-StackName <String>]
    [<CommonParameters>]
```
[Push-Location](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/push-location?view=powershell-7.5) Adds the current location to the top of a location stack.
```
Push-Location
    [[-Path] <String>]
    [-PassThru]
    [-StackName <String>]
    [<CommonParameters>]
```
[Remove-Item](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/remove-item?view=powershell-7.5) Deletes the specified items.
```
Remove-Item
    [-Path] <String[]>
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Recurse]
    [-Force]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [-Stream <String[]>]
    [<CommonParameters>]
```
[Remove-ItemProperty](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/remove-itemproperty?view=powershell-7.5) Deletes the property and its value from an item.
```
Remove-ItemProperty
    [-Path] <String[]>
    [-Name] <String[]>
    [-Force]
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Credential <PSCredential>]
    [-InformationAction <ActionPreference>]
    [-InformationVariable <String>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Remove-PSDrive](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/remove-psdrive?view=powershell-7.5) Deletes temporary PowerShell drives and disconnects mapped network drives.
```
Remove-PSDrive
    [-Name] <String[]>
    [-PSProvider <String[]>]
    [-Scope <String>]
    [-Force]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Remove-Service](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/remove-service?view=powershell-7.5) Removes a Windows service.
```
Remove-Service
    [-Name] <String>
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Rename-Computer](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/rename-computer?view=powershell-7.5) Renames a computer.
```
Rename-Computer
    [-ComputerName <String>]
    [-PassThru]
    [-DomainCredential <PSCredential>]
    [-LocalCredential <PSCredential>]
    [-NewName] <String>
    [-Force]
    [-Restart]
    [-WsmanAuthentication <String>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Rename-Item](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/rename-item?view=powershell-7.5) Renames an item in a PowerShell provider namespace.
```
Rename-Item
    [-Path] <String>
    [-NewName] <String>
    [-Force]
    [-PassThru]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Rename-ItemProperty](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/rename-itemproperty?view=powershell-7.5) Renames a property of an item.
```
Rename-ItemProperty
    [-Path] <String>
    [-Name] <String>
    [-NewName] <String>
    [-PassThru]
    [-Force]
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Resolve-Path](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/resolve-path?view=powershell-7.5) Resolves the wildcard characters in a path, and displays the path contents.
```
Resolve-Path
    [-Path] <string[]>
    [-Relative]
    [-RelativeBasePath <string>]
    [-Credential <pscredential>]
    [-Force]
    [<CommonParameters>]
```
[Restart-Computer](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/restart-computer?view=powershell-7.5) Restarts the operating system on local and remote computers.
```
Restart-Computer
    [[-ComputerName] <String[]>]
    [-WsmanAuthentication <String>]
    [-Credential]<PSCredential>]
    [-Force]
    [-Wait]
    [-Timeout <Int32>]
    [-For <WaitForServiceTypes>]
    [-Delay <Int16>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Restart-Service](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/restart-service?view=powershell-7.5) Stops and then starts one or more services.
```
Restart-Service
    [-InputObject] <ServiceController[]>
    [-Force]
    [-PassThru]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Resume-Service](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/resume-service?view=powershell-7.5) Resumes one or more suspended (paused) services.
```
Resume-Service
    [-InputObject] <ServiceController[]>
    [-PassThru]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Set-Clipboard](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-clipboard?view=powershell-7.5) Sets the contents of the clipboard.
```
Set-Clipboard
    [-Value] <string[]>
    [-Append]
    [-PassThru]
    [-AsOSC52]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Set-Content](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-content?view=powershell-7.5) Writes new content or replaces existing content in a file.
```
Set-Content
    [-Path] <string[]>
    [-Value] <Object[]>
    [-PassThru]
    [-Filter <string>]
    [-Include <string[]>]
    [-Exclude <string[]>]
    [-Force]
    [-Credential <pscredential>]
    [-WhatIf]
    [-Confirm]
    [-NoNewline]
    [-Encoding <Encoding>]
    [-AsByteStream]
    [-Stream <string>]
    [<CommonParameters>]
```
[Set-Item](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-item?view=powershell-7.5) Changes the value of an item to the value specified in the command.
```
Set-Item
    [-Path] <String[]>
    [[-Value] <Object>]
    [-Force]
    [-PassThru]
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-Credential <PSCredential>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Set-ItemProperty](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-itemproperty?view=powershell-7.5) Creates or changes the value of a property of an item.
```
Set-ItemProperty
    [-Path] <string[]>
    [-Name] <string>
    [-Value] <Object>
    [-PassThru]
    [-Force]
    [-Filter <string>]
    [-Include <string[]>]
    [-Exclude <string[]>]
    [-Credential <pscredential>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Set-Location](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-location?view=powershell-7.5) Sets the current working location to a specified location.
```
Set-Location
    [[-Path] <String>]
    [-PassThru]
    [<CommonParameters>]
```
[Set-Service](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-service?view=powershell-7.5) Starts, stops, and suspends a service, and changes its properties.
```
Set-Service
    [-Name] <String>
    [-DisplayName <String>]
    [-Credential <PSCredential>]
    [-Description <String>]
    [-StartupType <ServiceStartupType>]
    [-Status <String>]
    [-SecurityDescriptorSddl <String>]
    [-Force]
    [-PassThru]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Set-TimeZone](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-timezone?view=powershell-7.5) Sets the system time zone to a specified time zone.
```
Set-TimeZone
    [-Name] <String>
    [-PassThru]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Split-Path](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/split-path?view=powershell-7.5) Returns the specified part of a path.
```
Split-Path
    [-Path] <String[]>
    [-Parent]
    [-Resolve]
    [-Credential <PSCredential>]
    [<CommonParameters>]
```
[Start-Process](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/start-process?view=powershell-7.5) Starts one or more processes on the local computer.
```
Start-Process
    [-FilePath] <string>
    [[-ArgumentList] <string[]>]
    [-WorkingDirectory <string>]
    [-PassThru]
    [-Verb <string>]
    [-WindowStyle <ProcessWindowStyle>]
    [-Wait]
    [-Environment <hashtable>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Start-Service](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/start-service?view=powershell-7.5) Starts one or more stopped services.
```
Start-Service
    [-InputObject] <ServiceController[]>
    [-PassThru]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Stop-Computer](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-computer?view=powershell-7.5) Stops (shuts down) local and remote computers.
```
Stop-Computer
    [[-ComputerName] <String[]>]
    [[-Credential] <PSCredential>]
    [-WsmanAuthentication <String>]
    [-Force]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Stop-Process](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-process?view=powershell-7.5) Stops one or more running processes.
```
Stop-Process
    [-Id] <Int32[]>
    [-PassThru]
    [-Force]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Stop-Service](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-service?view=powershell-7.5) Stops one or more running services.
```
Stop-Service
    [-InputObject] <ServiceController[]>
    [-Force]
    [-NoWait]
    [-PassThru]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Suspend-Service](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/suspend-service?view=powershell-7.5) Suspends (pauses) one or more running services.
```
Suspend-Service
    [-InputObject] <ServiceController[]>
    [-PassThru]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-WhatIf]
    [-Confirm]
    [<CommonParameters>]
```
[Test-Connection](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/test-connection?view=powershell-7.5) Sends ICMP echo request packets, or pings, to one or more computers.
```
Test-Connection
    [-TargetName] <string[]>
    [-Ping]
    [-IPv4]
    [-IPv6]
    [-ResolveDestination]
    [-Source <string>]
    [-MaxHops <int>]
    [-Count <int>]
    [-Delay <int>]
    [-BufferSize <int>]
    [-DontFragment]
    [-Quiet]
    [-TimeoutSeconds <int>]
    [<CommonParameters>]
```
[Test-Path](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/test-path?view=powershell-7.5) Determines whether all elements of a path exist.
```
Test-Path
    [-Path] <String[]>
    [-Filter <String>]
    [-Include <String[]>]
    [-Exclude <String[]>]
    [-PathType <TestPathType>]
    [-IsValid]
    [-Credential <PSCredential>]
    [-OlderThan <DateTime>]
    [-NewerThan <DateTime>]
    [<CommonParameters>]
```
[Wait-Process](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/wait-process?view=powershell-7.5) Waits for the processes to be stopped before accepting more input.
```
Wait-Process
    [-Name] <String[]>
    [[-Timeout] <Int32>]
    [-Any]
    [-PassThru]
    [<CommonParameters>]
```
