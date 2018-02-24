FROM jetbrains/teamcity-agent:latest

RUN apt-get install -y docker-ce

RUN curl -L https://github.com/docker/compose/releases/download/1.19.0/run.sh -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash - && apt-get -y install nodejs