sudo sh -c "echo 'deb-src http://mirrordirector.raspbian.org/raspbian/ wheezy main contrib non-free rpi' >> /etc/apt/sources.list"
sudo apt-get update
sudo apt-get --no-install-recommends install build-essential devscripts autotools-dev fakeroot dpkg-dev debhelper autotools-dev dh-make quilt ccache libsamplerate0-dev libpulse-dev libaudio-dev lame libjack-jackd2-dev libasound2-dev libtwolame-dev libfaad-dev libflac-dev libmp4v2-dev libshout3-dev libmp3lame-dev
apt-get source darkice
cd $(ls | grep darkice)
# copy rules file to debian/rules
debchange -v 1.0-999~mp3+1
dpkg-buildpackage -rfakeroot -uc -b
sudo dpkg -i ../darkice_1.0-999~mp3+1_armhf.deb
