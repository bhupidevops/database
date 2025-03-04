#!/bin/bash

# Database credentials
DB_HOST="<aurora-endpoint>"
DB_USER="bankadmin"
DB_PASS="SecurePassword123!"
DB_NAME="BankingSystem"

# Backup file to restore
BACKUP_FILE="/path/to/backups/backup_20231001_123456.sql"

# Restore the database
mysql -h $DB_HOST -u $DB_USER -p$DB_PASS $DB_NAME < $BACKUP_FILE

# Check if restore was successful
if [ $? -eq 0 ]; then
    echo "Restore completed successfully."
else
    echo "Restore failed."
fi
