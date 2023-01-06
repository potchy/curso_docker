cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

docker rm --force 3_com_containers.sql

docker build --tag 3_com_containers.sql .
   
docker run \
	--name 3_com_containers.sql \
	--env "ACCEPT_EULA=Y" \
	--env "MSSQL_SA_PASSWORD=<YourStrong@Passw0rd>" \
	--detach \
	--publish 5001:1433 \
	--network 3_com_containers \
	3_com_containers.sql

docker logs --follow 3_com_containers.sql