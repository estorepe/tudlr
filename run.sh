git clone "$glb" work
cd work
#mv /usr/bin/mpx /usr/bin/yt-dlp
pip3 install yt-dlp requests
sudo apt-get install -y postgresql postgresql-client
7z x gclone_1.51.0-mod1.3.1_Linux_x86_64.gz
chmod a+x ./gclone
file_name="gclone"

if [ -f "/usr/bin/$file_name" ]; then
    echo "File already exists in /usr/bin."
else
    if [ -f "$file_name" ]; then
        echo "Moving file to /usr/bin..."
        sudo mv "$file_name" /usr/bin/
        echo "File moved successfully."
    else
        echo "File does not exist in the current directory."
    fi
fi
bash tubi--db-dl.sh
