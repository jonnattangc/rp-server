FROM nginx:1.31.9

ENV TZ=UTC-4

LABEL VERSION=1.1
LABEL DESCRIPCION="Proxy Reverso"

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]