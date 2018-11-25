# Specification
- Dump by AIDA64 Engineer

# EDID
- Windows: Dump by Extron EDID Manager
- Linux: `xrandr --props`

# DSDT & SSDT
- Dump by Clover (F1 -> F4)

# App neccessary
- Clover EFI bootloader https://sourceforge.net/projects/cloverefiboot/ (Using v4522)
- Clover Configurator (config.plist) https://mackie100projects.altervista.org/download-clover-configurator/
- MaciASL (Edit .dsl & save to .aml file) https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/
- iasl (`sudo cp iasl /usr/bin/` `iasl -dl DSDT.aml SSDT*.aml`) https://bitbucket.org/RehabMan/acpica/downloads/
- HWSensors https://sourceforge.net/projects/hwsensors/
- DPCIManager https://sourceforge.net/projects/dpcimanager/
- IORegistryExplorer https://www.tonymacx86.com/threads/guide-how-to-make-a-copy-of-ioreg.58368/
- patchmatic https://bitbucket.org/RehabMan/os-x-maciasl-patchmatic/downloads/
- debug tool https://www.tonymacx86.com/threads/tool-generate-proper-problem-reporting-files.235953/
- Generate refs.txt `pbpaste>refs.txt`

# Compare USB wifi vs card wifi

The user-interface is poor and they tend to cause instability, especially with sleep.

# Add Grub/Grub2 to Clover

```xml
	<key>GUI</key>
	<dict>
        ...
		<dict>
			<key>Entries</key>
			<array>
                ...
				<dict>
					<key>Disabled</key>
					<false/>
					<key>Ignore</key>
					<false/>
					<key>Path</key>
					<string>\EFI\manjaro\grubx64.efi</string>
					<key>FullTitle</key>
					<string>Manjaro GRUB</string>
					<key>Type</key>
					<string>Linux</string>
					<key>VolumeType</key>
					<string>Internal</string>
				</dict>
                ...
			</array>
		</dict>
	</dict>
```

# Add Arch Linux to Clover

```bash
sudo umount /boot
sudo blkid
# EFI: e6e13a43-d400-4d6b-8919-c9c3e5f7814f
# Root: 0448e76a-c71c-4b2c-938a-daca4f9f611b
sudo nano /etc/fstab
```

- /etc/fstab:
```
PARTUUID=e6e13a43-d400-4d6b-8919-c9c3e5f7814f     /boot    vfat
```

```
sudo mount PARTUUID=e6e13a43-d400-4d6b-8919-c9c3e5f7814f /boot
sudo cp /etc/mkinitcpio.d/linux.preset /etc/mkinitcpio.d/linux.backup
sudo nano /etc/mkinitcpio.d/linux.preset
```

- /etc/mkinitcpio.d/linux.preset:
```
# mkinitcpio preset file for the 'linux' package

ALL_config="/etc/mkinitcpio.conf"
ALL_kver="/boot/vmlinuz-linux"

PRESETS=('default' 'fallback')

#default_config="/etc/mkinitcpio.conf"
default_image="/boot/initramfs-linux.img"

#fallback_config="/etc/mkinitcpio.conf"
fallback_image="/boot/initramfs-linux-fallback.img"
fallback_options="-S autodetect"
```

```bash
sudo pacman -S linux
ls /boot
sudo mousepad /boot/efi/clover/config.plist
```

- config.plist:
```xml
	<key>GUI</key>
	<dict>
        ...
		<dict>
			<key>Entries</key>
			<array>
                ...
                <dict>
			<key>Arguments</key>
			<string>initrd=/initramfs-4.14-x86_64.img root=PARTUUID=0448e76a-c71c-4b2c-938a-daca4f9f611b rw quiet</string>
			<key>Path</key>
			<string>\vmlinuz-4.14-x86_64</string>
			<key>Title</key>
			<string>Manjaro</string>
			<key>Type</key>
			<string>Linux</string>
			<key>Volume</key>
			<string>E6E13A43-D400-4D6B-8919-C9C3E5F7814F</string>
		</dict>
                ...
                <dict>
			<key>Arguments</key>
			<string>initrd=/initramfs-linux.img root=PARTUUID=0448e76a-c71c-4b2c-938a-daca4f9f611b rw quiet</string>
			<key>Path</key>
			<string>\vmlinuz-linux</string>
			<key>Title</key>
			<string>Arch Linux</string>
			<key>Type</key>
			<string>Linux</string>
			<key>Volume</key>
			<string>E6E13A43-D400-4D6B-8919-C9C3E5F7814F</string>
                </dict>
                ...
			</array>
		</dict>
	</dict>
```

# ~~Sleep Solution~~ (Only use it if sleep not work)
- ~~Energy Saver -> Never sleep~~

# Ajust BIOS to boot from USB Boot Windows

- Secure Boot: Disabled
- Launch CSM: Enable
- USB 3.0 : Disabled (If it exist)

# Install Windows 7 for new laptop not support old Windows
- Create usb boot by GIGABYTE Windows USB Installation Tool
  + https://www.gigabyte.com/vn/Support/Utility/Motherboard?kw=usb+installation&p=1
  + https://www.gigabyte.com/vn/Support/Utility/Desktop-PC?kw=USB+Installation&p=1
  + https://www.gigabyte.com/vn/Support/Utility/Enterprise?kw=usb+installation&p=1
- Adjust BIOS > Launch CSM: Enable
- Install Drivers by [WanDrv7](https://www.itsk.com/thread-392206-1-1.html)
