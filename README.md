Minimal OS Raspberry Pi images with [UxPlay](https://github.com/FDH2/UxPlay) installed for AirPlay 2 Mirroring.

### Wifi Configuration
To connect to wifi, create a file `<ssid>.psk` in the boot partition of the sdcard (the one in `fat`) with this content. This `.psk` files will be moved over to the right folder on boot.
```conf
[Security]
Passphrase=<psk>
```
> **Note**: The SSID of the network is used as a filename only when it contains only alphanumeric characters or one of - _. If it contains any other characters, the name will instead be an =-character followed by the hex-encoded version of the SSID. (https://wiki.archlinux.org/title/Iwd and https://man.archlinux.org/man/iwd.config.5)

### Build
To build inspect the `docker-compose.yml` file:
```bash
git clone --recurse-submodules https://github.com/hkfuertes/UxPlay-Buildroot
cd UxPlay-Buildroot
docker-compose run rpi3
```

### TODO
- Audio
- Other boards: ~RPI02W~, ~RPI0W~, Orange Pi 02W?, x86_64 Live USB?
- Startup process to display simple information like the pin (see: https://github.com/hkfuertes/UxPlay-Packer)
- http://underpop.online.fr/b/buildroot/en/_live_cd.htm.gz
