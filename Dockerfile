FROM node:20.5.1-bullseye-slim
ENV NODE_ENV=production

WORKDIR ./

COPY ["package.json", "./"]

RUN npm install

COPY . .

CMD [ "node", "index.js" ]
