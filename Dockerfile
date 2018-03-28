FROM jetbrains/teamcity-agent:latest

RUN apt-get update

RUN apt-get install -y docker-ce
RUN curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

RUN apt-get install -y\
    binutils-gold \
    curl \
    g++ \
    gcc \
    gnupg \
    make \
    python\
    bzip2

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash - && apt-get -y install nodejs