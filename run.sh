git clone "$glb" work
cd work
mv /usr/bin/mpx /usr/bin/yt-dlp
apt-get install -y postgresql postgresql-client
# bash tubi--db-dl.sh
