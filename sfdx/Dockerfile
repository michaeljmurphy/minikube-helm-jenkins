FROM debian:stable-slim
WORKDIR /home/project
RUN apt-get update \
    && apt-get upgrade -y
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh \
    && chmod +x ./nodesource_setup.sh \
    && bash nodesource_setup.sh
RUN apt-get install -y wget npm nodejs
RUN npm install sfdx-cli --global
CMD /bin/bash

