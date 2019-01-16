build:
	docker build --tag=resp-appender .

run:
	docker run -p 2222:80 resp-appender

tag:
	docker tag resp-appender:latest ryanb58/resp-appender:latest

push:
	docker push ryanb58/resp-appender:latest