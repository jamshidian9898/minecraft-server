FROM adoptopenjdk:16-jre

ARG RAM_AMOUNT

ENV ram=${RAM_AMOUNT}

WORKDIR /server

CMD echo "Docker minecraft server is starting\n" && java -Xmx${ram} -jar paper-1.17.jar