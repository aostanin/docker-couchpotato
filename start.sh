#! /bin/sh

git -C /couchpotato pull --depth=1
python2 /couchpotato/CouchPotato.py --console_log --data_dir=/data --config_file=/data/couchpotato.ini
