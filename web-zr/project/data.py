import re

def convert_sqlite_to_mariadb(sqlite_sql):
    # Replace double quotes with backticks for identifiers
    mariadb_sql = re.sub(r'"([^"]+)"', r'`\1`', sqlite_sql)
    
    # Replace AUTOINCREMENT with AUTO_INCREMENT
    mariadb_sql = mariadb_sql.replace('AUTOINCREMENT', 'AUTO_INCREMENT')
    
    # Replace data types
    mariadb_sql = mariadb_sql.replace('integer', 'INT')
    mariadb_sql = mariadb_sql.replace('text', 'VARCHAR(255)')
    
    # Remove DEFERRABLE INITIALLY DEFERRED
    mariadb_sql = re.sub(r'DEFERRABLE INITIALLY DEFERRED', '', mariadb_sql, flags=re.IGNORECASE)
    
    # Remove BEGIN TRANSACTION and COMMIT statements
    mariadb_sql = re.sub(r'BEGIN TRANSACTION;?', '', mariadb_sql, flags=re.IGNORECASE)
    mariadb_sql = re.sub(r'COMMIT;?', '', mariadb_sql, flags=re.IGNORECASE)
    
    return mariadb_sql

# Read the original SQLite SQL file
with open('data.sqlite3.sql', 'r', encoding='utf-8') as file:
    sqlite_sql = file.read()

# Convert to MariaDB SQL
mariadb_sql = convert_sqlite_to_mariadb(sqlite_sql)

# Save the converted SQL to a new file
with open('converted_yourdatabase.sql', 'w', encoding='utf-8') as file:
    file.write(mariadb_sql)

print("Conversion complete! The converted SQL has been saved to 'converted_yourdatabase.sql'.")
