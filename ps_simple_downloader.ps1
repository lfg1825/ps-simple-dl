echo "PowerShell Simple Downloader V1.0"
# The download link will be stored into $Link variable.
$Link = Read-Host -Prompt 'Type the download link here'
# The location will be stored into $Location variable. Put the desired name to the file, otherwise it will get "Permission denied' error."
$Location = Read-Host -Prompt 'Type the directory and name you want to save your file (do not forget to insert the name of the file at the end)'

Invoke-WebRequest -Uri $Link -OutFile $Location
echo "Done. Check your new file in" $Location