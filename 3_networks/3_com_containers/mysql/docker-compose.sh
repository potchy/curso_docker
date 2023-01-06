cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

docker rm --force 3_com_containers.mysql

docker build --tag 3_com_containers.mysql .

docker run \
	--name 3_com_containers.mysql \
	--env MYSQL_ALLOW_EMPTY_PASSWORD=True \
	--detach \
	--publish 5001:3306 \
	--network 3_com_containers \
	3_com_containers.mysql

docker logs --follow 3_com_containers.mysql