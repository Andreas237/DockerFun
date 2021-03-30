# This dockerfile generates an NGINX server
# running a generic page with a counter.





FROM alpine:latest

MAINTAINER andreas237 <silenta237@gmail.com>





# Update the contianer
RUN apk update
RUN apk add openrc --no-cache
RUN apk add nginx





# Copy files necessary for the service
WORKDIR .
RUN mkdir /www
COPY index.html /www/index.html
COPY nginx.conf /etc/nginx/nginx.conf





# Expose HTTP port
EXPOSE 80/tcp
EXPOSE 80/udp





# When container started
CMD ["adduser", "www"]                  # create the user specified in nginx.conf
CMD ["service", "nginx", "status"]      # start nginx
CMD ["netstat", "-tulpn", "|", "grep", ":80"]



#ENTRYPOINT ["nginx"]




# References
# An NginX page on Alpine - https://wiki.alpinelinux.org/wiki/Nginx
#
