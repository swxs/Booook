FROM swxs/nginx
WORKDIR /data
COPY ./_book .
COPY ./nginx.tmpl .
