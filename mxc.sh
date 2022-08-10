#!/bin/bash

if [ "$USER" = "root" ]; then

	apt update
	apt -y install ffmpeg libavcodec57 libavfilter6 libavformat57 mysql-server libmysqlclient20 xz-utils gzip unzip
	wget -O /etc/security/limits.conf http://infosat.org/mpegtv/files/limits.conf
	wget -O /etc/sysctl.conf http://infosat.org/mpegtv/files/sysctl.conf
	wget -O /usr/local/bin/mxc http://infosat.org/mxc/files/mxc
	chmod 755 /usr/local/bin/mxc
	wget -O /usr/local/bin/slave http://infosat.org/mpegtv/files/slave
	chmod 755 /usr/local/bin/slave

else

	sudo apt update
	sudo apt -y install ffmpeg libavcodec57 libavfilter6 libavformat57 mysql-server libmysqlclient20 xz-utils gzip unzip
	sudo wget -O /etc/security/limits.conf http://infosat.org/mpegtv/files/limits.conf
	sudo wget -O /etc/sysctl.conf http://infosat.org/mpegtv/files/sysctl.conf
	sudo chown -hR $USER:$USER /usr/local/bin
	wget -O /usr/local/bin/mxc http://infosat.org/mxc/files/mxc
	chmod 755 /usr/local/bin/mxc
	wget -O /usr/local/bin/slave http://infosat.org/mpegtv/files/slave
	chmod 755 /usr/local/bin/slave

fi
