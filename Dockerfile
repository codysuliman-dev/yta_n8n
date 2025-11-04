# Use the official n8n image
FROM n8nio/n8n:latest

# Expose n8n default port
EXPOSE 5678

# Environment variables (update auth if needed)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_PORT=5678

# Optional: copy your custom workflows into the container
COPY ./workflows /home/node/.n8n/workflows

# Start n8n using the tunnel for Render
CMD ["n8n", "start", "--tunnel"]
