# MANUAL I2C PATCH IF NOT USING HOTPATCH

0. [syn] Fix PARSEOP_ZERO Error (aggressive)

```
#Maintained by: RehabMan for: Laptop Patches
#fix_PARSEOP_ZERO.txt

# credit toleda: http://www.tonymacx86.com/dsdt/89727-maciasl-patch-repository-thread.html#post574047

into device label PCI0 code_regex (\s+Zero){2,} removeall_matched;

# if you need something more agressive...
into_all all code_regex (\s+Zero){2,} removeall_matched;
into device label PCI0 code_regex (\s+Zero){2,} removeall_matched;
```

1. Replace all scope _SB.PCI0.I2C1 with this: (No need, because hotpatch in Clover)

- DSDT.dsl
```
    Scope (_SB.PCI0.I2C1)
    {
        Device (ETPD)
        {
            Name (_ADR, One)  // _ADR: Address
            Name (ETPH, Package (0x16)
            {
                "ELAN1200", 
                "ELAN1201", 
                "ELAN1203", 
                "ELAN1200", 
                "ELAN1201", 
                "ELAN1300", 
                "ELAN1301", 
                "ELAN1300", 
                "ELAN1301", 
                "ELAN1000", 
                "ELAN1200", 
                "ELAN1200", 
                "ELAN1200", 
                "ELAN1200", 
                "ELAN1200", 
                "ELAN1203", 
                "ELAN1203", 
                "ELAN1201", 
                "ELAN1300", 
                "ELAN1300", 
                "ELAN1200", 
                "ELAN1300"
            })
            Name (FTPH, Package (0x05)
            {
                "FTE1001", 
                "FTE1200", 
                "FTE1200", 
                "FTE1300", 
                "FTE1300"
            })
            Name (SBFG, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0055
                    }
            })
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                If (And (TPDI, 0x04))
                {
                    Return (DerefOf (Index (ETPH, TPHI)))
                }

                If (And (TPDI, 0x10))
                {
                    Return (DerefOf (Index (FTPH, TPHI)))
                }

                Return ("ELAN1010")
            }

            Name (_CID, "PNP0C50")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                {
                    If (LEqual (Arg2, Zero))
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (Buffer (One)
                            {
                                0x03                                           
                            })
                        }
                        Else
                        {
                            Return (Buffer (One)
                            {
                                0x00                                           
                            })
                        }
                    }

                    If (LEqual (Arg2, One))
                    {
                        Return (One)
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                        0x00                                           
                    })
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (SBFB, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (ConcatenateResTemplate (SBFB, SBFG))
            }
        }
    }
```

2. Add Window10 Patch: (No need, because hotpatch in Clover)

- DSDT.dsl
```
# Windows 10 DSDT Patch for VoodooI2C
# Allows I2C controllers and devices to be discovered by OS X.
# Based off patches written by RehabMan
into_all method code_regex If\s+\([\\]?_OSI\s+\(\"Windows\s2015\"\)\) replace_matched begin If(LOr(_OSI("Darwin"),_OSI("Windows 2015"))) end;
```

3. Add GPIO Controller Enable: (No need, because hotpatch in Clover)

- DSDT.dsl
```
# GPI0 Status patch
# Ensures that OS X can enumerate the GPI0 controller
# Written and maintained by Alexandre Daoud

into method label _STA parent_label GPI0 replace_content begin

Return (0x0F)

end;
```

4. Disabling discrete graphics in dual-GPU laptops (It will fix sleep)

- SSDT-8.dsl : Look for "Method (_INI"
```
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (Zero, \_SB.PCI0.RP01.PEGP._ADR)
            //added to turn nvidia/radeon off
            External(\_SB.PCI0.RP01.PEGP._OFF, MethodObj)
            _OFF()
        }
```

- DSDT.dsl: Look for "Method (_REG"
```
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LEqual (Arg0, 0x03))
                {
                    Store (Arg1, ECFL)
                }
                //added to turn nvidia/radeon off
                If (LAnd(LEqual(Arg0,3),LEqual(Arg1,1)))
                {
                    \_SB.PCI0.LPCB.EC0.SPIN (0x96, Zero)
                    Store (\_SB.PCI0.LPCB.EC0.RRAM (0x0521), Local0)
                    And (Local0, 0xCF, Local0)
                    \_SB.PCI0.LPCB.EC0.WRAM (0x0521, Local0)
                    \_SB.PCI0.LPCB.EC0.WRAM (0x0520, 0x89)
                    \_SB.PCI0.LPCB.EC0.WRAM (0x03A4, Zero)
                    \_SB.PCI0.LPCB.EC0.WRAM (0x03A5, Zero)
                }
            }
```

- Or use this patch for MaciASL:

  + `[gfx0]` Disable from _INI (SSDT):
```
#Maintained by: RehabMan for: Laptop Patches
#graphics_INI-disable.txt

# The purpose of this patch is to add code to _INI to
# disable nvidia/Radeon.  The patch is intended to be applied to
# the SSDT that contains the _INI method for the discrete card.
#
# Usually the path is \_SB.PCI0.PEG0.PEGP and the method name
# is _OFF, but some systems use different names.
#
# The path of _OFF may have to be customized to match your SSDTs
# In addition the label of EC0 may need to be changed (H_EC, EC, etc)
#
# Note: Uncomment the External line if your _OFF method is in
#   a separate SSDT.
#

into method label _INI parent_label \_SB.PCI0.RP01.PEGP insert
begin
//added to turn nvidia/radeon off\n
External(\_SB.PCI0.RP01.PEGP._OFF, MethodObj)\n
_OFF()\n
end;
```

  + `[gfx0]` Disable from _REG (DSDT):
```
#Maintained by: RehabMan for: Laptop Patches
#graphics_REG-disable.txt

# The purpose of this patch is to add code to _REG in EC
# to disable nvidia/Radeon
#
# The path of _OFF may have to be customized to match your SSDTs
# The patch attempts to identify the correct _REG by using
# the ACPI PNP identifier for the EC.

into method label _REG parent_hid PNP0C09 insert
begin
//added to turn nvidia/radeon off\n
If (LAnd(LEqual(Arg0,3),LEqual(Arg1,1)))\n
{\n
    \_SB.PCI0.LPCB.EC0.SPIN (0x96, Zero)\n
    Store (\_SB.PCI0.LPCB.EC0.RRAM (0x0521), Local0)\n
    And (Local0, 0xCF, Local0)\n
    \_SB.PCI0.LPCB.EC0.WRAM (0x0521, Local0)\n
    \_SB.PCI0.LPCB.EC0.WRAM (0x0520, 0x89)\n
    \_SB.PCI0.LPCB.EC0.WRAM (0x03A4, Zero)\n
    \_SB.PCI0.LPCB.EC0.WRAM (0x03A5, Zero)\n
}\n
end;
```