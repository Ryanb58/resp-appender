This application can be used to help visualize some HTTP traffic between distributed systems.


#### Docker Hub URL:

Note: Committing to the `master` branch rebuilds the container & pushed to docker hub.

https://hub.docker.com/r/ryanb58/resp-appender

#### Environmental Variables:

PORT = 80

SERVICE_NAME = test-1-v1

UPSTREAM_URI = http://time.jsontest.com/


#### Build

```
make build
```

#### To run local image after it has been built:

```
make run
```

#### Download and run image from docker hub:

```
make run-local
```


Adopted into python from:

https://www.youtube.com/watch?v=gauOI0O9fRM
