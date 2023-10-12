ARG IMAGE_TAG="12-slim"
ARG IMAGE_NAME="debian"

FROM $IMAGE_NAME:$IMAGE_TAG as base

COPY ["./install.sh", "/var/tmp/install.sh"]
COPY ["./start.sh", "/var/tmp/start.sh"]

RUN chmod +x /var/tmp/*.sh
RUN /var/tmp/install.sh

VOLUME [ "/var/www/html" ]

CMD /var/tmp/start.sh