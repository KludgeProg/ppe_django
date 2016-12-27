#!/bin/bash
echo "\n***** Installing *****"
echo "/* Installing Python, Pip and VirtualEnv */"
sudo apt-get update
sudo apt-get install python-pip python-dev build-essential
pip install virtualenv virtualenvwrapper
pip install --upgrade pip
echo "/* Installing PostgreSql */"
sudo apt-get install postgresql postgresql-contrib libpq-dev

echo "\n***** Creating and Activating Virtual Environment *****"
virtualenv venv
source venv/bin/activate

echo "\n***** Installing Dependencies *****"
pip install -r requirements.txt