FROM jetbrains/teamcity-agent:latest

RUN apt-get update
RUN apt-get install -y docker-ce
RUN apt-get install -y docker-compose
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash - && apt-get -y install nodejs