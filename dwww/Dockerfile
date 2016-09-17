FROM ubuntu:16.04

RUN apt-get update && apt-get install -y dwww
RUN a2enconf dwww
RUN a2enmod cgid

RUN perl -pi -e 's/Require local//' /etc/apache2/conf-available/dwww.conf

CMD dwww-build && \
    dwww-build-menu && \
    mandb -c && \
    service apache2 start && \
    sleep inf
