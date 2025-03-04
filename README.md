# AWS RDS Aurora Setup

## Overview
This project sets up an AWS RDS Aurora database for a banking system.

## Steps
1. Run `database_setup.sql` to create the database and tables.
2. Run `initial_data_population.sql` to insert sample data.
3. Use `backup_script.sh` and `restore_script.sh` for backup and restore.
4. Use Terraform (`terraform.tf`) to provision the Aurora instance.

## Notes
- Replace `<aurora-endpoint>` with the actual endpoint of your Aurora instance.
- Ensure proper security measures (e.g., IAM policies, encryption) are in place.
