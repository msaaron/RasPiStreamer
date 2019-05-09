# Raspberry Pi Audio Streamer

### Requirements
- [Raspberry Pi 3 Model B+](https://www.raspberrypi.org/products/raspberry-pi-3-model-b-plus)
- [Stereo Audio Injector soundcard](http://www.audioinjector.net/rpi-hat)
- [DigitalOcean droplet](https://www.digitalocean.com)

### Directions
1. Flash the latest [Raspbian Stretch with desktop and recommended software](https://www.raspberrypi.org/downloads/raspbian/) to your SD card.
2. Boot the Raspberry Pi and go through the initial setup.
3. Shut down the Raspberry Pi and install the sound card.
4. Boot the Raspberry Pi and follow [these instructions](https://github.com/Audio-Injector/stereo-and-zero) to get the sound card working.
5. Now we need to build a version of Darkice that supports MP3. Run the commands in the `darkice-install.sh` file below. Make sure you also grab a copy of the rules provided in the `rules` file. I've also included a Darkice configuration file.
6. Make sure Darkice is running and make it begins on boot.
7. Install Icecast2 on your DigitalOcean droplet using `sudo apt install icecast2`. Alternatively, install it on the Raspberry Pi.
