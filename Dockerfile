FROM node:10

WORKDIR /home/quest

#local-environemnt secret value
ARG buildtime_secret
ENV SECRET_WORD=$buildtime_secret

#best practice node installation
# COPY package.json .
# RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm install && npm start"]