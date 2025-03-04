#!/bin/bash

# Database credentials
DB_HOST="<aurora-endpoint>"
DB_USER="bankadmin"
DB_PASS="SecurePassword123!"
DB_NAME="BankingSystem"

# Backup directory and file name
BACKUP_DIR="/path/to/backups"
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).sql"

# Perform the backup
mysqldump -h $DB_HOST -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_FILE

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "Backup completed successfully. File: $BACKUP_FILE"
else
    echo "Backup failed."
fi
