FROM node:10

WORKDIR /home/quest

#local-environemnt secret value
ARG buildtime_secret
ENV SECRET_WORD=$buildtime_secret

COPY package.json .
RUN npm install -g

COPY . .

EXPOSE 3000

ENTRYPOINT [ "/home/quest/entrypoint.sh" ]