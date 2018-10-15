# Asus VivoBook 15 X510UQR Hackintosh

---

# Version MacOS
- 10.13.6 High Sierra
- 10.14 Mojave

# Specifications

- **MainBoard:** ASUS X510UQR
- **Processor:** i7-8550U (Kaby Lake R) (4 cores, 8 threads, 8MB cache)
- **Graphic:** 
  + UHD 620 (1536MB of dynamic memory (shared from the system))
  + NVIDIA GeForce 940MX , with 2GB GDDR5 VRAM
- **Network:**
  + Wifi: Intel 8265/8275 M2 NGFF (802.11 AC (2x2))
  + Ethernet: No
  + Bluetooth: V4.1
- **Audio:** Conexant Generic (Vendor ID: 0x14f11f72, 0x14f1 0x1f72, Conexant CX8050)
- **Touchpad:** Elan 1300
- **BIOS:** v301/302
- Memory: SK Hynix 8GB DDR4 2400 MHz (up to 16 GB SDRAM) (2 slots)
- Display: 15.6" (16:9) FHD (1920x1080) 60Hz Anti-Glare Panel 45% NTSC with 178˚ wide-viewing angle display
- Storage:
  + Hard Drives: 1TB 5400RPM SATA HDD
  + Solid State Drives: 128GB SATA3 M.2 SSD
- Keyboard: Chiclet keyboard
- Card Reader: SD/SDHC
- WebCam: VGA Web Camera
- Battery: 3 Cells 42 Whrs Battery

# EDID
- Windows: Dump by Extron EDID Manager
- Linux: `xrandr --props`

# DSDT & SSDT & Specification
- Dump by AIDA64 Engineer or Clover (F1 -> F4)

# Known issues 
- Freezes on wake from sleep (Always test sleep without external devices plugged in)
- HDMI without Audio
- Percent Baterry not display

