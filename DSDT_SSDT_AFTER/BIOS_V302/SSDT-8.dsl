/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-8.aml, Fri Nov 23 20:56:09 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000039B (923)
 *     Revision         0x02
 *     Checksum         0xFA
 *     OEM ID           "SgRef"
 *     OEM Table ID     "SgUlx"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "SgRef", "SgUlx", 0x00001000)
{
    External (_SB_.PCI0.HGOF, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.HGON, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.RP01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01._ADR, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP01.PEGP.GC6I, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP01.PEGP.GC6O, MethodObj)    // 0 Arguments (from opcode)
    External (EBAS, UnknownObj)    // (from opcode)
    External (GPRW, MethodObj)    // 2 Arguments (from opcode)
    External (HYSS, UnknownObj)    // (from opcode)
    External (OSYS, UnknownObj)    // (from opcode)
    External (RPA1, UnknownObj)    // (from opcode)
    External (XBAS, UnknownObj)    // (from opcode)

    Scope (\_SB.PCI0.RP01)
    {
        OperationRegion (MSID, SystemMemory, EBAS, 0x0500)
        Field (MSID, DWordAcc, Lock, Preserve)
        {
            VEID,   16, 
            Offset (0x40), 
            NVID,   32, 
            Offset (0x4C), 
            ATID,   32, 
            Offset (0x48B), 
                ,   1, 
            NHDA,   1
        }

        OperationRegion (RPCX, SystemMemory, Add (Add (\XBAS, ShiftLeft (ShiftRight (And (\_SB.PCI0.RP01._ADR (), 0x00FF0000), 0x10), 0x0F)), ShiftLeft (And (\RPA1, 0x0F), 0x0C)), 0x1000)
        Field (RPCX, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            CMDR,   8, 
            Offset (0xA4), 
            D0ST,   2
        }

        Name (TDGC, Zero)
        Name (DGCX, Zero)
        Name (TGPC, Buffer (0x04)
        {
             0x00                                           
        })
        PowerResource (PC01, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If (LEqual (TDGC, One))
                {
                    If (LEqual (DGCX, 0x03))
                    {
                        Store (One, _STA)
                        \_SB.PCI0.RP01.PEGP.GC6O ()
                    }
                    ElseIf (LEqual (DGCX, 0x04))
                    {
                        Store (One, _STA)
                        \_SB.PCI0.RP01.PEGP.GC6O ()
                    }

                    Store (Zero, TDGC)
                    Store (Zero, DGCX)
                }
                ElseIf (LNotEqual (OSYS, 0x07D9))
                {
                    \_SB.PCI0.HGON (One)
                    Or (CMDR, 0x07, CMDR)
                    Store (Zero, D0ST)
                    If (LEqual (VEID, 0x10DE))
                    {
                        Store (HYSS, NVID)
                        Store (Zero, NHDA)
                    }

                    If (LEqual (VEID, 0x1002))
                    {
                        Store (HYSS, ATID)
                    }

                    Store (One, _STA)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If (LEqual (TDGC, One))
                {
                    CreateField (TGPC, Zero, 0x03, GUPC)
                    If (LEqual (ToInteger (GUPC), One))
                    {
                        \_SB.PCI0.RP01.PEGP.GC6I ()
                        Store (Zero, _STA)
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x02))
                    {
                        \_SB.PCI0.RP01.PEGP.GC6I ()
                        Store (Zero, _STA)
                    }
                }
                ElseIf (LNotEqual (OSYS, 0x07D9))
                {
                    \_SB.PCI0.HGOF (One)
                    Store (Zero, _STA)
                }
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PC01
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PC01
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PC01
        })
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }

        Device (PEGP)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }
        }

        Device (PEGA)
        {
            Name (_ADR, One)  // _ADR: Address
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }
        }
    }

    Scope (\_SB.PCI0.RP01.PEGP)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (Zero, \_SB.PCI0.RP01.PEGP._ADR)
            //added to turn nvidia/radeon off
            External(\_SB.PCI0.RP01.PEGP._OFF, MethodObj)
            _OFF()
        }
    }
}

