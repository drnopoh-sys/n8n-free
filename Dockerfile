FROM docker.n8n.io/n8nio/n8n:1.123.26

USER root

RUN cd /usr/local/lib/node_modules/n8n && \
    npm install --save \
        n8n-nodes-evolution-api \
        n8n-nodes-puppeteer \
        n8n-nodes-cheerio-scraper \
        n8n-nodes-instagram-private-api \
        n8n-nodes-tiktok \
        n8n-nodes-youtube && \
    chown -R node:node /usr/local/lib/node_modules/n8n/node_modules

USER node
