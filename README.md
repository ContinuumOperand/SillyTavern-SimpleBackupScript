# SillyTavern-SimpleBackupScript
Simple and effective batch script to back up your SillyTavern data and settings effortlessly. Just download, drop it into your SillyTavern folder, run the script, and the backup will be created.

# SillyTavern Backup Guide

## Overview

`Backup.bat` is a simple and effective batch script designed exclusively for Windows. As a Batch file, it takes advantage of Windows functionalities to keep your SillyTavern data safe. It efficiently packs your crucial files into a compressed format using either 7-Zip (optional) or built-in compression.

## Requirements

1. **Windows Only:** This script is designed exclusively for Windows operating systems. Due to its nature as a Batch file, it will not work on other operating systems.

2. **Get 7-Zip (Optional):** 7-Zip is an optional requirement for additional compression options. Download it [here](https://www.7-zip.org/download.html). If 7-Zip is not installed, the backup script seamlessly switches to using the built-in compression for creating a ZIP file with the same functionality.

3. **Location Matters:** Place the `Backup.bat` file in your SillyTavern folder.

## How to Use

1. **Download and Place:**
   - Get `Backup.bat`, a straightforward batch script for securing your SillyTavern data.
   - [Download it directly here](https://github.com/ContinuumOperand/SillyTavern-SimpleBackupScript/raw/main/Backup.bat). You can right click the link and 'Save As...' to get the `Backup.bat` downloaded, or clone the repository.
   - Drop it into the SillyTavern folder.

2. **Run the Batch File:**
   - Double-click `Backup.bat`.
   - Alternatively, open a command prompt, navigate to SillyTavern with `cd`, type `Backup.bat`, and hit Enter.
   - When it's completed it will look like this if you have your terminal open:
```
7-Zip 23.01 (x64) : Copyright (c) 1999-2023 Igor Pavlov : 2023-06-20

Scanning the drive:
79 folders, 622 files, 285080677 bytes (272 MiB)

Creating archive: C:\sillytavern\SillyTavern\user-backups\backup_20240204_0416.7z

Add new data to archive: 79 folders, 622 files, 285080677 bytes (272 MiB)


Files read from disk: 617
Archive size: 270268216 bytes (258 MiB)
Everything is Ok
```

3. **Locate Your Backup:**
   - Look in SillyTavern for a new folder called `user-backups`.
   - Inside, find a file named like `backup_YYYYMMDD_HHMM.7z` or `backup_YYYYMMDD_HHMM.zip`.

4. **Check and Customize:**
   - The batch file is super easy to read and simple to modify for your needs.
   - Run it from inside the SillyTavern folder. It'll create `user-backups` if not already there.

Secure your SillyTavern world effortlessly! 🛡️
