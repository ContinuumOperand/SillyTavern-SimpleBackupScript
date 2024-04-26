@echo off
setlocal

:: Set the PowerShell script variables
set "backupPath=%~dp0user-backups"
for /f "delims=" %%a in ('wmic OS Get localdatetime ^| find "."') do set "dt=%%a"
set "backupFileName=backup_%dt:~0,4%%dt:~4,2%%dt:~6,2%_%dt:~8,2%%dt:~10,2%"
set "backupFilePath7z=%backupPath%\%backupFileName%.7z"
set "backupFilePathZip=%backupPath%\%backupFileName%.zip"

:: Create backup directory if it doesn't exist
if not exist "%backupPath%" (
    mkdir "%backupPath%"
)

:: Define files to backup
set "filesToBackup="data\*" "public\whitelist.txt" "config.yaml" "Backup.bat" "Start-Silent.bat""


:: Check if 7z.exe is available
where 7z.exe >nul 2>nul
if %errorlevel% equ 0 (
    :: Use 7-Zip to create 7z archive
    7z a -t7z "%backupFilePath7z%" %filesToBackup%
) else (
    :: Use Compress-Archive to create zip archive
    Compress-Archive -Path %filesToBackup% -DestinationPath "%backupFilePathZip%"
)

endlocal
