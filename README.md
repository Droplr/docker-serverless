# Droplr's Serverless Deployment Docker Image

[![MIT licensed](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/Droplr/docker-serverless/master/LICENSE)

Docker image that can be used for Serverless Node.js deployment.
You must have Serverless in your dev-dependencies - ```$ npm i --save-dev serverless```

**Example usage:**

```
FROM droplr/serverless:latest

COPY package.json .
RUN npm install
COPY . .

CMD serverless deploy
```
