Minimal OS Raspberry Pi images with [UxPlay](https://github.com/FDH2/UxPlay) installed for AirPlay 2 Mirroring. It uses `kmssink`.

### Build
To build inspect the `docker-compose.yml` file:
```bash
git clone --recurse-submodules https://github.com/hkfuertes/UxPlay-Buildroot
cd UxPlay-Buildroot
docker-compose run rpi3
```

### TODO
- ~Hardware decoding~
  - ~Context: The idea is make UxPlay use the v4l2 codecs. In Raspberry Pi this codecs can be used via hardware. The module `bcm2835-codecs` distributed by Raspberry Pi Foundation, contains the hardware acceleration to do so. As of now, the module is present (I can see the file in `lib/modules`) but when I run `gst-inspect-1.0 video4linux2` I dont see the required `v4l2h264dec`. Still investigating.~
  - In case I break something... working commit: 9bf356ca546711bedff98b4fc77f1dad19c2cc31
- Audio
- ~House keeping:~
  - ~`package/uxplay` folder~
  - ~`Config.in` dependencies:~
    - ~Avahi (full), gstreamer (base, good, bad, av) but we need to see if all the plugins are necessary, libplist, libressl (libssl), pulseaudio.~
  - ~`config.txt`: `dtoverlay=vc4-kms-v3d`~
- Clean *_defconfig files
- Wifi
  - A simple way to configure wifi from `/boot`
  - Example of wifi overlay: https://github.com/romainreignier/minimal_raspberrypi_buildroot | https://www.stefanocottafavi.com/buildroot_rpi_wifi/
- Other boards: RPI02W, RPI0W?, Orange Pi 02W?, x86_64 Live USB?
- ~Fix Github Action~
- Startup process to display simple information like the pin (see: https://github.com/hkfuertes/UxPlay-Packer)
- http://underpop.online.fr/b/buildroot/en/_live_cd.htm.gz
