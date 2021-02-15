<#
.DESCRIPTION
   This function converts a base64 encoded string into clear-text.  Use "Get-Help -Examples" for usage.
.EXAMPLE
   ConvertFrom-Base64 -string "UG93ZXJTaGVsbCBydWxlcyE="
.EXAMPLE
   ConvertFrom-Base64 -string UG93ZXJTaGVsbCBydWxlcyE=
.EXAMPLE
   ConvertFrom-Base64 "UG93ZXJTaGVsbCBydWxlcyE="
.EXAMPLE
   ConvertFrom-Base64 UG93ZXJTaGVsbCBydWxlcyE=
.EXAMPLE
   "UG93ZXJTaGVsbCBydWxlcyE=" | ConvertFrom-Base64
.EXAMPLE
   $variable | ConvertFrom-Base64
#>
function ConvertFrom-Base64
{
    [CmdletBinding()]
    Param
    (
        [Parameter(ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [string[]]$string
    )
    begin{}
    process
    {
        foreach ($str in $string) {
            Write-Verbose "About to convert $str"
            $bytes  = [System.Convert]::FromBase64String($str);
            return [System.Text.Encoding]::UTF8.GetString($bytes);
        }
    }
    end{}
}

<#
.DESCRIPTION
   This function converts clear-text into a base64 encoded string.  Use "Get-Help -Examples" for usage.
.EXAMPLE
   ConvertTo-Base64 -string "PowerShell rules!"
.EXAMPLE
   ConvertTo-Base64 "PowerShell rules!"
.EXAMPLE
   "PowerShell rules!" | ConvertTo-Base64
.EXAMPLE
   $var | ConvertTo-Base64
#>
function ConvertTo-Base64
{
    [CmdletBinding()]
    Param
    (
        [Parameter(ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [string[]]$string
    )
    begin{}
    process
    {
        foreach ($str in $string) {
            Write-Verbose "About to apply encoding to $str"
            $bytes  = [System.Text.Encoding]::UTF8.GetBytes($str);
            return [System.Convert]::ToBase64String($bytes);
        }
    }
    end{}
}