FROM node:14.16.1 AS build

WORKDIR  /usr/src/app/backend/
ADD . .

RUN npm install
EXPOSE 3001

CMD [ "npm", "run", "start" ]
