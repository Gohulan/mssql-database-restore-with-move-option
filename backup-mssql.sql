sqlcmd -S localhost\SQLExpress -U sa -P [Repalce Your Password Here] -Q "backup database propertydata to disk= 'C:\Backup\property_data_2023_backup.bak';" -o property_data_2023_backup_log.txt
