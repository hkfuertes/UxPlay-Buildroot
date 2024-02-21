Minimal OS Raspberry Pi images with [UxPlay](https://github.com/FDH2/UxPlay) installed for AirPlay 2 Mirroring. It uses `kmssink`.

### Build
To build inspect the `docker-compose.yml` file:
```bash
git clone --recurse-submodules https://github.com/hkfuertes/UxPlay-Buildroot
cd UxPlay-Buildroot
docker-compose run rpi3
```

### TODO
- Audio
- Wifi
  - A simple way to configure wifi from `/boot`
  - Example of wifi overlay: https://github.com/romainreignier/minimal_raspberrypi_buildroot | https://www.stefanocottafavi.com/buildroot_rpi_wifi/
- Other boards: ~RPI02W~, ~RPI0W~, Orange Pi 02W?, x86_64 Live USB?
- Startup process to display simple information like the pin (see: https://github.com/hkfuertes/UxPlay-Packer)
- http://underpop.online.fr/b/buildroot/en/_live_cd.htm.gz
