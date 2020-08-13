Get-PSSession | Remove-PSSession
$Office365Credentials  = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $Office365credentials -Authentication Basic –AllowRedirection
Import-PSSession $Session -AllowClobber | Out-Null

$CSVFilename = read-host "Enter File Name "
write-host("")
$OutputFile = $CSVFilename + '.csv'
$OutputPath = 'C:\Users\' + $env:UserName + '\Desktop\' + $Outputfile

Get-Mailbox -ResultSize Unlimited | Select Identity, UserPrincipalName, PrimarySmtpAddress, RecipientTypeDetails | Export-Csv -Path "$Outputpath"
write-host "Successfully Exported to Desktop" -ForegroundColor Green
