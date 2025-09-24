# # syntax=docker/dockerfile:1
# FROM python:3.11-slim

# ENV PYTHONDONTWRITEBYTECODE=1 \
#     PYTHONUNBUFFERED=1 \
#     PIP_NO_CACHE_DIR=1 \
#     HOST=0.0.0.0 \
#     PORT=8000

# WORKDIR /app

# # System deps
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     build-essential curl ca-certificates \
#  && rm -rf /var/lib/apt/lists/*

# # Python deps
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# # App code
# COPY app ./app

# # Optional: document the typical port (doesn't control runtime)
# EXPOSE 8000

# # IMPORTANT: shell form so $PORT from the Deployment is honored
# CMD sh -lc 'exec uvicorn app.main:app --host "$HOST" --port "${PORT:-8000}"'


FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000
CMD ["uvicorn","app.main:app","--host","0.0.0.0","--port","8000"]