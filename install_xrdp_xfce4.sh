echo "select 'lightdm' later"
read
sudo apt install xfce4 xfce4-goodies
sudo apt install xrdp
sudo cp -i /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak
sudo sed -i 's/3389/3390/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/max_bpp=32/#max_bpp=32\nmax_bpp=128/g' /etc/xrdp/xrdp.ini
sudo sed -i 's/xserverbpp=24/#xserverbpp=24\nxserverbpp=128/g' /etc/xrdp/xrdp.ini
echo xfce4-session > ~/.xsession
sudo cp -i /etc/xrdp/startwm.sh /etc/xrdp/startwm.sh.bak
sudo echo "#xfce" >> /etc/xrdp/startwm.sh
sudo echo "#startxfce4" >> /etc/xrdp/startwm.sh
#enable dbus
sudo systemctl enable dbus
sudo /etc/init.d/dbus start
sudo /etc/init.d/xrdp start
