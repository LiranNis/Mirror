
## Debian - Install Python 3.5
# add-apt-repository ppa:fkrull/deadsnakes
# apt-get update
# apt-get install python3.5
# apt-get install python3-pip

## Install most updated version from source
# cd /usr/lib # Wherever you want to place your bandersnatch environment
# virtualenv --python=python3.5 bandersnatch
# cd bandersnatch
# bin/pip install -r https://bitbucket.org/pypa/bandersnatch/raw/stable/requirements.txt
# apt-get install mercurial
# hg clone https://bitbucket.org/pypa/bandersnatch
# cd bandersnatch
# ./bootstrap.sh
# python3.5 setup.py

# Copy config file
cp conf/bandersnatch.conf /etc/bandersnatch.conf

# Start mirroring
bandersnatch mirror
