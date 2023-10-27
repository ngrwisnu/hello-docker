FROM node:18.18.0-alpine

ENV PORT=3000

RUN apk --no-cache add curl
WORKDIR /app

COPY . /app
RUN npm install

EXPOSE ${PORT}

HEALTHCHECK --interval=5s --start-period=5s CMD curl -f http://localhost:3000/health-check

ENTRYPOINT [ "npm", "run" ]

CMD ["start"]