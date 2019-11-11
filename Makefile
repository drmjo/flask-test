img:=flask-test:latest

build:
	docker build -t $(img) .

cli:
	docker run -it \
		-v $(shell pwd):/data \
		-w /data \
		-p 5000:5000 \
		$(img) bash

run:
	python -m flask run --host=0.0.0.0