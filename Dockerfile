FROM node:15.10.0-alpine3.10

ARG NODE_ENV=
ARG APP_PORT=
ARG DATABASE=
ARG DATABASE_USERNAME=
ARG DATABASE_PASSWORD=
ARG DATABASE_HOST=
ARG API_PATH=
ARG DASHBOARD_UI_PATH=
ARG EMAIL_HOST=smtp.gmail.com
ARG EMAIL_PORT=465
ARG EMAIL_SECURE=true
ARG EMAIL_USER=
ARG EMAIL_PASSWORD=

# environment variables
ENV NODE_ENV=$NODE_ENV
ENV APP_PORT=$APP_PORT
ENV DATABASE=$DATABASE
ENV DATABASE_USERNAME=$DATABASE_USERNAME
ENV DATABASE_PASSWORD=$DATABASE_PASSWORD
ENV DATABASE_HOST=$DATABASE_HOST
ENV API_PATH=$API_PATH
ENV DASHBOARD_UI_PATH=$DASHBOARD_UI_PATH
ENV EMAIL_HOST=$EMAIL_HOST
ENV EMAIL_PORT=$EMAIL_PORT
ENV EMAIL_SECURE=$EMAIL_SECURE
ENV EMAIL_USER=$EMAIL_USER
ENV EMAIL_PASSWORD=$EMAIL_PASSWORD

# create project directory 
WORKDIR /usr/src/mentor-api

# bundle app source
COPY . .

# install dependencies
RUN npm install

EXPOSE $app_port
CMD ["npm", "run", "start:migrate"]
