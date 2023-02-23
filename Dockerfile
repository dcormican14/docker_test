FROM node:18.14.0-alpine3.17

# change the working directory
WORKDIR /app

# installing npm
COPY . .
RUN npm install

# creating a new user
RUN addgroup app && adduser -S -G app app
USER app

# creating environment
ENV API_URL=http://api.myapp.com/
EXPOSE 3000

# Exec form, runs the command on startup as default
ENTRYPOINT ["npm", "start"]