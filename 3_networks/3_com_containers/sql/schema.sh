# https://dotnetthoughts.net/initialize-mssql-in-docker-container/
# https://github.com/twright-msft/mssql-node-docker-demo-app/blob/master/import-data.sh
# run the setup script to create the DB and the schema in the DB
# do this in a loop because the timing for when the SQL instance is ready is indeterminate
for i in {1..50};
do
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P "<YourStrong@Passw0rd>" -d master -i schema.sql
    if [ $? -eq 0 ]
    then
        echo "schema.sql completed"
        break
    else
        echo "not ready yet..."
        sleep 1
    fi
done