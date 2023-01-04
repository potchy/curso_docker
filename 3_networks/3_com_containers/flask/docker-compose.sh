docker rm --force 3_com_containers.flask

docker build --tag 3_com_containers.flask .

docker run \
    --name 3_com_containers.flask \
    --detach \
    --publish 5000:5000 \
    --network 3_com_containers \
    3_com_containers.flask

docker logs --follow 3_com_containers.flask