#!/bin/bash

python3 -V

echo '#### Install requirements ####'
pip install -r ./requirements.txt
pip install pytest-cov

echo '#### Run tests ####'
pytest --cov=main utests --junitxml=./xmlReport/output.xml
coverage xml -o coverage.xml