# Special thanks
- [tctien342](https://github.com/tctien342/) [EFI](https://github.com/tctien342/Asus-Vivobook-S510UA-High-Sierra-10.13-Hackintosh)
- [hieplpvip](https://github.com/hieplpvip/) [VoodooI2C](https://github.com/hieplpvip/VoodooI2C)
- [chris1111](https://github.com/chris1111/) [TP-LINK WIFI Network](https://github.com/chris1111/TP-LINK-WIFI-Network-macOS)
- [RehabMan](https://github.com/RehabMan/)
- https://www.tonymacx86.com/
- https://www.insanelymac.com/

# References
- https://www.asus.com/us/Laptops/ASUS-VivoBook-S15-S510UQ/specifications/
- https://www.asus.com/us/Laptops/ASUS-VivoBook-S15-S510UA/specifications/
- https://github.com/tctien342/Asus-Vivobook-S510UA-High-Sierra-10.13-Hackintosh/
- https://www.tonymacx86.com/threads/guide-new-voodooi2c-asus-vivobook-s15-x510uar-10-13.245445/
- https://hackintosher.com/guides/dual-boot-macos-drive-windows-10-already-installed-shared-drive/
- https://hackintosher.com/guides/hackintosh-dual-boot-windows-10-and-macos-high-sierra/
- https://www.insanelymac.com/forum/topic/330677-successguide-glasgoods-high-sierra-coffeelake-asus-strix-z370-g-i7-8700-gtx1080ti-uhd/
- https://github.com/RehabMan/OS-X-Clover-Laptop-Config/
- https://github.com/chris1111/Wireless-USB-Adapter-Clover

# Pre install

- Internal EFI partition > 200MB
- Create/Shrink a partition name HACKINTOSH format FAT32/EXFAT 100GB

# Create usb boot from MacOS/Hackintosh/VM MacOS

```bash
sudo /Applications/Install\ macOS\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/YOUR_USB_NAME --applicationpath /Applications/Install\ macOS\ Sierra.app --nointeraction

sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/USB --nointeraction --downloadassets
```

- Name version macOS:
```bash
/Applications/Install\ macOS\ Sierra.app/
/Applications/Install\ macOS\ High\ Sierra.app/
/Applications/Install\ macOS\ Mojave.app/
```

- Add Clover to USB & Add kext neccessary
- Or Overwrite EFI Folder

# BIOS Settings BEFORE:

# BIOS Settings AFTER:

# Step install
- Choose (External) "Boot OS X Install from Install macOS High Sierra"
- Language: English
- Disk Utility
- View -> Show All Devices
- Select the drive you want to install macOS High Sierra on
- ~~Click on Erase tab and as a name type HACKINTOSH or any other name you want.~~
- ~~As Format choose Mac OS Extended (Journaled)~~
- ~~Scheme choose GUID Partition Map (Maybe not show)~~
- Click Partition
- Format APFS -> Apply
- Click Done and close Disk Utility window
- Select Install macOS and click Continue
- Once your system restarts, press the boot menu key again and boot to macOS High Sierra via USB 
- Then select "Boot macOS from HACKINTOSH" (Maybe twice times or change another usb port)
- All installation take 3 times reboot

# Post Installation
- Copy EFI from USB to EFI of HDD/SSD

```bash
diskutil list
diskutil mount disk0s1
# disk0s1 is EFI partion of internal HDD/SSD

# OR

sudo mkdir /Volumes/efi
sudo mount -t msdos /dev/disk0s1 /Volumes/efi
```

# Wifi Solution
- Use USB Wifi TP-Link Archer T2U v2 (AC600, MT7650)
- https://github.com/chris1111/TP-LINK-WIFI-Network-macOS

# Sleep Solution
- Energy Saver -> Never sleep

# App neccessary
- Clover EFI bootloader https://sourceforge.net/projects/cloverefiboot/
- Clover Configurator (config.plist) https://mackie100projects.altervista.org/download-clover-configurator/
- MaciASL (Edit .dsl & save to .aml file) https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/
- iasl (`sudo cp iasl /usr/bin/` `iasl -dl DSDT.aml SSDT*.aml`) https://bitbucket.org/RehabMan/acpica/downloads/
- HWSensors https://sourceforge.net/projects/hwsensors/
- DPCIManager https://sourceforge.net/projects/dpcimanager/
- IORegistryExplorer https://www.tonymacx86.com/threads/guide-how-to-make-a-copy-of-ioreg.58368/
- patchmatic https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/
- debug tool https://www.tonymacx86.com/threads/tool-generate-proper-problem-reporting-files.235953/

# Verify feature after install:
- [x] **Graphics UHD 620** (https://www.quora.com/How-many-GB-does-Intel-HD-Graphics-620-have)
- [x] Graphics GT 940MX (NO support now)
- [x] **Sound**
- [x] **WiFi** (Replace with USB Wifi or Card wifi)
- [x] Bluetooth (Replace with USB Wifi or Card wifi)
- [x] Apple Store
- [ ] iCloud
- [x] External USB headphone
- [x] USB 2.0
- [x] USB 3.0
- [x] Adjust brightness
- [x] Fn feature
- [x] Led light keyboard
- [x] Sleep power (Can not wake up, can use power button to wake up but trackpad will not work)
- [x] Show percent battery (Not show)
- [x] Trackpad (Left/Right click not good)
- [x] Full 4 cores
- [ ] Temporature (HWMonitor)
- ~~[ ] Ethernet (This laptop not support)~~
- [ ] Hardware Acceleration
- [ ] Personal Hotspot
- [ ] Power Management and P-States  
- [ ] iMessage
- [ ] Airdrop
- [ ] AirPlay
- [ ] iBooks
- [ ] HandOff

# Compare USB wifi vs card wifi

The user-interface is poor and they tend to cause instability, especially with sleep.

# Add Grub to Clover

```xml
<dict>
    <key>Disabled</key>
    <false/>
    <key>Ignore</key>
    <false/>
    <key>Path</key>
    <string>\EFI\manjaro\grubx64.efi</string>
    <key>Title</key>
    <string>Manjaro</string>
    <key>Type</key>
    <string>Linux</string>
    <key>VolumeType</key>
    <string>Internal</string>
</dict>
```

# Reverse Trackpad and Mouse Scroll Direction

- System Preferences > Mouse (or System Preferences > Trackpad > Scroll & Zoom, depending on your input device).
- Scroll direction: natural => Uncheck
