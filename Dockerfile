FROM nginx:alpine

LABEL version="1.1"
LABEL description="Una pagina de juegos"
LABEL maintainer="holi@gmail.com"

WORKDIR /usr/share/nginx/html
COPY html/ ./
COPY css/ ./css/
COPY js/ ./js/

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]