# Install and upgrade bandersnatch
sudo pip install bandersnatch --upgrade

# Copy config file
cp conf/bandersnatch.conf /etc/bandersnatch.conf

# Start mirroring
bandersnatch mirror
