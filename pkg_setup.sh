
yum -y update

# LaTeX and text editing
yum install -y vim kile texlive texlive-collection-langgerman
yum install -y  wget git svn meld
# basics for scientific work
yum install -y gcc-cpp  numpy python-matplotlib PyQt4 python-scipy ipython

# media and images
yum install -y gimp inkscape

#mp3 and rpmfusion
su -c 'yum -y localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm'
yum install -y vlc
yum install -y gstreamer-plugins-bad gstreamer-plugins-ugly

mv -i .bashrc $HOME
mv -i .vim $HOME
mv -i .vimrc $HOME


#Dropbox client - do not install as root
#see https://www.dropbox.com/install?os=lnx
#cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
#~/.dropbox-dist/dropboxd



