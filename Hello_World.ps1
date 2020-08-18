Write-Host "Hello World" -ForegroundColor Green
Start-Sleep 5
$Variable = Read-Host "Enter Something"
Write-Host "You Typed $Variable" -ForegroundColor Cyan
Start-Sleep 5
$PathVariable = "C:\Evologic\"
Write-Host "You File Path is $PathVariable" -ForegroundColor Cyan
Write-Host "Choose something"
Write-Host "1 - Yes | 2 - No"
Write-Host ""
$Choice = Read-Host "Enter Choice"
if ($Choice = 1) {
    Write-Host "You choose Yes"
} elseif ($Choice = 2) {
    Write-Host "You choose No"
}
Write-Host "Goodbye World" -ForegroundColor Red
Start-Sleep 10
