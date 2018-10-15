/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-7.aml, Mon Oct 15 11:59:09 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000829 (2089)
 *     Revision         0x02
 *     Checksum         0x94
 *     OEM ID           "SgRef"
 *     OEM Table ID     "SgPch"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "SgRef", "SgPch", 0x00001000)
{
    External (_SB_.GGOV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.RRAM, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.WRAM, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.RP01._ADR, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP01.PEGP.NHDA, UnknownObj)    // (from opcode)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (DLHR, UnknownObj)    // (from opcode)
    External (DLPW, UnknownObj)    // (from opcode)
    External (EECP, UnknownObj)    // (from opcode)
    External (GBAS, UnknownObj)    // (from opcode)
    External (HRA0, UnknownObj)    // (from opcode)
    External (HRE0, UnknownObj)    // (from opcode)
    External (HRG0, UnknownObj)    // (from opcode)
    External (LTRE, UnknownObj)    // (from opcode)
    External (PWA0, UnknownObj)    // (from opcode)
    External (PWE0, UnknownObj)    // (from opcode)
    External (PWG0, UnknownObj)    // (from opcode)
    External (RPA1, UnknownObj)    // (from opcode)
    External (RPA5, UnknownObj)    // (from opcode)
    External (RPA9, UnknownObj)    // (from opcode)
    External (SGGP, UnknownObj)    // (from opcode)
    External (SGMD, UnknownObj)    // (from opcode)
    External (XBAS, UnknownObj)    // (from opcode)

    Scope (\_SB.PCI0)
    {
        Name (IVID, 0xFFFF)
        Name (ELCT, Zero)
        Name (HVID, Zero)
        Name (HDID, Zero)
        Name (TCNT, Zero)
        Name (LDLY, 0x64)
        Name (RPIX, Zero)
        Name (LTRE, Zero)
        OperationRegion (RPC9, SystemMemory, Add (Add (\XBAS, ShiftLeft (ShiftRight (And (\_SB.PCI0.RP01._ADR (), 0x00FF0000), 0x10), 0x0F)), ShiftLeft (And (\RPA1, 0x0F), 0x0C)), 0x1000)
        Field (RPC9, DWordAcc, NoLock, Preserve)
        {
            PVI9,   16, 
            PDI9,   16, 
            Offset (0x18), 
            PRB9,   8, 
            SCB9,   8, 
            Offset (0x4A), 
            CED9,   1, 
            Offset (0x50), 
            ASP9,   2, 
                ,   2, 
            LKD9,   1, 
            Offset (0x69), 
                ,   2, 
            LRE9,   1, 
            Offset (0x328), 
                ,   19, 
            LKS9,   4
        }

        OperationRegion (RTP9, SystemMemory, Add (\XBAS, ShiftLeft (SCB9, 0x14)), 0xF0)
        Field (RTP9, AnyAcc, Lock, Preserve)
        {
            DVI9,   16, 
            Offset (0x0B), 
            CBC9,   8, 
            Offset (0x2C), 
            SVI9,   16, 
            SDI9,   16
        }

        OperationRegion (PCA9, SystemMemory, Add (Add (\XBAS, ShiftLeft (SCB9, 0x14)), \EECP), 0x14)
        Field (PCA9, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCT9,   16
        }

        OperationRegion (PCB9, SystemMemory, Add (Add (Add (\XBAS, ShiftLeft (SCB9, 0x14)), 0x1000), \EECP), 0x14)
        Field (PCB9, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCTX,   16
        }

        OperationRegion (RPC1, SystemMemory, Add (Add (\XBAS, ShiftLeft (ShiftRight (And (\_SB.PCI0.RP01._ADR (), 0x00FF0000), 0x10), 0x0F)), ShiftLeft (And (\RPA1, 0x0F), 0x0C)), 0x1000)
        Field (RPC1, DWordAcc, NoLock, Preserve)
        {
            PVI1,   16, 
            PDI1,   16, 
            Offset (0x18), 
            PRB1,   8, 
            SCB1,   8, 
            Offset (0x4A), 
            CED1,   1, 
            Offset (0x50), 
            ASP1,   2, 
                ,   2, 
            LKD1,   1, 
            Offset (0x69), 
                ,   2, 
            LRE1,   1, 
            Offset (0x328), 
                ,   19, 
            LKS1,   4
        }

        OperationRegion (RTP1, SystemMemory, Add (\XBAS, ShiftLeft (SCB1, 0x14)), 0xF0)
        Field (RTP1, AnyAcc, Lock, Preserve)
        {
            DVI1,   16, 
            Offset (0x0B), 
            CBC1,   8, 
            Offset (0x2C), 
            SVI1,   16, 
            SDI1,   16
        }

        OperationRegion (PCA1, SystemMemory, Add (Add (\XBAS, ShiftLeft (SCB1, 0x14)), \EECP), 0x14)
        Field (PCA1, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCT1,   16
        }

        OperationRegion (PCB1, SystemMemory, Add (Add (Add (\XBAS, ShiftLeft (SCB1, 0x14)), 0x1000), \EECP), 0x14)
        Field (PCB1, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCTY,   16
        }

        Method (HGON, 1, Serialized)
        {
            If (LNotEqual (SGGP, One))
            {
                Return (Zero)
            }

            Store (Arg0, RPIX)
            If (LEqual (CCHK (One, RPIX), Zero))
            {
                Return (Zero)
            }

            SGPO (HRE0, HRG0, HRA0, One)
            SGPO (PWE0, PWG0, PWA0, One)
            Sleep (DLPW)
            SGPO (HRE0, HRG0, HRA0, Zero)
            Sleep (DLHR)
            If (LEqual (RPIX, One))
            {
                Store (Zero, LKD1)
            }
            ElseIf (LEqual (RPIX, 0x09))
            {
                Store (Zero, LKD9)
            }

            If (LEqual (RPIX, One))
            {
                While (LLess (LKS1, 0x07))
                {
                    Sleep (One)
                }
            }
            ElseIf (LEqual (RPIX, 0x09))
            {
                While (LLess (LKS9, 0x07))
                {
                    Sleep (One)
                }
            }

            If (LEqual (RPIX, One))
            {
                Store (HVID, SVI1)
                Store (HDID, SDI1)
                Or (And (ELCT, 0x43), And (LCT1, 0xFFBC), LCT1)
                Or (And (ELCT, 0x43), And (LCTY, 0xFFBC), LCTY)
                Store (LTRE, LRE1)
                Store (One, CED1)
            }
            ElseIf (LEqual (RPIX, 0x09))
            {
                Store (HVID, SVI9)
                Store (HDID, SDI9)
                Or (And (ELCT, 0x43), And (LCT9, 0xFFBC), LCT9)
                Or (And (ELCT, 0x43), And (LCTX, 0xFFBC), LCTX)
                Store (LTRE, LRE9)
                Store (One, CED9)
            }

            \_SB.PCI0.LPCB.EC0.WRAM (0x052B, 0x9E)
            \_SB.PCI0.LPCB.EC0.WRAM (0x0520, 0x8B)
            Store (\_SB.PCI0.LPCB.EC0.RRAM (0x0521), Local0)
            And (Local0, 0xCF, Local0)
            Or (Local0, 0x20, Local0)
            \_SB.PCI0.LPCB.EC0.WRAM (0x0521, Local0)
            If (CondRefOf (\_SB.PCI0.RP01.PEGP.NHDA))
            {
                Store (Zero, \_SB.PCI0.RP01.PEGP.NHDA)
            }

            Return (Zero)
        }

        Method (HGOF, 1, Serialized)
        {
            If (LNotEqual (SGGP, One))
            {
                Return (Zero)
            }

            Store (Arg0, RPIX)
            If (LEqual (CCHK (Zero, RPIX), Zero))
            {
                Return (Zero)
            }

            Store (\_SB.PCI0.LPCB.EC0.RRAM (0x0521), Local0)
            And (Local0, 0xCF, Local0)
            \_SB.PCI0.LPCB.EC0.WRAM (0x0521, Local0)
            \_SB.PCI0.LPCB.EC0.WRAM (0x0520, 0x89)
            \_SB.PCI0.LPCB.EC0.WRAM (0x03A4, Zero)
            \_SB.PCI0.LPCB.EC0.WRAM (0x03A5, Zero)
            If (LEqual (RPIX, One))
            {
                Store (LCT1, ELCT)
                Store (SVI1, HVID)
                Store (SDI1, HDID)
                Store (LRE1, LTRE)
                Store (One, LKD1)
            }
            ElseIf (LEqual (RPIX, 0x09))
            {
                Store (LCT9, ELCT)
                Store (SVI9, HVID)
                Store (SDI9, HDID)
                Store (LRE9, LTRE)
                Store (One, LKD9)
            }

            If (LEqual (RPIX, One))
            {
                While (LNotEqual (LKS1, Zero))
                {
                    Sleep (One)
                }
            }
            ElseIf (LEqual (RPIX, 0x09))
            {
                While (LNotEqual (LKS9, Zero))
                {
                    Sleep (One)
                }
            }

            SGPO (HRE0, HRG0, HRA0, One)
            SGPO (PWE0, PWG0, PWA0, Zero)
            Return (Zero)
        }

        Method (SGPO, 4, Serialized)
        {
            If (LEqual (Arg2, Zero))
            {
                Not (Arg3, Arg3)
                And (Arg3, One, Arg3)
            }

            If (LEqual (SGGP, One))
            {
                If (CondRefOf (\_SB.SGOV))
                {
                    \_SB.SGOV (Arg1, Arg3)
                }
            }
        }

        Method (SGPI, 4, Serialized)
        {
            If (LEqual (Arg0, One))
            {
                If (CondRefOf (\_SB.GGOV))
                {
                    Store (\_SB.GGOV (Arg2), Local0)
                }
            }

            If (LEqual (Arg3, Zero))
            {
                Not (Local0, Local0)
            }

            And (Local0, One, Local0)
            Return (Local0)
        }

        Method (CCHK, 2, NotSerialized)
        {
            If (LEqual (Arg1, One))
            {
                If (LEqual (PVI1, IVID))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg1, 0x09))
            {
                If (LEqual (PVI9, IVID))
                {
                    Return (Zero)
                }
            }

            If (LEqual (Arg0, Zero))
            {
                If (LEqual (SGPI (SGGP, PWE0, PWG0, PWA0), Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (SGPI (SGGP, PWE0, PWG0, PWA0), One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }
    }
}

