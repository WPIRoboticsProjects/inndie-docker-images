usage:
	@echo "Run make update, make build, and make push"

update:
	docker pull ubuntu:18.04

build:
	cd axon-playground && docker build -t wpilib/axon-playground . && cd ..
	cd axon-hosted && docker build -t wpilib/axon-hosted . && cd ..
	cd axon-ci && docker build -t wpilib/axon-ci . && cd ..

push:
	docker push wpilib/axon-playground
	docker push wpilib/axon-hosted
	docker push wpilib/axon-ci

clean:
	docker rmi wpilib/axon-playground
	docker rmi wpilib/axon-hosted
	docker rmi wpilib/axon-ci
