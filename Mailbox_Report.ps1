Get-PSSession | Remove-PSSession
$Office365Credentials  = Get-Credential
$Session = New-PSSession -ConfigurationName "Microsoft.Exchange" -ConnectionUri "https://outlook.office365.com/powershell-liveid/" -Credential $Office365credentials -Authentication "Basic"
Import-PSSession $Session | Out-Null

$CSVFilename = Read-Host "Enter File Name "
Write-Host ""
$OutputFile = $CSVFilename + ".csv"
$OutputPath = "C:\Users\" + $env:UserName + "\Desktop\" + $Outputfile

Get-Mailbox -ResultSize Unlimited | Select Identity, UserPrincipalName, PrimarySmtpAddress, RecipientTypeDetails | Export-Csv -Path "$Outputpath"
Write-Host "Successfully Exported to Desktop"
