FROM ubuntu
LABEL maintainer="Rutger"

COPY init /usr/local/bin/init

RUN apt-get clean && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  openssh-server \
  nano

RUN chmod +x /usr/local/bin/init

EXPOSE 22
CMD ["init"]
