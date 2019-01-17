FROM python:alpine3.7

ENV PORT 80
ENV SERVICE_NAME test-1-v1
ENV UPSTREAM_URI http://time.jsontest.com/

ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt

EXPOSE ${PORT}
CMD python app.py