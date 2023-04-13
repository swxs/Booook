FROM nginx:1.24.0-alpine
EXPOSE 80
COPY ./_book /usr/share/nginx/html
