FROM netflixoss/java:8
MAINTAINER Antonio Navarro

RUN apt-get update && apt-get install apt-transport-https curl python -y

RUN echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823 && \
    apt-get update && \
    apt-get install sbt -y

RUN curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash - && \
    apt-get install -y nodejs

RUN node -v

RUN sbt -version
