usage:
	@echo "Run make update, make build, and make push"

update:
	docker pull ubuntu:18.04

build:
	cd axon-playground && docker build -t wpilib/axon-playground .

push:
	docker push wpilib/axon-playground

clean:
	docker rmi wpilib/axon-playground
