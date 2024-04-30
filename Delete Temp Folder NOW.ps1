#Define the path to the temp directory that will be cleared.
$tempDir = "C:\Users\Kkool\AppData\Local\Temp"

#Check if it exists.
if (Test-Path $tempDir) {
Remove-Item -Path $tempDir\* -Force -Recurse
Write-Host "All files and folders in $tempDir have been deleted."
}
else {
Write-Host "The directory $tempDir does not exist."
}