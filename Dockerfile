FROM node:8
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY package.json /usr/src/app/package.json
COPY index.js /usr/src/app
COPY index.test.js /usr/src/app

RUN npm install
RUN npm test

EXPOSE 3000
CMD ["npm", "start"]