usage:
	@echo "Run make update, make build, and make push"

update:
	docker pull ubuntu:18.04

build: ci playground

ci:
	cd inndie-ci && cp -f ../requirements.txt requirements.txt && docker build -t wpilib/inndie-ci . && cd ..

playground:
	cd inndie-playground && cp -f ../requirements.txt requirements.txt && docker build -t inndie-playground . && cd ..

push:
	docker push wpilib/inndie-ci

clean:
	docker rmi inndie-playground
	docker rmi wpilib/inndie-ci
