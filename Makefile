img:=flask-test:latest

build:
	docker build -t $(img) .

cli:
	docker run -it \
		-v $(shell pwd):/data \
		-w /data \
		$(img) bash