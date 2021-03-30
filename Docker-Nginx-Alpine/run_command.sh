docker build -t my_nginx:0.01 .

# Run the container
# publish port 80 to the host
# name the container my_nginx_container
# what image is it from
# run command when the container is started
sudo docker run -it --publish 80 --name my_nginx_container my_nginx /bin/sh
