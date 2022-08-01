setup:
	python3 -m venv docker-flask-locust
	. docker-flask-locust/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C app.py

all: setup install lint