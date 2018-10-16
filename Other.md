# TO DO

- [ ] EC Reset
- [ ] Speedstep
- [ ] Benchmark
- [ ] Native Power Management
- [ ] Disable Apple System Integrity Protection ( SIP )
- [ ] TIDY CLOVER BOOT SCREEN

# Specification
- Dump by AIDA64 Engineer

# EDID
- Windows: Dump by Extron EDID Manager
- Linux: `xrandr --props`

# DSDT & SSDT & 
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

# ~~Sleep Solution~~
- ~~Energy Saver -> Never sleep~~