FROM mcuadros/ofelia:latest AS ofelia
LABEL maintainer="Pierre Ribault <contact@pierreribault.fr>"

ENV WAIT_VERSION="2.7.3"

# Add Docker-compose-wait
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
RUN chmod +x /wait

# Configuration of Entrypoint
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["sh", "/docker-entrypoint.sh"]
