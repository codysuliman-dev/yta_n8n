FROM n8nio/n8n:latest

# Expose the default n8n port
EXPOSE 5678

# Default environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https

# Start n8n
CMD ["n8n", "start", "--tunnel"]
