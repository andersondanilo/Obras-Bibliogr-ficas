FROM node:lts

RUN apt-get update -y

RUN npm install -g @vue/cli

RUN mkdir /code

WORKDIR /code

USER node

CMD ["npm", "run", "serve"]
