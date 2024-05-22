FROM node:latest

RUN apt-get update && apt-get install -y git
ARG GIT_REPO_URL
RUN git clone $GIT_REPO_URL /usr/src/app

WORKDIR /usr/src/app

COPY .env .env

RUN npm install
RUN npm run build

CMD ["npm", "start"]

