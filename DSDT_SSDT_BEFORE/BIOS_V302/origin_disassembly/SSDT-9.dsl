/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-9.aml, Fri Nov 23 20:56:09 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001F33 (7987)
 *     Revision         0x01
 *     Checksum         0x94
 *     OEM ID           "OptRef"
 *     OEM Table ID     "OptTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 1, "OptRef", "OptTabl", 0x00001000)
{
    External (_PR_.CPPC, IntObj)    // (from opcode)
    External (_PR_.HWPV, UnknownObj)    // (from opcode)
    External (_PR_.PR00._PSS, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.GGIV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.CBC1, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.CBC9, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.CED1, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.CED9, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.DVI1, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.DVI9, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.GFX0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.GFX0._DSM, MethodObj)    // 4 Arguments (from opcode)
    External (_SB_.PCI0.HGOF, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.HGON, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LKD1, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LKD9, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LKS1, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LKS9, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.ECPU, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.RRAM, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.ST8E, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.WRAM, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.LTMP, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LRE1, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LRE9, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LTRE, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.RP01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01.DGCX, IntObj)    // (from opcode)
    External (_SB_.PCI0.RP01.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01.PEGP._ADR, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01.PEGP._PS0, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP01.PEGP.DGPS, IntObj)    // (from opcode)
    External (_SB_.PCI0.RP01.PEGP.NGC6, MethodObj)    // 4 Arguments (from opcode)
    External (_SB_.PCI0.RP01.TDGC, IntObj)    // (from opcode)
    External (_SB_.PCI0.RP01.TGPC, IntObj)    // (from opcode)
    External (_SB_.PCI0.SGPO, MethodObj)    // 4 Arguments (from opcode)
    External (DID1, UnknownObj)    // (from opcode)
    External (DID2, UnknownObj)    // (from opcode)
    External (DID3, UnknownObj)    // (from opcode)
    External (DID4, UnknownObj)    // (from opcode)
    External (DID5, UnknownObj)    // (from opcode)
    External (DID6, UnknownObj)    // (from opcode)
    External (DID7, UnknownObj)    // (from opcode)
    External (DID8, UnknownObj)    // (from opcode)
    External (EBAS, UnknownObj)    // (from opcode)
    External (HRA0, UnknownObj)    // (from opcode)
    External (HRE0, UnknownObj)    // (from opcode)
    External (HRG0, UnknownObj)    // (from opcode)
    External (NVGA, UnknownObj)    // (from opcode)
    External (NVHA, UnknownObj)    // (from opcode)
    External (NXD1, UnknownObj)    // (from opcode)
    External (NXD2, UnknownObj)    // (from opcode)
    External (NXD3, UnknownObj)    // (from opcode)
    External (NXD4, UnknownObj)    // (from opcode)
    External (NXD5, UnknownObj)    // (from opcode)
    External (NXD6, UnknownObj)    // (from opcode)
    External (NXD7, UnknownObj)    // (from opcode)
    External (NXD8, UnknownObj)    // (from opcode)
    External (PNOT, MethodObj)    // 0 Arguments (from opcode)
    External (PWA0, UnknownObj)    // (from opcode)
    External (PWE0, UnknownObj)    // (from opcode)
    External (PWG0, UnknownObj)    // (from opcode)
    External (SGFL, UnknownObj)    // (from opcode)
    External (SGGP, UnknownObj)    // (from opcode)
    External (SGMD, UnknownObj)    // (from opcode)
    External (SSMP, UnknownObj)    // (from opcode)

    Scope (\_SB.PCI0)
    {
        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
    }

    Scope (\_SB.PCI0.RP01.PEGP)
    {
        OperationRegion (PCI2, SystemMemory, EBAS, 0x1000)
        Field (PCI2, DWordAcc, Lock, Preserve)
        {
            Offset (0x04), 
            CMDR,   8, 
            VGAR,   2000, 
            Offset (0x48B), 
                ,   1, 
            NHDA,   1
        }

        Name (VGAB, Buffer (0xFA)
        {
             0x00                                           
        })
        Name (GPRF, Zero)
        OperationRegion (NVHM, SystemMemory, NVHA, 0x00030400)
        Field (NVHM, DWordAcc, NoLock, Preserve)
        {
            NVSG,   128, 
            NVSZ,   32, 
            NVVR,   32, 
            NVHO,   32, 
            RVBS,   32, 
            RBF1,   262144, 
            RBF2,   262144, 
            RBF3,   262144, 
            RBF4,   262144, 
            RBF5,   262144, 
            RBF6,   262144, 
            MXML,   32, 
            MXM3,   1600
        }

        Name (OPCE, 0x02)
        Name (DGPS, Zero)
        Method (SGST, 0, Serialized)
        {
            If (And (SGMD, 0x0F))
            {
                If (LNotEqual (SGGP, One))
                {
                    Return (0x0F)
                }

                If (LNotEqual (DVI1, 0xFFFF))
                {
                    If (LEqual (CBC1, 0x03))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            If (LNotEqual (DVI1, 0xFFFF))
            {
                Return (0x0F)
            }

            Return (Zero)
        }

        Name (_PSC, Zero)  // _PSC: Power State Current
        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            Store (Zero, _PSC)
            If (LNotEqual (DGPS, Zero))
            {
                _ON ()
                Store (Zero, DGPS)
            }
        }

        Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
        {
            Store (One, _PSC)
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If (LEqual (OPCE, 0x03))
            {
                If (LEqual (DGPS, Zero))
                {
                    _OFF ()
                    Store (One, DGPS)
                }

                Store (0x02, OPCE)
            }

            Store (0x03, _PSC)
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            If (LGreater (Local1, 0x1000))
            {
                Store (0x1000, Local1)
            }

            If (LGreater (Local0, 0x00030000))
            {
                Return (Buffer (Local1)
                {
                     0x00                                           
                })
            }

            Multiply (Local1, 0x08, Local3)
            Name (ROM1, Buffer (0x8000)
            {
                 0x00                                           
            })
            Name (ROM2, Buffer (Local1)
            {
                 0x00                                           
            })
            If (LLess (Local0, 0x8000))
            {
                Store (RBF1, ROM1)
            }
            ElseIf (LLess (Local0, 0x00010000))
            {
                Subtract (Local0, 0x8000, Local0)
                Store (RBF2, ROM1)
            }
            ElseIf (LLess (Local0, 0x00018000))
            {
                Subtract (Local0, 0x00010000, Local0)
                Store (RBF3, ROM1)
            }
            ElseIf (LLess (Local0, 0x00020000))
            {
                Subtract (Local0, 0x00018000, Local0)
                Store (RBF4, ROM1)
            }
            ElseIf (LLess (Local0, 0x00028000))
            {
                Subtract (Local0, 0x00020000, Local0)
                Store (RBF5, ROM1)
            }
            ElseIf (LLess (Local0, 0x00030000))
            {
                Subtract (Local0, 0x00028000, Local0)
                Store (RBF6, ROM1)
            }

            Multiply (Local0, 0x08, Local2)
            CreateField (ROM1, Local2, Local3, TMPB)
            Store (TMPB, ROM2)
            Return (ROM2)
        }

        Method (HDSM, 4, Serialized)
        {
            Return (0x80000001)
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            CreateByteField (Arg0, 0x03, GUID)
            Return (\_SB.PCI0.GFX0.HDSM (Arg0, Arg1, Arg2, Arg3))
        }

        Name (CTXT, Zero)
        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            \_SB.PCI0.HGON (One)
            If (LNotEqual (GPRF, One))
            {
                Store (CMDR, Local0)
                Store (Zero, CMDR)
                Store (VGAB, VGAR)
                Store (0x06, CMDR)
                If (LEqual (And (SGFL, 0x02), Zero))
                {
                    Store (Zero, NHDA)
                }

                Store (Local0, CMDR)
            }
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            If (LEqual (CTXT, Zero))
            {
                If (LNotEqual (GPRF, One))
                {
                    Store (VGAR, VGAB)
                }

                Store (One, CTXT)
            }

            \_SB.PCI0.HGOF (One)
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (DID1, Index (TLPK, Zero))
            Store (DID2, Index (TLPK, 0x02))
            Store (DID3, Index (TLPK, 0x04))
            Store (DID4, Index (TLPK, 0x06))
            Store (DID5, Index (TLPK, 0x08))
            Store (DID6, Index (TLPK, 0x0A))
            Store (DID7, Index (TLPK, 0x0C))
            Store (DID2, Index (TLPK, 0x0E))
            Store (DID1, Index (TLPK, 0x0F))
            Store (DID2, Index (TLPK, 0x11))
            Store (DID3, Index (TLPK, 0x12))
            Store (DID2, Index (TLPK, 0x14))
            Store (DID4, Index (TLPK, 0x15))
            Store (DID2, Index (TLPK, 0x17))
            Store (DID5, Index (TLPK, 0x18))
            Store (DID2, Index (TLPK, 0x1A))
            Store (DID6, Index (TLPK, 0x1B))
            Store (DID2, Index (TLPK, 0x1D))
            Store (DID7, Index (TLPK, 0x1E))
        }

        OperationRegion (NVIG, SystemMemory, NVGA, 0x45)
        Field (NVIG, DWordAcc, NoLock, Preserve)
        {
            NISG,   128, 
            NISZ,   32, 
            NIVR,   32, 
            GPSS,   32, 
            GACD,   16, 
            GATD,   16, 
            LDES,   8, 
            DKST,   8, 
            DACE,   8, 
            DHPE,   8, 
            DHPS,   8, 
            SGNC,   8, 
            GPPO,   8, 
            USPM,   8, 
            GPSP,   8, 
            TLSN,   8, 
            DOSF,   8, 
            ELCL,   16
        }

        Name (TLPK, Package (0x20)
        {
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C
        })
        Method (INDL, 0, Serialized)
        {
            Store (Zero, NXD1)
            Store (Zero, NXD2)
            Store (Zero, NXD3)
            Store (Zero, NXD4)
            Store (Zero, NXD5)
            Store (Zero, NXD6)
            Store (Zero, NXD7)
            Store (Zero, NXD8)
        }

        Method (SND1, 1, Serialized)
        {
            If (LEqual (Arg0, DID1))
            {
                Store (One, NXD1)
            }

            If (LEqual (Arg0, DID2))
            {
                Store (One, NXD2)
            }

            If (LEqual (Arg0, DID3))
            {
                Store (One, NXD3)
            }

            If (LEqual (Arg0, DID4))
            {
                Store (One, NXD4)
            }

            If (LEqual (Arg0, DID5))
            {
                Store (One, NXD5)
            }

            If (LEqual (Arg0, DID6))
            {
                Store (One, NXD6)
            }

            If (LEqual (Arg0, DID7))
            {
                Store (One, NXD7)
            }

            If (LEqual (Arg0, DID8))
            {
                Store (One, NXD8)
            }
        }

        Method (SNXD, 1, Serialized)
        {
            INDL ()
            Store (One, Local0)
            Store (Zero, Local1)
            While (LLess (Local0, Arg0))
            {
                If (LEqual (DerefOf (Index (TLPK, Local1)), 0x2C))
                {
                    Increment (Local0)
                }

                Increment (Local1)
            }

            SND1 (DerefOf (Index (TLPK, Local1)))
            Increment (Local1)
            If (LNotEqual (DerefOf (Index (TLPK, Local1)), 0x2C))
            {
                SND1 (DerefOf (Index (TLPK, Local1)))
            }
        }

        Method (CTOI, 1, Serialized)
        {
            Switch (ToInteger (Arg0))
            {
                Case (One)
                {
                    Return (One)
                }
                Case (0x02)
                {
                    Return (0x02)
                }
                Case (0x04)
                {
                    Return (0x03)
                }
                Case (0x08)
                {
                    Return (0x04)
                }
                Case (0x10)
                {
                    Return (0x05)
                }
                Case (0x20)
                {
                    Return (0x06)
                }
                Case (0x40)
                {
                    Return (0x07)
                }
                Case (0x03)
                {
                    Return (0x08)
                }
                Case (0x06)
                {
                    Return (0x09)
                }
                Case (0x0A)
                {
                    Return (0x0A)
                }
                Case (0x12)
                {
                    Return (0x0B)
                }
                Case (0x22)
                {
                    Return (0x0C)
                }
                Case (0x42)
                {
                    Return (0x0D)
                }
                Default
                {
                    Return (One)
                }

            }
        }

        Method (HDSM, 4, Serialized)
        {
            If (LEqual (Arg0, ToUUID ("a3132d01-8cda-49ba-a52e-bc9d46df6b81")))
            {
                Return (\_SB.PCI0.RP01.PEGP.GPS (Arg0, Arg1, Arg2, Arg3))
            }

            If (LEqual (Arg0, ToUUID ("cbeca351-067b-4924-9cbd-b46b00b86f34")))
            {
                Return (\_SB.PCI0.RP01.PEGP.NGC6 (Arg0, Arg1, Arg2, Arg3))
            }

            Name (SGCI, Zero)
            Name (NBCI, Zero)
            Name (OPCI, Zero)
            Name (BUFF, Zero)
            If (LEqual (Arg0, ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
            {
                Store (One, OPCI)
            }

            If (LOr (OPCI, LOr (SGCI, NBCI)))
            {
                If (OPCI)
                {
                    If (LNotEqual (Arg1, 0x0100))
                    {
                        Return (0x80000002)
                    }
                }
                ElseIf (LNotEqual (Arg1, 0x0102))
                {
                    Return (0x80000002)
                }

                If (LEqual (Arg2, Zero))
                {
                    If (SGCI)
                    {
                        Return (Buffer (0x04)
                        {
                             0x7F, 0x00, 0x04, 0x00                         
                        })
                    }
                    ElseIf (NBCI)
                    {
                        Return (Buffer (0x04)
                        {
                             0x73, 0x00, 0x04, 0x00                         
                        })
                    }
                    ElseIf (OPCI)
                    {
                        Return (Buffer (0x04)
                        {
                             0x61, 0x18, 0x03, 0x0C                         
                        })
                    }
                }

                If (LEqual (Arg2, One))
                {
                    Name (TEMP, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (TEMP, Zero, STS0)
                    If (SGCI)
                    {
                        Or (STS0, 0x0B0000BF, STS0)
                        Or (STS0, ShiftLeft (SGNC, 0x08, SGNC), STS0)
                    }
                    Else
                    {
                        Or (STS0, Zero, STS0)
                    }

                    Return (TEMP)
                }

                If (LEqual (Arg2, 0x02))
                {
                    Name (TMP1, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (TMP1, Zero, STS1)
                    ToInteger (Arg3, Local0)
                    And (Local0, 0x1F, Local0)
                    If (And (Local0, 0x10))
                    {
                        And (Local0, 0x0F, Local0)
                        Store (Local0, GPSS)
                        Notify (\_SB.PCI0.GFX0, 0xD9)
                        Notify (\_SB.PCI0.WMI1, 0xD9)
                    }
                    Else
                    {
                        And (Local0, 0x0F, Local0)
                        If (LEqual (GPPO, One))
                        {
                            Store (GPSS, Local0)
                            Or (Local0, 0x10, Local0)
                            Store (Zero, GPPO)
                        }
                    }

                    Or (STS1, Local0, STS1)
                    Return (TMP1)
                }

                If (LEqual (Arg2, 0x03))
                {
                    Name (TMP2, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (TMP2, Zero, STS2)
                    ToInteger (Arg3, Local0)
                    And (Local0, 0x03, Local0)
                    If (LEqual (Local0, Zero))
                    {
                        \_SB.PCI0.RP01.PEGP.SGST ()
                    }

                    If (LEqual (Local0, One))
                    {
                        \_SB.PCI0.HGON (One)
                    }

                    If (LEqual (Local0, 0x02))
                    {
                        \_SB.PCI0.HGOF (One)
                    }

                    If (LEqual (\_SB.PCI0.RP01.PEGP.SGST (), 0x0F))
                    {
                        Or (STS2, One, STS2)
                    }

                    Return (TMP2)
                }

                If (LEqual (Arg2, 0x04))
                {
                    Name (TMP3, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (TMP3, Zero, STS3)
                    ToInteger (Arg3, Local0)
                    Store (Local0, Local1)
                    ShiftRight (Local0, 0x10, Local0)
                    And (Local0, One, USPM)
                    ShiftRight (Local1, 0x0D, Local1)
                    And (Local1, 0x03, Local1)
                    If (LNotEqual (Local1, GPSP))
                    {
                        If (LEqual (USPM, One))
                        {
                            Store (Local1, GPSP)
                        }
                        Else
                        {
                            Store (GPSP, Local1)
                            Or (STS3, 0x8000, STS3)
                        }
                    }

                    Or (STS3, ShiftLeft (Local1, 0x0D), STS3)
                    Return (TMP3)
                }

                If (LEqual (Arg2, 0x05))
                {
                    Name (TMP4, Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                         
                    })
                    CreateDWordField (TMP4, Zero, STS4)
                    ToInteger (Arg3, Local0)
                    If (And (Local0, 0x80000000))
                    {
                        Store (And (ShiftRight (Local0, 0x19), 0x1F), TLSN)
                        If (And (Local0, 0x40000000))
                        {
                            Store (One, DOSF)
                        }
                    }

                    If (And (Local0, 0x01000000))
                    {
                        Store (And (ShiftRight (Local0, 0x0C), 0x0FFF), GACD)
                        Store (And (Local0, 0x0FFF), GATD)
                        Store (CTOI (GACD), TLSN)
                        Increment (TLSN)
                        If (LGreater (TLSN, 0x0D))
                        {
                            Store (One, TLSN)
                        }

                        SNXD (TLSN)
                    }

                    Or (STS4, ShiftLeft (DHPE, 0x15), STS4)
                    Or (STS4, ShiftLeft (DHPS, 0x14), STS4)
                    Or (STS4, ShiftLeft (TLSN, 0x08), STS4)
                    Or (STS4, ShiftLeft (DKST, 0x05), STS4)
                    Or (STS4, ShiftLeft (LDES, 0x04), STS4)
                    Or (STS4, DACE, STS4)
                    Store (Zero, LDES)
                    Store (Zero, DHPS)
                    Store (Zero, DHPE)
                    Store (Zero, DACE)
                    Return (TMP4)
                }

                If (LEqual (Arg2, 0x06))
                {
                    Return (TLPK)
                }

                If (LEqual (Arg2, 0x10))
                {
                    CreateWordField (Arg3, 0x02, USRG)
                    Name (OPVK, Buffer (0x96)
                    {
                        /* 0000 */  0xE4, 0x57, 0x31, 0x0D, 0xD1, 0x7D, 0x49, 0x60,
                        /* 0008 */  0x4B, 0x56, 0x96, 0x00, 0x00, 0x00, 0x01, 0x00,
                        /* 0010 */  0x31, 0x35, 0x36, 0x32, 0x37, 0x33, 0x34, 0x36,
                        /* 0018 */  0x38, 0x37, 0x33, 0x39, 0x47, 0x65, 0x6E, 0x75,
                        /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                        /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                        /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                        /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                        /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                        /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x2D,
                        /* 0050 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,
                        /* 0058 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x31, 0x20,
                        /* 0060 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,
                        /* 0068 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,
                        /* 0070 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,
                        /* 0078 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,
                        /* 0080 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,
                        /* 0088 */  0x30, 0x33, 0x37, 0x35, 0x36, 0x33, 0x38, 0x35,
                        /* 0090 */  0x36, 0x35, 0x32, 0x28, 0x52, 0x29             
                    })
                    If (LEqual (USRG, 0x564B))
                    {
                        Return (OPVK)
                    }

                    Name (OPDR, Buffer (0xA1)
                    {
                        /* 0000 */  0xA8, 0xAC, 0x88, 0xC3, 0x9E, 0xBC, 0x7B, 0xA1,
                        /* 0008 */  0x52, 0x44, 0xA1, 0x00, 0x00, 0x00, 0x00, 0x01,
                        /* 0010 */  0x00, 0x00, 0x00, 0x00, 0xDE, 0x10, 0x00, 0x00,
                        /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0020 */  0x09, 0x00, 0x00, 0x00, 0x00, 0x00, 0x34, 0x00,
                        /* 0028 */  0x00, 0x00, 0x01, 0x00, 0x47, 0x00, 0x00, 0x00,
                        /* 0030 */  0x02, 0x00, 0x45, 0x00, 0x00, 0x00, 0x03, 0x00,
                        /* 0038 */  0x51, 0x00, 0x00, 0x00, 0x04, 0x00, 0x4F, 0x00,
                        /* 0040 */  0x00, 0x00, 0x05, 0x00, 0x4D, 0x00, 0x00, 0x00,
                        /* 0048 */  0x06, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x07, 0x00,
                        /* 0050 */  0x49, 0x00, 0x00, 0x00, 0x08, 0x00, 0x47, 0x00,
                        /* 0058 */  0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0xD9, 0x1C,
                        /* 0060 */  0x04, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00,
                        /* 0068 */  0x41, 0x5D, 0xC9, 0x00, 0x01, 0x24, 0x2E, 0x00,
                        /* 0070 */  0x02, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01,
                        /* 0078 */  0x00, 0x00, 0x00, 0xD9, 0x1C, 0x04, 0x00, 0x00,
                        /* 0080 */  0x00, 0x01, 0x00, 0x00, 0x00, 0xD0, 0xFB, 0x00,
                        /* 0088 */  0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 0098 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        /* 00A0 */  0x00                                           
                    })
                    If (LEqual (USRG, 0x4452))
                    {
                        Return (OPDR)
                    }

                    Return (Zero)
                }

                If (LEqual (Arg2, 0x11))
                {
                    Return (Zero)
                }

                If (LEqual (Arg2, 0x12))
                {
                    Return (Package (0x0A)
                    {
                        0xD0, 
                        ToUUID ("921a2f40-0dc4-402d-ac18-b48444ef9ed2"), 
                        0xD9, 
                        ToUUID ("c12ad361-9fa9-4c74-901f-95cb0945cf3e"), 
                        0xDB, 
                        ToUUID ("42848006-8886-490e-8c72-2bdca93a8a09"), 
                        0xEF, 
                        ToUUID ("b3e485d2-3cc1-4b54-8f31-77ba2fdc9ebe"), 
                        0xF0, 
                        ToUUID ("360d6fb6-1d4e-4fa6-b848-1be33dd8ec7b")
                    })
                }

                If (LEqual (Arg2, 0x1A))
                {
                    CreateField (Arg3, 0x18, 0x02, OMPR)
                    CreateField (Arg3, Zero, One, FLCH)
                    CreateField (Arg3, One, One, DVSR)
                    CreateField (Arg3, 0x02, One, DVSC)
                    If (ToInteger (FLCH))
                    {
                        Store (OMPR, \_SB.PCI0.RP01.PEGP.OPCE)
                    }

                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }, Local0)
                    CreateField (Local0, Zero, One, OPEN)
                    CreateField (Local0, 0x03, 0x02, CGCS)
                    CreateField (Local0, 0x06, One, SHPC)
                    CreateField (Local0, 0x08, One, SNSR)
                    CreateField (Local0, 0x18, 0x03, DGPC)
                    CreateField (Local0, 0x1B, 0x02, HDAC)
                    Store (One, OPEN)
                    Store (One, SHPC)
                    Store (0x02, HDAC)
                    Store (One, DGPC)
                    If (ToInteger (DVSC))
                    {
                        If (ToInteger (DVSR))
                        {
                            Store (One, \_SB.PCI0.RP01.PEGP.GPRF)
                        }
                        Else
                        {
                            Store (Zero, \_SB.PCI0.RP01.PEGP.GPRF)
                        }
                    }

                    Store (\_SB.PCI0.RP01.PEGP.GPRF, SNSR)
                    If (LNotEqual (\_SB.PCI0.RP01.PEGP.SGST (), Zero))
                    {
                        Store (0x03, CGCS)
                    }

                    Return (Local0)
                }

                If (LEqual (Arg2, 0x1B))
                {
                    ToInteger (Arg3, Local0)
                    If (And (Local0, 0x02))
                    {
                        Store (Zero, BUFF)
                        If (And (Local0, One))
                        {
                            Store (One, BUFF)
                        }
                    }

                    And (SGFL, 0xFFFFFFFD, SGFL)
                    Or (SGFL, ShiftLeft (BUFF, One), SGFL)
                    Return (Local0)
                }

                Return (0x80000002)
            }

            Return (0x80000001)
        }
    }

    Scope (\_SB.PCI0.RP01.PEGP)
    {
        Mutex (LG6O, 0x00)
        Method (GC6I, 0, Serialized)
        {
            Store (\_SB.PCI0.LRE1, \_SB.PCI0.LTRE)
            Store (\_SB.PCI0.LPCB.EC0.RRAM (0x0521), Local0)
            And (Local0, 0xCF, Local0)
            \_SB.PCI0.LPCB.EC0.WRAM (0x0521, Local0)
            \_SB.PCI0.LPCB.EC0.WRAM (0x0520, 0x89)
            \_SB.PCI0.LPCB.EC0.WRAM (0x03A4, Zero)
            \_SB.PCI0.LPCB.EC0.WRAM (0x03A5, Zero)
            Store (\_SB.PCI0.LPCB.EC0.RRAM (0x045C), Local0)
            Or (Local0, 0x80, Local0)
            \_SB.PCI0.LPCB.EC0.WRAM (0x045C, Local0)
            Store ("<<< GC6I >>>", Debug)
            Acquire (LG6O, 0xFFFF)
            Store (One, \_SB.PCI0.LKD1)
            While (LNotEqual (\_SB.GGIV (0x02010015), One))
            {
                Sleep (One)
            }

            Release (LG6O)
        }

        Method (GC6O, 0, Serialized)
        {
            Store ("<<< GC6O >>>", Debug)
            Acquire (LG6O, 0xFFFF)
            Store (Zero, \_SB.PCI0.LKD1)
            If (LEqual (\_SB.GGIV (0x02010015), One))
            {
                \_SB.PCI0.SGPO (Zero, 0x02010014, Zero, One)
                While (LNotEqual (\_SB.GGIV (0x02010015), Zero))
                {
                    Sleep (One)
                }

                \_SB.PCI0.SGPO (Zero, 0x02010014, Zero, Zero)
            }

            While (LLess (\_SB.PCI0.LKS1, 0x07))
            {
                Sleep (One)
            }

            Store (\_SB.PCI0.LTRE, \_SB.PCI0.LRE1)
            Store (One, \_SB.PCI0.CED1)
            \_SB.PCI0.LPCB.EC0.WRAM (0x052B, 0x9E)
            \_SB.PCI0.LPCB.EC0.WRAM (0x0520, 0x8B)
            Store (\_SB.PCI0.LPCB.EC0.RRAM (0x0521), Local0)
            And (Local0, 0xCF, Local0)
            Or (Local0, 0x20, Local0)
            \_SB.PCI0.LPCB.EC0.WRAM (0x0521, Local0)
            Store (\_SB.PCI0.LPCB.EC0.RRAM (0x045C), Local0)
            And (Local0, 0x7F, Local0)
            \_SB.PCI0.LPCB.EC0.WRAM (0x045C, Local0)
            Release (LG6O)
        }

        Method (GETS, 0, Serialized)
        {
            If (LEqual (\_SB.GGIV (0x02010015), Zero))
            {
                Store ("<<< GETS() return 0x1 >>>", Debug)
                Return (One)
            }
            Else
            {
                Store ("<<< GETS() return 0x3 >>>", Debug)
                Return (0x03)
            }
        }

        Method (NGC6, 4, Serialized)
        {
            Store ("------- GC6 DSM --------", Debug)
            If (LLess (Arg1, 0x0100))
            {
                Return (0x80000001)
            }

            Switch (ToInteger (Arg2))
            {
                Case (Zero)
                {
                    Return (Buffer (0x04)
                    {
                         0x1B, 0x00, 0x00, 0x00                         
                    })
                }
                Case (One)
                {
                    Name (JTB1, Buffer (0x04)
                    {
                         0x00                                           
                    })
                    CreateField (JTB1, Zero, One, JTEN)
                    CreateField (JTB1, One, 0x02, SREN)
                    CreateField (JTB1, 0x03, 0x03, PLPR)
                    CreateField (JTB1, 0x06, 0x02, FBPR)
                    CreateField (JTB1, 0x08, 0x02, GUPR)
                    CreateField (JTB1, 0x0A, One, GC6R)
                    CreateField (JTB1, 0x0B, One, PTRH)
                    CreateField (JTB1, 0x0D, One, MHYB)
                    CreateField (JTB1, 0x0E, One, RPCL)
                    CreateField (JTB1, 0x0F, 0x02, GC6M)
                    CreateField (JTB1, 0x14, 0x0C, JTRV)
                    Store (One, JTEN)
                    Store (One, GC6R)
                    Store (One, PTRH)
                    Store (One, GC6M)
                    Store (One, SREN)
                    If (\_OSI ("Windows 2013"))
                    {
                        Store (One, MHYB)
                    }

                    Store (0x0103, JTRV)
                    Return (JTB1)
                }
                Case (0x02)
                {
                    Store ("GPS fun 19", Debug)
                    Return (Arg3)
                }
                Case (0x03)
                {
                    CreateField (Arg3, Zero, 0x03, GUPC)
                    CreateField (Arg3, 0x04, One, PLPC)
                    CreateField (Arg3, 0x0E, 0x02, DFGC)
                    CreateField (Arg3, 0x10, 0x03, GPCX)
                    Store (Arg3, TGPC)
                    If (LOr (LNotEqual (ToInteger (GUPC), Zero), LNotEqual (ToInteger (DFGC), Zero)))
                    {
                        Store (ToInteger (DFGC), \_SB.PCI0.RP01.TDGC)
                        Store (ToInteger (GPCX), \_SB.PCI0.RP01.DGCX)
                    }

                    Name (JTB3, Buffer (0x04)
                    {
                         0x00                                           
                    })
                    CreateField (JTB3, Zero, 0x03, GUPS)
                    CreateField (JTB3, 0x03, One, GPGS)
                    CreateField (JTB3, 0x07, One, PLST)
                    If (LNotEqual (ToInteger (DFGC), Zero))
                    {
                        Store (One, GPGS)
                        Store (One, GUPS)
                        Return (JTB3)
                    }

                    If (LEqual (ToInteger (GUPC), One))
                    {
                        GC6I ()
                        Store (One, PLST)
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x02))
                    {
                        GC6I ()
                        If (LEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST)
                        }
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x03))
                    {
                        GC6O ()
                        If (LNotEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST)
                        }
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x04))
                    {
                        GC6O ()
                        If (LNotEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST)
                        }
                    }
                    ElseIf (LEqual (ToInteger (GUPC), Zero))
                    {
                        Store (GETS (), GUPS)
                        If (LEqual (ToInteger (GUPS), One))
                        {
                            Store (One, GPGS)
                        }
                        Else
                        {
                            Store (Zero, GPGS)
                        }
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x06)){}
                    Return (JTB3)
                }
                Case (0x04)
                {
                    Return (0x80000002)
                }

            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0.RP01.PEGP)
    {
        Name (PSAP, Zero)
        Name (GPSP, Buffer (0x24){})
        CreateDWordField (GPSP, Zero, RETN)
        CreateDWordField (GPSP, 0x04, VRV1)
        CreateDWordField (GPSP, 0x08, TGPU)
        CreateDWordField (GPSP, 0x0C, PDTS)
        CreateDWordField (GPSP, 0x10, SFAN)
        CreateDWordField (GPSP, 0x14, SKNT)
        CreateDWordField (GPSP, 0x18, CPUE)
        CreateDWordField (GPSP, 0x1C, TMP1)
        CreateDWordField (GPSP, 0x20, TMP2)
        Name (NLIM, Zero)
        Method (GPS, 4, Serialized)
        {
            Store ("<<< GPS >>>", Debug)
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (0x80000002)
            }

            Switch (ToInteger (Arg2))
            {
                Case (Zero)
                {
                    Store ("GPS fun 0", Debug)
                    Return (Buffer (0x08)
                    {
                         0x01, 0x00, 0x08, 0x00, 0x0F, 0x04, 0x00, 0x00 
                    })
                }
                Case (0x13)
                {
                    Store ("GPS fun 19", Debug)
                    Return (Arg3)
                }
                Case (0x20)
                {
                    Store ("GPS fun 32", Debug)
                    Name (RET1, Zero)
                    CreateBitField (Arg3, 0x18, NRIT)
                    CreateBitField (Arg3, 0x19, NRIS)
                    If (NRIS)
                    {
                        If (NRIT)
                        {
                            Or (RET1, 0x01000000, RET1)
                        }
                        Else
                        {
                            And (RET1, 0xFEFFFFFF, RET1)
                        }
                    }

                    Or (RET1, 0x40000000, RET1)
                    If (NLIM)
                    {
                        Or (RET1, One, RET1)
                    }

                    Store ("== GPS: HWPV ==", Debug)
                    Store (\_PR.HWPV, Debug)
                    If (And (\_PR.HWPV, 0x02))
                    {
                        Or (RET1, 0x00800000, RET1)
                    }

                    Return (RET1)
                }
                Case (0x21)
                {
                    Store ("GPS fun 21", Debug)
                    Return (\_PR.PR00._PSS ())
                }
                Case (0x22)
                {
                    CreateByteField (Arg3, Zero, PCAP)
                    Store (PCAP, \_PR.CPPC)
                    PNOT ()
                    Store (PCAP, PSAP)
                    Return (PCAP)
                }
                Case (0x23)
                {
                    Store ("GPS fun 23", Debug)
                    Return (PSAP)
                }
                Case (0x2A)
                {
                    Store ("GPS fun 42", Debug)
                    CreateByteField (Arg3, Zero, PSH0)
                    CreateByteField (Arg3, One, PSH1)
                    CreateBitField (Arg3, 0x08, GPUT)
                    CreateBitField (Arg3, 0x09, CPUT)
                    CreateBitField (Arg3, 0x0A, FANS)
                    CreateBitField (Arg3, 0x0B, SKIN)
                    CreateBitField (Arg3, 0x0C, ENGR)
                    CreateBitField (Arg3, 0x0D, SEN1)
                    CreateBitField (Arg3, 0x0E, SEN2)
                    Store (0x00010000, VRV1)
                    Switch (PSH0)
                    {
                        Case (Zero)
                        {
                            If (CPUT)
                            {
                                Store (0x0200, RETN)
                                Or (RETN, PSH0, RETN)
                                Store (\_SB.PCI0.LPCB.EC0.ECPU, PDTS)
                            }

                            Return (GPSP)
                        }
                        Case (One)
                        {
                            Store (0x0300, RETN)
                            Or (RETN, PSH0, RETN)
                            Store (0x03E8, PDTS)
                            Return (GPSP)
                        }
                        Case (0x02)
                        {
                            Store (0x0102, RETN)
                            Store (\_SB.PCI0.LPCB.EC0.ST8E (0x23, Zero), TGPU)
                            Store (Zero, PDTS)
                            Store (Zero, SFAN)
                            Store (Zero, CPUE)
                            Store (Zero, SKNT)
                            Store (Zero, TMP1)
                            Store (Zero, TMP2)
                            Return (GPSP)
                        }

                    }

                    Return (0x80000002)
                }

            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (WMI2)
        {
            Name (_HID, "PNP0C14")  // _HID: Hardware ID
            Name (_UID, "OPTM")  // _UID: Unique ID
            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0xBF, 0x82, 0x49, 0xCA, 0x30, 0xC2, 0x8E, 0x45,
                /* 0008 */  0xB1, 0x2F, 0x6F, 0x16, 0x47, 0x5F, 0x35, 0x1B,
                /* 0010 */  0x4F, 0x50, 0x01, 0x02, 0xF8, 0xD8, 0x86, 0xA4,
                /* 0018 */  0xDA, 0x0B, 0x1B, 0x47, 0xA7, 0x2B, 0x60, 0x42,
                /* 0020 */  0xA6, 0xB5, 0xBE, 0xE0, 0x53, 0x4D, 0x01, 0x00 
            })
            Method (WMOP, 3, NotSerialized)
            {
                If (LEqual (Arg1, One))
                {
                    \_SB.PCI0.RP01.PEGP._PS0 ()
                    Notify (\_SB.PCI0.RP01, Zero)
                    Return (Zero)
                }

                If (LEqual (Arg1, 0x02))
                {
                    If (LEqual (\_SB.PCI0.RP01.PEGP.DGPS, Zero))
                    {
                        Return (0x10)
                    }
                    Else
                    {
                        Return (0x20)
                    }
                }
            }

            Method (WQSM, 1, NotSerialized)
            {
                Return (ATSM)
            }

            Name (ATSM, Buffer (0xE2)
            {
                /* 0000 */  0x52, 0xAA, 0x89, 0xC5, 0x44, 0xCE, 0xC3, 0x3A,
                /* 0008 */  0x4B, 0x56, 0xE2, 0x00, 0x00, 0x00, 0x01, 0x00,
                /* 0010 */  0x32, 0x37, 0x34, 0x35, 0x39, 0x31, 0x32, 0x35,
                /* 0018 */  0x33, 0x36, 0x38, 0x37, 0x47, 0x65, 0x6E, 0x75,
                /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
                /* 0050 */  0x6F, 0x72, 0x20, 0x63, 0x6F, 0x6F, 0x6B, 0x69,
                /* 0058 */  0x65, 0x20, 0x66, 0x6F, 0x72, 0x20, 0x75, 0x6C,
                /* 0060 */  0x35, 0x30, 0x20, 0x75, 0x73, 0x69, 0x6E, 0x20,
                /* 0068 */  0x2D, 0x20, 0x5E, 0x57, 0x3C, 0x4A, 0x3D, 0x41,
                /* 0070 */  0x24, 0x4C, 0x3A, 0x4B, 0x38, 0x32, 0x26, 0x51,
                /* 0078 */  0x48, 0x35, 0x4C, 0x3E, 0x2B, 0x33, 0x52, 0x2B,
                /* 0080 */  0x54, 0x35, 0x2A, 0x52, 0x29, 0x3A, 0x5B, 0x4C,
                /* 0088 */  0x4A, 0x3E, 0x36, 0x48, 0x22, 0x48, 0x41, 0x50,
                /* 0090 */  0x47, 0x39, 0x5A, 0x39, 0x5E, 0x3E, 0x44, 0x53,
                /* 0098 */  0x54, 0x3C, 0x20, 0x2D, 0x20, 0x43, 0x6F, 0x70,
                /* 00A0 */  0x79, 0x72, 0x69, 0x67, 0x68, 0x74, 0x20, 0x32,
                /* 00A8 */  0x30, 0x30, 0x39, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 00B0 */  0x49, 0x41, 0x20, 0x43, 0x6F, 0x72, 0x70, 0x6F,
                /* 00B8 */  0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x41,
                /* 00C0 */  0x6C, 0x6C, 0x20, 0x52, 0x69, 0x67, 0x68, 0x74,
                /* 00C8 */  0x73, 0x20, 0x52, 0x65, 0x73, 0x65, 0x72, 0x76,
                /* 00D0 */  0x65, 0x64, 0x2D, 0x32, 0x37, 0x34, 0x35, 0x39,
                /* 00D8 */  0x31, 0x32, 0x35, 0x33, 0x36, 0x38, 0x37, 0x28,
                /* 00E0 */  0x52, 0x29                                     
            })
        }

        Device (WMI1)
        {
            Name (_HID, "PNP0C14")  // _HID: Hardware ID
            Name (_UID, "OPT1")  // _UID: Unique ID
            Name (_WDG, Buffer (0x14)
            {
                /* 0000 */  0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E,
                /* 0008 */  0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0,
                /* 0010 */  0x4D, 0x58, 0x01, 0x02                         
            })
            Method (WMMX, 3, NotSerialized)
            {
                CreateDWordField (Arg2, Zero, FUNC)
                If (LEqual (FUNC, 0x534F525F))
                {
                    If (LGreaterEqual (SizeOf (Arg2), 0x08))
                    {
                        CreateDWordField (Arg2, 0x04, ARGS)
                        CreateDWordField (Arg2, 0x08, XARG)
                        Return (\_SB.PCI0.RP01.PEGP._ROM (ARGS, XARG))
                    }
                }

                If (LEqual (FUNC, 0x4D53445F))
                {
                    If (LGreaterEqual (SizeOf (Arg2), 0x1C))
                    {
                        CreateField (Arg2, Zero, 0x80, MUID)
                        CreateDWordField (Arg2, 0x10, REVI)
                        CreateDWordField (Arg2, 0x14, SFNC)
                        CreateField (Arg2, 0xE0, 0x20, XRG0)
                        If (CondRefOf (\_SB.PCI0.GFX0._DSM))
                        {
                            Return (\_SB.PCI0.GFX0._DSM (MUID, REVI, SFNC, XRG0))
                        }
                    }
                }

                Return (Zero)
            }
        }
    }
}

