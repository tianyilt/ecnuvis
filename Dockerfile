FROM node:20-alpine

WORKDIR /app

COPY package.json package.json
RUN yarn install
COPY . .
RUN yarn cache clean
RUN yarn build
EXPOSE 5800
CMD ["yarn", "start"]