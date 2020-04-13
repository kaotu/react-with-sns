FROM node:13.12.0-alpine
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn build
CMD node serve -p 3000 --host=0.0.0.0
