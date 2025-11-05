FROM n8nio/n8n:latest

# Variables de entorno necesarias
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=10000
ENV GENERIC_TIMEZONE=America/Argentina/Buenos_Aires
ENV N8N_ENCRYPTION_KEY=changeme

# Exponer puerto que Render espera
EXPOSE 10000

# Crear directorio de datos
RUN mkdir -p /home/node/.n8n

# Usuario node
USER node

# Comando de inicio
CMD ["n8n"]
