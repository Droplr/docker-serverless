FROM lambci/lambda:nodejs8.10
USER root

RUN yum install -y make openssl ca-certificates wget

RUN wget https://github.com/Droplr/aws-env/raw/v0.1/bin/aws-env-linux-amd64 -O /bin/aws-env && \
  chmod +x /bin/aws-env

WORKDIR /src

RUN npm config set registry http://registry.npmjs.org/ && \
    npm config set strict-ssl false

RUN npm install --global yarn

ENTRYPOINT []
CMD exit
