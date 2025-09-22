# syntax=docker/dockerfile:1

# ---- Build the static site ----
FROM node:18-alpine AS build
WORKDIR /work

# Copy the whole repo so we can reach frontend/ regardless of layout
COPY . .

# Run npm inside the frontend folder
WORKDIR /work/frontend
# Use npm ci if lockfile exists, otherwise npm install
RUN if [ -f package-lock.json ]; then npm ci; else npm install; fi

# Build (change if your script name differs)
RUN npm run build

# ---- Serve with Nginx ----
FROM nginx:alpine
# If your build output is "build" (CRA), change 'dist' to 'build' below
COPY --from=build /work/frontend/build /usr/share/nginx/html
COPY frontend/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]