FROM httpd:alpine
RUN apk add --update curl unzip && \
    rm -rf /var/cache/apk/*
#RUN curl -o snap.zip "http://snap.berkeley.edu/snapsource/snap.zip"
RUN curl -o snap.zip "https://github.com/jmoenig/Snap/archive/v5.4.5.zip"
RUN rm -rf /usr/local/apache2/htdocs/index.html
RUN unzip snap.zip -d /usr/local/apache2/htdocs/
