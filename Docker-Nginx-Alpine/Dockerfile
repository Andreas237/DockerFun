# This dockerfile generates an NGINX server
# running a generic page with a counter.

FROM alpine:latest


# Update the contianer
RUN apk update
RUN apk add nginx

# Copy files necessary for the service
CMD ["cp", "./index.html", "/www/index.html"]
CMD ["cp", "./nginx.conf", "/etc/nginx/nginx.conf"]



# Run the service
RUN rc-service nginx start


ENTRYPOINT ["nginx"]




# References
# An NginX page on Alpine - https://wiki.alpinelinux.org/wiki/Nginx
#
