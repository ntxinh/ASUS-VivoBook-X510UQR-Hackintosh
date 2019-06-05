# PRE INSTALLATION

- Internal EFI partition > 200MB
- Create/Shrink a partition name HACKINTOSH format FAT32/EXFAT 100GB

# BIOS SETTINGS

## BIOS Settings BEFORE:

_F2 to enter BIOS - Switch to Advanced Mode F7_

- Advanced \ Internal Pointing Device : Enabled
- Advanced \ Wake On Lid Open : Enabled
- Advanced \ Intel Virtualization Technology : Enabled
- Advanced \ Intel AES-NI : Enabled
- Advanced \ VT-d : Enabled
- Advanced \ SMART Settings \ SMART Self Test : On
- Advanced \ Network Stack Configuration \ Network Stack : Disabled
- Advanced \ USB Configuration \ Legacy USB Support : Enabled
- Advanced \ USB Configuration \ USB Mass Storage Driver Support : Enabled
- Advanced \ Graphics Configuration \ DVMT Pre-Allocated : 64M
- Advanced \ SATA Configuration \ SATA Mode Selection : AHCI
- Boot \ CSM Support : Enabled
- Boot \ Launch PXE OpROM policy : Enabled
- Security \ I/O Interface Security \ Wireless Network Interface : UnLock
- Security \ I/O Interface Security \ HD Audio Interface : UnLock
- Security \ Secure Boot \ Secure Boot Control : Enabled

## BIOS Settings AFTER:

- __Exit \ Load Optimized Defaults : Yes__
- Advanced \ Internal Pointing Device : Enabled
- Advanced \ Wake On Lid Open : Enabled
- __Advanced \ Intel Virtualization Technology : Disabled__
- __Advanced \ Intel AES-NI : Disabled__
- __Advanced \ VT-d : Disabled__
- Advanced \ SMART Settings \ SMART Self Test : On
- __Advanced \ Network Stack Configuration \ Network Stack : Disabled__
- __Advanced \ USB Configuration \ Legacy USB Support : Auto__
- Advanced \ USB Configuration \ USB Mass Storage Driver Support : Enabled
- __Advanced \ Graphics Configuration \ DVMT Pre-Allocated : 64M__
- Advanced \ SATA Configuration \ SATA Mode Selection : AHCI
- __Boot \ Fast Boot : Disabled__
- __Boot \ CSM Support : Disabled__
- Boot \ Launch PXE OpROM policy : Enabled
- Security \ I/O Interface Security \ Wireless Network Interface : UnLock
- Security \ I/O Interface Security \ HD Audio Interface : UnLock
- Security \ I/O Interface Security \ USB Interface Security \ USB Interface : UnLock
- Security \ I/O Interface Security \ USB Interface Security \ External Ports : UnLock
- Security \ I/O Interface Security \ USB Interface Security \ BlueTooth : UnLock
- Security \ I/O Interface Security \ USB Interface Security \ CMOS Camere : UnLock
- Security \ I/O Interface Security \ USB Interface Security \ Card Reader : UnLock
- __Security \ Secure Boot \ Secure Boot Control : Disabled__

# MAKE USB INSTALLER FOR MACOS

_Create from MacOS/Hackintosh/VM MacOS_

## Prepare USB Flash Storage Pen

- Download macOS from the Apple App Store
- Insert USB Storage
- Launchpad / Other → Disk Utility
- Choose your Flash Storage Pen from left panel
- Click Erase
- Settings:
- Name: USB
- Format: Mac OS Extended (Journaled)
- Scheme: GUID Partition Map
- Click Erase

## Create  macOS Installer

- Launchpad / Other → Teminal
- Copy and Paste into Terminal:

```bash
sudo /Applications/Install\ macOS\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/YOUR_USB_NAME --applicationpath /Applications/Install\ macOS\ Sierra.app --nointeraction

sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/USB --nointeraction --downloadassets

# Name version macOS:
# /Applications/Install\ macOS\ Sierra.app/
# /Applications/Install\ macOS\ High\ Sierra.app/
# /Applications/Install\ macOS\ Mojave.app/
```

- Add Clover to USB & kext neccessary (FakeSMC.kext, USBInjectAll.kext, ...)
  + Attach macOS USB installer to PC
  + Download recent version of Clover
  + Open Installer
  + Continue & Continue
  + Change Install Location
  + Customize
  + Select 
  + Install

- Or Overwrite EFI_AFTER Folder

```bash
diskutil list
sudo diskutil mount disk0s1

# OR

sudo mkdir /Volumes/efi
sudo mount -t msdos /dev/disk0s1 /Volumes/efi
```

  + Copy EFI Folder to USB EFI / ESP Partition

# INSTALL macOS

- Insert  the macOS USB Installer into computer USB port.
- Start PC and immediately press keyboard ESC.
- From Boot Menu, choose your USB thumb drive.
- Clover boot menu 
- Choose - Boot OS X install from Install macOS ..
- Plug Mouse and move it up down left right and Next
- Choose Language : English
- Select Disk Utility
- From Disk Utility Menu --> View / Show All Devices
- ~~Erase, disk. Give Name / Format: Mac OS Extended ( Journaled) / Scheme: GUID Partition Map~~
- Select HACKINTOSH partition created in pre-installation
- Click Partition, Format: APFS and apply
- Click Done and close Disk Utility window
- From macOS Utilities screen select Install macOS
- Continue
- Agree
- Select Drive Macintosh or whatever you named it (HACKINTOSH).
- macOS is now installing
- Once your system restarts, press the boot menu key (ESC) again and boot to macOS via USB 
- Then select "Boot macOS from HACKINTOSH" (Maybe twice times or change another usb port)
- All installation take 3 times reboot

# POST INSTALLATION

- Copy POST EFI folder to your EFI / ESP Partition on your drive
- Copy DSDT_SSDT_AFTER/BIOS_V302/DSDT.aml & SSDT-8.aml to /EFI/CLOVER/ACPI/patched/ (Disable discrete graphics to save battery & fix sleep)

## Trackpad - Tap to click

- System Preferences > Trackpad > Point & Click > Tap to click => Checked

## Reverse Trackpad and Mouse Scroll Direction

- System Preferences > Mouse (or System Preferences > Trackpad > Scroll & Zoom, depending on your input device).
- Scroll direction: natural => Unchecked

## HDMI Audio

- Plug HDMI Cable
- System Preferences > Sound > Output > Select "Internal Speakers" or "Headphones"
