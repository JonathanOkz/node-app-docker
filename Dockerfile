FROM node:latest

RUN apt-get update && apt-get install -y git
ARG GIT_REPO_URL
RUN git clone $GIT_REPO_URL /usr/src/app

WORKDIR /usr/src/app

COPY .env.app .env

RUN npm install
RUN npm run build

ARG APP_TARGET
CMD ["node", "--env-file=.env", "${APP_TARGET}"]
