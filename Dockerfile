FROM lambci/lambda:nodejs8.10
USER root

RUN curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo
RUN yum install -y make openssl ca-certificates wget yarn

RUN wget https://github.com/Droplr/aws-env/raw/v0.1/bin/aws-env-linux-amd64 -O /bin/aws-env && \
  chmod +x /bin/aws-env

WORKDIR /src

RUN npm config set registry http://registry.npmjs.org/ && \
    npm config set strict-ssl false && \
    npm i -g npm@^6.9.0 serverless@^1.30.0

ENTRYPOINT []
CMD exit
