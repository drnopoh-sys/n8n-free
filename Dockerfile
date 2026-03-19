FROM docker.n8n.io/n8nio/n8n:1.123.26

USER root

RUN mkdir -p /home/node/.n8n/nodes && \
    cd /home/node/.n8n/nodes && \
    npm init -y && \
    npm install --save \
        n8n-nodes-evolution-api \
        n8n-nodes-puppeteer \
        n8n-nodes-instagram-private-api \
        n8n-nodes-tiktok \
        n8n-nodes-youtube \
        n8n-nodes-waha \
        n8n-nodes-serpapi \
        n8n-nodes-firecrawl \
        n8n-nodes-browserless \
        n8n-nodes-meta-integration-advanced \
        n8n-nodes-postfast \
        n8n-nodes-publer && \
    chown -R node:node /home/node/.n8n

USER node
