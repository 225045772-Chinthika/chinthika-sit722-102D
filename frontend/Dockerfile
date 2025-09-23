# # Serve static frontend files with Nginx
# FROM nginx:alpine
# WORKDIR /usr/share/nginx/html

# COPY frontend/index.html .
# COPY frontend/main.js .
# COPY frontend/nginx.conf /etc/nginx/conf.d/default.conf

# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]

FROM nginx:alpine

# Copy site files from the build context (frontend/)
COPY index.html /usr/share/nginx/html/index.html
COPY main.js   /usr/share/nginx/html/main.js

# Nginx config for single page/static site
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]