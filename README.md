# Raspberry Pi Audio Streamer

### Requirements
- [Raspberry Pi 3 Model B+](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus)
- [Stereo Audio Injector soundcard](http://www.audioinjector.net/rpi-hat)
- [DigitalOcean droplet](https://www.digitalocean.com)

### Directions
1. Flash the latest [Raspbian Stretch with desktop and recommended software](https://www.raspberrypi.org/downloads/raspbian/) to your SD card.
2. Boot the Raspberry Pi and go through the initial setup.
3. Shut down the Raspberry Pi and install the sound card.
4. Boot the Raspberry Pi and download [this file](https://github.com/msaaron/RasPiStreamer/blob/master/audio.injector.scripts_0.1-1_all.deb?raw=true)
5. Install the package downloaded from above.
6. Open Terminal and run `audioInjector-setup.sh`
7. Reboot the Raspberry Pi
6. Now we need to build a version of Darkice that supports MP3. Run the commands in the `darkice-build.sh` file. Make sure you also grab a copy of the rules provided in the `rules` file. I've also included a Darkice configuration file.
7. Run the command `sudo systemctl disable darkice && sudo systemctl stop darkice`
8. Run the command `sudo wget https://github.com/msaaron/RasPiStreamer/blob/master/darkice.service?raw=true -P /etc/systemd/system && sudo service darkice enable && sudo service darkice start`
9. Make sure Darkice is running and make it begins on boot.
8. Install Icecast2 on your DigitalOcean droplet using `sudo apt install icecast2`. Alternatively, install it on the Raspberry Pi.
