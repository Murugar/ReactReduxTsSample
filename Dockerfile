FROM node:latest

WORKDIR /app
COPY . .

RUN yarn install --pure-lockfile --non-interactive
RUN yarn global add serve
RUN yarn build

EXPOSE 3000

CMD serve -s build -p 3000
