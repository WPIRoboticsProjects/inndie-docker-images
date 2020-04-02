usage:
	@echo "Run make update, make build, and make push"

update:
	docker pull ubuntu:18.04

build: ci playground

ci:
	cd axon-ci && docker build -t wpilib/axon-ci . && cd ..

playground:
	cd axon-playground && docker build -t wpilib/axon-playground . && cd ..

push:
	docker push wpilib/axon-playground
	docker push wpilib/axon-ci

clean:
	docker rmi wpilib/axon-playground
	docker rmi wpilib/axon-ci
