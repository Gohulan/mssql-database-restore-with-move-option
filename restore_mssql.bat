@echo off
TITLE CAP Server Database Configuration - Developed By Gohulan
SET sqlpath=C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA
SET User=sa
SET Pwd=[Your Password Here]

echo 1 - Backup Database
echo 2 - Restore Datastore

echo ====================================
echo     DEVELOPED BY GOHULAN - 2023
echo ====================================
echo Please enter your selection:

set /p MenuSelection=



if %MenuSelection% ==1  ( goto menu1)
if %MenuSelection% ==2  ( goto menu2)

goto menu


:menu1
sqlcmd -S localhost\SQLExpress -U sa -P  [Your Password Here] -Q "backup database property_data_2023 to disk= 'C:\Backup\property_data_2023.bak';" -o property_data_2023_log.txt
goto menu

:menu2
sqlcmd -S localhost\SQLExpress -U sa -P  [Your Password Here] -Q "RESTORE DATABASE property_data_2023 FROM DISK = 'C:\Backup\property_data_2023_backup.bak' WITH RECOVERY, MOVE 'property_data_2023' TO 'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\property_data_Data.mdf', MOVE 'property_data_2023_log' TO 'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\property_data_Log.ldf';" -o property_data_2023_restore_log.txt 
goto menu

:end
