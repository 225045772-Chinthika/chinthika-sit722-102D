# Serve static frontend files with Nginx
FROM nginx:alpine
WORKDIR /usr/share/nginx/html

COPY frontend/index.html .
COPY frontend/main.js .
COPY frontend/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]