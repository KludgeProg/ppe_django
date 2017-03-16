#!/bin/bash
echo -e "*************************************************************"
echo -e "************ Installing required system modules *************"
echo -e "*************************************************************"
sudo apt-get -y update
sudo apt-get -y upgrade

echo -e "************     Installing Python3 and pip     *************"
sudo apt-get -y install python3-pip python3-dev build-essential
pip3 install --upgrade pip

echo -e "********** Installing and Configuring Postgresql ************"
sudo apt-get -y install postgresql postgresql-contrib libpq-dev python3-psycopg2
echo -e "User: " $USER ""
sudo -u postgres createdb ppe_dev
sudo -u postgres psql -c "CREATE USER ppe WITH PASSWORD 'ch4rl13_b17_my_f1ng3r'"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE ppe_dev TO ppe"
sudo -u postgres psql -c "ALTER DATABASE ppe_dev OWNER TO ppe"

echo -e "************     Installing Dependencies     *************"
cd /vagrant
sudo -H pip3 install -r requirements/local.txt
