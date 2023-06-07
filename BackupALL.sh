DB_HOSTNAME="127.0.0.1"
DB_USER="root"
DB_PASS="secret"
DB_NAME_SQL="db_crud"
DB_NAME_POSTGRES="root"
BACKUP_DIR="./dbbackup"
file1="$BACKUP_DIR/Mysql"
file2="$BACKUP_DIR/Postgres"
mkdir -p $file1
mkdir -p $file2
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
mysqldump --host=$DB_HOSTNAME --user=$DB_USER --password=$DB_PASS $DB_NAME_SQL > $BACKUP_DIR/Mysql/$DB_NAME-$DATE.sql
PGPASSWORD=$DB_PASS pg_dump --host=$DB_HOSTNAME --port=5432 --dbname=$DB_NAME_POSTGRES > $BACKUP_DIR/Postgres/$DB_NAME-$DATE.sql