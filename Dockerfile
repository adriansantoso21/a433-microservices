FROM node:14-alpine
WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .

RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh

ENV AMQP_URL="amqp://guest:guest@rabbitmq-service:5672"
EXPOSE 3001
CMD ["node", "index.js"]