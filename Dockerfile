FROM python:alpine
LABEL org.opencontainers.image.title="Kubernetes Readiness"
LABEL org.opencontainers.image.description="Kubernetes and liveness check test app"
LABEL org.opencontainers.image.source="https://github.com/khachatur-s/kubernetes-readiness"
LABEL org.opencontainers.image.authors="Khachatur Shahinyan <khachatur.s@pm.me>"

WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000 
CMD ["python","app.py"]