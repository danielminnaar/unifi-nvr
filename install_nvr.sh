# download and install latest ubuntu package
# wget -q -O unifi-video.deb https://dl.ubnt.com/firmwares/ufv/v3.8.2/unifi-video.Ubuntu16.04_amd64.v3.8.2.deb
# wget -q -O unifi-video.deb https://dl.ubnt.com/firmwares/ufv/v3.8.3/unifi-video.Ubuntu16.04_amd64.v3.8.3.deb
wget -q -O unifi-video.deb https://dl.ubnt.com/firmwares/ufv/v3.8.5/unifi-video.Ubuntu16.04_amd64.v3.8.5.deb
dpkg -i unifi-video.deb
apt-get -f install -y

# set start_nvr.sh executable 
chmod +x /start_nvr.sh

#clean up
rm unifi-video.deb
