FROM node:13.12.0-alpine
WORKDIR /app
COPY . .
CMD yarn start
