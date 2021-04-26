FROM node:14.16.1-alpine3.13

RUN addgroup -S app && adduser -S -G app app

WORKDIR /app/

RUN chown -R app /app

USER app

COPY package*.json ./

RUN npm install

COPY . ./

EXPOSE 8080

CMD ["node", "index.js"]
