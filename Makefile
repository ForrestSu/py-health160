
default: build

build:
	docker build -f Dockerfile -t sunquana/python3:v0.0.1 .

run:
	python main.py