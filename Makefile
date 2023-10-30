
default: build

build:
	docker build -f Dockerfile -t sunquana/python3 .

run:
	python main.py