FROM node:8.11.1-alpine
WORKDIR /usr/app
COPY . .
ENV HOST 0.0.0.0
ENV GRPC_PORT 10382
ENV HTTP_PORT 8080
RUN npm install --production
EXPOSE 10382 8080
CMD ["node", "server.js"]
