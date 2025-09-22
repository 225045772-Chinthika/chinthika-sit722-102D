# syntax=docker/dockerfile:1
# ---- Build the static site ----
FROM node:18-alpine AS build
WORKDIR /app

# Copy only manifests first (better layer caching)
COPY frontend/package*.json ./
RUN npm install    # if you have package-lock.json and want strict installs, switch to: npm ci

# Copy the rest of the frontend source
COPY frontend/ ./
# If your build script name differs, change here
RUN npm run build

# ---- Serve with Nginx ----
FROM nginx:alpine
# Vite/most modern setups output into "dist"; for CRA use /app/build instead.
COPY --from=build /app/dist /usr/share/nginx/html
COPY frontend/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]