docker build -t my_nginx:0.01 .

# Run the container
# publish port 80 to the host
# name the container my_nginx_container
# what image is it from
# run command when the container is started
sudo docker run -it --publish 80 --name my_nginx_container my_nginx /bin/sh




# Run docker compose YAML
docker-compose up -d

# Find IPs of all containers
for s in `docker-compose ps -q`; do echo ip of `docker inspect -f "{{.Name}}" $s` is `docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $s`; done
