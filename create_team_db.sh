#!/bin/bash
sudo -u postgres psql -c "CREATE ROLE team LOGIN PASSWORD 'teamcity';"
sudo -u postgres createdb team -O team --encoding='utf-8' --locale=en_US.utf8 --template=template0
echo 'local all team peer' | sudo -u postgres tee -a $(sudo -u postgres psql -t -P format=unaligned -c 'show hba_file') > /dev/null
sudo service postgresql reload
