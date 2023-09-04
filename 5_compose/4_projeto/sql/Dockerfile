FROM mcr.microsoft.com/mssql/server:2022-latest

# https://dotnetthoughts.net/initialize-mssql-in-docker-container/
# https://github.com/twright-msft/mssql-node-docker-demo-app/blob/master/Dockerfile
# Switch to root user for access to chmod
USER root

COPY entrypoint.sh .
COPY schema.sh .
COPY schema.sql .

# Grant permissions for the import-data script to be executable
RUN chmod +x entrypoint.sh
RUN chmod +x schema.sh

# Switch back to mssql user and run the entrypoint script
USER mssql
CMD ["/bin/bash", "./entrypoint.sh"]