FROM node:20-alpine
RUN apk add --no-cache curl

WORKDIR /

COPY package*.json ./
RUN npm install --omit=dev

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
