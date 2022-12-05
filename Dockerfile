FROM adoptopenjdk:17-jre

ARG RAM_AMOUNT

ENV ram=${RAM_AMOUNT}

WORKDIR /server

CMD curl https://api.papermc.io/v2/projects/paper/versions/1.19.2/builds/304/downloads/paper-1.19.2-304.jar -o paper.jar 

CMD echo "Docker minecraft server is starting\n" && java -Xmx${ram} -jar paper.jar
