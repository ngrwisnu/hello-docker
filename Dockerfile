FROM node:18.18.0-alpine

ENV PORT=3000

WORKDIR /app

COPY . /app
RUN npm install

EXPOSE ${PORT}

CMD npm run dev