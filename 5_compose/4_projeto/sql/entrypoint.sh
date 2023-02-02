# https://dotnetthoughts.net/initialize-mssql-in-docker-container/
# https://github.com/twright-msft/mssql-node-docker-demo-app/blob/master/entrypoint.sh

# start the script to create the DB and import the data, start SQL Server
./schema.sh & /opt/mssql/bin/sqlservr