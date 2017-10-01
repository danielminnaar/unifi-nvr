FROM ubuntu:16.04
MAINTAINER dwtaylornz@gmail.com

# Install Pre-reqs
RUN apt-get update && apt-get install -y \
  wget \
  apt-utils \ 
  openjdk-8-jre-headless

# Add NVR Start-up
ADD start_nvr.sh /

# Install NVR
ADD install_nvr.sh /
RUN bash /install_nvr.sh

# Volumes
VOLUME /var/lib/unifi-video
VOLUME /var/log/unifi-video

# Ports
EXPOSE 7442 7443 7445 7446 7447 7080 6666

# start NVR
CMD ["sh","/start_nvr.sh"]
