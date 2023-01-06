cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

docker rm --force 3_com_containers.flask_mysql

docker build --tag 3_com_containers.flask_mysql .

docker run \
    --name 3_com_containers.flask_mysql \
    --detach \
    --publish 5000:5000 \
    --network 3_com_containers \
    --volume /mnt/e/git/curso_docker/3_networks/3_com_containers/flask_mysql:/app:ro \
    3_com_containers.flask_mysql

docker logs --follow 3_com_containers.flask_mysql