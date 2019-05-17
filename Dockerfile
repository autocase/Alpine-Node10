FROM python:3.6-alpine3.8

# Install Build tools, PostgreSQL, Node.js, Git and Chrome
RUN apk update; apk --no-cache add gcc g++ make libffi-dev linux-headers postgresql  \
                               postgresql-dev nodejs=8.11.4-r0 npm=8.11.4-r0 git chromium

WORKDIR /usr/src/app

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/
