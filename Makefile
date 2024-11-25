install:
	pip install --upgrade pip &&\
		pip install -r requirements-azure.txt

test:
	python -m pytest -vv test_hello.py

format:
	python -m black *.py
 
lint:
	python3 -m pylint --disable=R,C hello.py

all: install lint test
