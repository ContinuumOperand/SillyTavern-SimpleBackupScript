# Define backup path and filename with current date and time
$backupPath = Join-Path $PSScriptRoot "user-backups"  # Updated folder name
$backupFileName = "backup_$(Get-Date -Format 'yyyyMMdd_HHmm')"
$backupFilePath7z = Join-Path $backupPath "$backupFileName.7z"
$backupFilePathZip = Join-Path $backupPath "$backupFileName.zip"

# Create backup directory if it doesn't exist
if (-not (Test-Path $backupPath -PathType Container)) {
    New-Item -ItemType Directory -Path $backupPath
}

# Files and directories to include in the backup
$filesToBackup = @(
    "public\assets\*",
    "public\Backgrounds\*",
    "public\Characters\*",
    "public\Chats\*",
    "public\context\*",
    "public\Group chats\*",
    "public\Groups\*",
    "public\instruct\*",
    "public\KoboldAI Settings\*",
    "public\movingUI\*",
    "public\NovelAI Settings\*",
    "public\OpenAI Settings\*",
    "public\QuickReplies\*",
    "public\TextGen Settings\*",
    "public\themes\*",
    "public\User Avatars\*",
    "public\user\*",
    "public\worlds\*",
    "public\settings.json",
    "secrets.json",
    "config.yaml"
)

# Check if 7-Zip is available
$zip7Path = Get-Command 7z.exe -ErrorAction SilentlyContinue

if ($zip7Path) {
    # Use 7-Zip to compress files into a 7-Zip archive
    & $zip7Path.FullName a -t7z $backupFilePath7z $filesToBackup
}
else {
    # Use Compress-Archive to create a ZIP archive
    Compress-Archive -Path $filesToBackup -DestinationPath $backupFilePathZip
}
