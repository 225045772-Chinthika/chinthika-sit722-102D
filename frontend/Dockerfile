# syntax=docker/dockerfile:1
FROM node:18-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
# If Vite/React/Next differs, keep the equivalent build cmd:
RUN npm run build

# ---- Serve static build with Nginx ----
FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
# Optional: custom Nginx config (cache headers, spa fallback)
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]