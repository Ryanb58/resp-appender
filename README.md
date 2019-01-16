This application can be used to help visualize some HTTP traffic between distributed systems.

#### Docker Hub URL:

https://hub.docker.com/r/ryanb58/resp-appender

#### Environmental Variables:

PORT = 80

SERVICE_NAME = test-1-v1

UPSTREAM_URI = http://time.jsontest.com/


#### To build and push to docker:

```
make build
make tag
make push
```

#### To run locally after it has been built:

```
make run
```


Adopted into python from:

https://www.youtube.com/watch?v=gauOI0O9fRM
