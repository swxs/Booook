FROM swxs/nginx
WORKDIR /data
COPY ./dist .
COPY ./nginx.tmpl .
