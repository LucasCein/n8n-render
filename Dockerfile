FROM n8nio/n8n:latest

# Variables de entorno necesarias para Render
ENV N8N_PORT=10000
ENV N8N_HOST=0.0.0.0
ENV GENERIC_TIMEZONE=America/Argentina/Buenos_Aires

# Exponer puerto que Render espera
EXPOSE 10000
