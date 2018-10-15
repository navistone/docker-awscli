FROM docker:stable
RUN apk -v --update add python py-pip && \
 pip install awscli &&\
 apk -v --purge del py-pip &&\
 rm /var/cache/apk/*
