# Use official n8n image
FROM n8nio/n8n:latest

# Copy your workflows into n8n's default directory
COPY workflows /home/node/.n8n/workflows

# Ensure correct ownership for permissions
USER root
RUN chown -R node:node /home/node/.n8n
USER node

# Expose n8n default port
EXPOSE 5678
