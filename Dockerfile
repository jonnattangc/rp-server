FROM nginx:1.31.9

ENV TZ=UTC-4

LABEL VERSION=1.1
LABEL DESCRIPCION="Proxy Reverso"

COPY ./html /var/www/html
COPY ./conf/ngnix.conf /etc/nginx/nginx.conf
COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
COPY ./conf/mime.types /etc/nginx/mime.types

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]