
#Dropbox client - do not install as root
#see https://www.dropbox.com/install?os=lnx
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
