Minimal OS Raspberry Pi images with [UxPlay](https://github.com/FDH2/UxPlay) installed for AirPlay 2 Mirroring. It uses `kmssink`.

### TODO
- Hardware decoding
  - Context: The idea is make UxPlay use the v4l2 codecs. In Raspberry Pi this codecs can be used via hardware. The module `bcm2835-codecs` distributed by Raspberry Pi Foundation, contains the hardware acceleration to do so. As of now, the module is present (I can see the file in `lib/modules`) but when I run `gst-inspect-1.0 video4linux2` I dont see the required `v4l2h264dec`. Still investigating.
- Wifi
  - A simple way to configure wifi from `/boot`
  - Example of wifi overlay: https://github.com/romainreignier/minimal_raspberrypi_buildroot
- Fix Github Action
- Startup process to display simple information like the pin (see: https://github.com/hkfuertes/UxPlay-Packer)
- x86_64 live usb?
