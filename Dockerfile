FROM n8nio/n8n:latest

USER root

WORKDIR /home/node/packages/cli

# Install n8n-nodes-chutes
RUN npm install n8n-nodes-chutes

ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]