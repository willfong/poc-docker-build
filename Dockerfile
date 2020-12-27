FROM node:alpine
RUN apk add yarn
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app
COPY --chown=node:node . .
USER node
RUN yarn install
EXPOSE 5000
ENV IP 0.0.0.0
CMD [ "node", "index.js" ]
