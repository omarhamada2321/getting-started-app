FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production && yarn cache clean 
ENTRYPOINT ["node"]
CMD ["src/index.js"]
EXPOSE 3000
FROM node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000
