FROM alpine:latest
WORKDIR /etc/nginx

RUN apk update --no-cache && apk add --no-cache nginx nginx-mod-rtmp

RUN adduser -u 1500 -g 1500 -D -G 'www-data' www-data

EXPOSE 80
EXPOSE 1935
#CMD ["ls", "-ahl", "/etc/nginx/modules-enabled/"]
CMD ["nginx", "-g", "daemon off;"]
