FROM nginx:alpine
WORKDIR /var/share/nginx/html

RUN apk add nginx-mod-rtmp

# TODO: create user

EXPOSE 80
EXPOSE 1935
CMD ["nginx", "-g", "daemon off;"]
