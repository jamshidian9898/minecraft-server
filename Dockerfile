FROM adoptopenjdk:16-jre

ARG RAM_AMOUNT

ENV ram=${RAM_AMOUNT}

WORKDIR /server

CMD curl https://api.papermc.io/v2/projects/paper/versions/1.17.1/builds/411/downloads/paper-1.17.1-411.jar -o paper.jar 

CMD echo "Docker minecraft server is starting\n" && java -Xmx${ram} -jar paper.jar
