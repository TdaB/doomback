param (
    [Parameter(Mandatory = $True)]
    [string]$path
)

$Timestamp = Get-Date -Format o | foreach {$_ -replace ":", "."}
$SourcePath = "$env:USERPROFILE\Saved Games\id Software\DOOM\base\savegame.user\"
$DestPath = Join-Path $path $Timestamp
Write-Output "Backing up to $DestPath"
Copy-Item $SourcePath $DestPath -recurse