#!/bin/bash
echo "***** Creating and Activating Virtual Environment *****"
virtualenv venv
source venv/bin/activate

echo "\n***** Installing Dependencies *****"
pip install -r requirements.txt

echo "\n***** Verifying Installation *****"
python -c "import django; print(django.get_version())"
