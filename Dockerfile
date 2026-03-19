FROM docker.n8n.io/n8nio/n8n:1.123.26

USER root

RUN mkdir -p /home/node/.n8n/nodes && \
    cd /home/node/.n8n/nodes && \
    npm init -y && \
    npm install --save \
        n8n-nodes-evolution-api \
        n8n-nodes-puppeteer \
        n8n-nodes-cheerio-scraper \
        n8n-nodes-instagram-private-api \
        n8n-nodes-tiktok \
        n8n-nodes-youtube && \
    chown -R node:node /home/node/.n8n

USER node
