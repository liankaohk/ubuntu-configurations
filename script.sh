sudo apt-get update
sudo apt-get dist-upgrade -y

sudo apt-get purge -y unity-webapps-common aisleriot gnome-sudoku thunderbird-gnome-support thunderbird-locale-en thunderbird thunderbird-locale-en-us xul-ext-unity libunity-webapps0 xul-ext-websites-integration unity-webapps-service webbrowser-app webapp-container gnome-mines landscape-client-ui-install gnome-mahjongg flashplugin-installer
sudo apt-get autoremove -y

mkdir ~/tmp
cd ~/tmp
wget "https://launchpad.net/ubuntu-tweak/0.8.x/0.8.7/+download/ubuntu-tweak_0.8.7-1%7Etrusty2_all.deb" \
"https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" \
"http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb"
wget "http://pinyin.sogou.com/linux/download.php?f=linux&bit=64" -O sogou_64.deb
sudo dpkg -i ~/tmp/*.deb
sudo apt-get -f install -y
sudo apt-get install -y git emacs vim filezilla 


#sudo ./vmware-install.pl -d # -d means accepting defaults

