FROM node:14.16.1

WORKDIR /usr/src/app/frontend/

COPY frontend/package.json frontend/package-lock.json ./

RUN npm install

COPY backend/package.json backend/package-lock.json /usr/src/app/backend/

WORKDIR /usr/src/app/backend/
RUN npm install

COPY backend/common /usr/src/app/backend/common/

WORKDIR /usr/src/app/frontend/

COPY frontend/ .

EXPOSE 3002

CMD [ "npm", "run", "start" ]
