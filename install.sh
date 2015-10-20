echo "Herzlich Willkommen, jetzt wird aus deiner Raspberry eine Game Maschine."
echo "Zeit für einen Kaffe, der Prozess kann etwa eine Stunde oder länger dauern!"
sleep 5
echo "3"
sleep 2
echo "2"
sleep 2
echo "1"
sleep 2
echo "Los gehts..."

sudo apt-get update
wget http://www.cmake.org/files/v3.4/cmake-3.4.0-rc1.tar.gz
tar zxf cmake-3.4.0-rc1.tar.gz
cd cmake-3.4.0-rc1/
sudo ./bootstrap
sudo make
sudo make install
cd ..

sudo apt-get -y install libopus-dev libexpat1-dev libssl-dev libasound2-dev libudev-dev libavahi-client-dev libcurl4-openssl-dev libjs-jquery
wget https://github.com/Bahlramir/Raspberry-Game-Stream/raw/master/Dependencies/libevdev-dev_1.4.3%2Bdfsg-1_armhf.deb
wget https://github.com/Bahlramir/Raspberry-Game-Stream/raw/master/Dependencies/libevdev-tools_1.4.3%2Bdfsg-1_armhf.deb
wget https://github.com/Bahlramir/Raspberry-Game-Stream/raw/master/Dependencies/libevdev2_1.4.3%2Bdfsg-1_armhf.deb
sudo dpkg -i libevdev*
cd

git clone https://github.com/Bahlramir/Raspberry-Game-Stream
cd game_stream
sudo rm -r Dependencies
cd Moonlight
tar xf moonlight-embedded-2.1.1.tar.xz -C /home/pi/game_stream/
cd ..
sudo rm -r Moonlight
cd moonlight-embedded-2.1.1/
mkdir build
cd build/
sudo cmake ../
sudo make
sudo make install
cd ~
sudo rm cmake-3.4.0-rc1.tar.gz libevdev2_1.4.3+dfsg-1_armhf.deb libevdev-dev_1.4.3+dfsg-1_armhf.deb libevdev-tools_1.4.3+dfsg-1_armhf.deb
cd game_stream

echo "Glückwunsch du hast es überlebt. Happy Gaming!!!"
echo "Weiter Infos unter https://github.com/Bahlramir/Raspberry-Game-Stream/Readme.txt"
