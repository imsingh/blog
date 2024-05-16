FROM node:20

RUN apt update && apt install -y git git-lfs sudo

RUN wget -O vale.tar.gz https://github.com/errata-ai/vale/releases/download/v2.28.0/vale_2.28.0_Linux_64-bit.tar.gz \
 && tar -xvzf vale.tar.gz -C /bin/ vale

RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod
USER gitpod