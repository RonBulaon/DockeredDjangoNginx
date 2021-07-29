FROM python:3.7-alpine
MAINTAINER Ron Bulaon  

ENV PYTHONUNBUFFERED 1
ENV PATH="/scripts:${PATH}"

COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache --virtual .tmp-build-deps gcc libc-dev linux-headers postgresql-dev postgresql-libs
RUN pip install -r /requirements.txt
# RUN apk del .tmp-build-deps

# RUN apk add --update --no-cache --virtual .tmp gcc libc-dev linux-headers
# RUN apk add --update --no-cache postgresql-client
# RUN apk add --update --no-cache --virtual .tmp-build-deps \
#     gcc libc-dev linux-headers postgresql-dev python3-dev musl-dev

# RUN pip install -r /requirements.txt
# RUN apk del .tmp

RUN mkdir /app 
COPY ./Project-Directory /app
WORKDIR /app
COPY ./scripts /scripts

RUN chmod +x /scripts/*

RUN mkdir -p /vol/web/media
RUN mkdir -p /vol/web/static
RUN adduser -D user

RUN chown -R user:user /app
RUN chown -R user:user /vol
RUN chmod -R 755 /vol/web
USER user

CMD ["entrypoint.sh"]