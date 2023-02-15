FROM node:18.14.0-alpine3.17
WORKDIR /app
COPY . .
EXPOSE 3000

RUN npm install
RUN addgroup app && adduser -S -G app app
USER app