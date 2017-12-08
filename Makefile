pdk = docker run -i --rm -v $(shell pwd):/usr/src/app eyaml-example

.PHONY: validate test

build: Dockerfile
	docker build -t eyaml-example .

validate:
	$(pdk) validate

test:
	$(pdk) test unit
