FROM nginx:latest

LABEL VERSION=1.0
LABEL DESCRIPCION="Proxy Reverso"

COPY ./html /var/www/html
COPY ./conf/ngnix.conf /etc/nginx/nginx.conf
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
COPY ./conf/mime.types /etc/nginx/mime.types
COPY ./ssl/dev.jonnattan.com.crt /etc/ssl/dev.jonnattan.com.crt
COPY ./ssl/dev.jonnattan.com.key /etc/ssl/dev.jonnattan.com.key

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]