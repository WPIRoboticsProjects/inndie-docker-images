usage:
	@echo "Run make update, make build, and make push"

update:
	docker pull ubuntu:18.04

build:
	cd axon-playground && docker build -t wpilib/axon-playground . && cd ..
	cd axon-hosted && docker build -t wpilib/axon-hosted . && cd ..

push:
	docker push wpilib/axon-playground
	docker push wpilib/axon-hosted

clean:
	docker rmi wpilib/axon-playground
	docker rmi wpilib/axon-hosted
