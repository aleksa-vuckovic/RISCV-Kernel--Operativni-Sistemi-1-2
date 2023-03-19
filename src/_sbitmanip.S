.global _ZN5_SBIT9SIEenableEv
.global _ZN5_SBIT10SIEdisableEv
.global _ZN5_SBIT11SPIEdisableEv
.global _ZN5_SBIT10SPIEenableEv
.global _ZN5_SBIT10SEIEenableEv
.global _ZN5_SBIT11SEIEdisableEv
.global _ZN5_SBIT8SSPclearEv
.global _ZN5_SBIT9SIP1clearEv
.global _ZN5_SBIT9SIP9clearEv
.global _ZN5_SBIT10SSIEenableEv
.global _ZN5_SBIT11SSIEdisableEv
.global _ZN5_SBIT7SIP9setEv
.global _ZN5_SBIT7SIP1setEv
.global _ZN5_SBIT6SUMsetEv
.global _ZN5_SBIT7SATPsetEm


_ZN5_SBIT9SIEenableEv:
csrs sstatus, 0x2
ret

_ZN5_SBIT10SIEdisableEv:
csrc sstatus, 0x2
ret

_ZN5_SBIT11SPIEdisableEv:
csrw sscratch, t0
li t0, 0x20
csrc sstatus, t0
csrr t0, sscratch
ret

_ZN5_SBIT10SPIEenableEv:
csrw sscratch, t0
li t0, 0x20
csrs sstatus, t0
csrr t0, sscratch
ret

_ZN5_SBIT10SEIEenableEv:
csrw sscratch, t0
li t0, 0x200
csrs sie, t0
csrr t0, sscratch
ret

_ZN5_SBIT11SEIEdisableEv:
csrw sscratch, t0
li t0, 0x200
csrc sie, t0
csrr t0, sscratch
ret

_ZN5_SBIT10SSIEenableEv:
csrs sie, 0x2
ret

_ZN5_SBIT11SSIEdisableEv:
csrc sie, 0x2
ret

_ZN5_SBIT8SSPclearEv:
csrw sscratch, t0
li t0, 0x100
csrc sstatus, t0
csrr t0, sscratch
ret

_ZN5_SBIT9SIP1clearEv:
csrc sip, 0x2
ret

_ZN5_SBIT7SIP1setEv:
csrs sip, 0x2
ret

_ZN5_SBIT9SIP9clearEv:
csrw sscratch, t0
li t0, 0x200
csrc sip, t0
csrr t0, sscratch
ret

_ZN5_SBIT7SIP9setEv:
csrw sscratch, t0
li t0, 0x200
csrs sip, t0
csrr t0, sscratch
ret

_ZN5_SBIT6SUMsetEv:
csrw sscratch, t0
li t0, 0x40000
csrs sstatus, t0
csrr t0, sscratch
ret

_ZN5_SBIT7SATPsetEm:
csrs satp, a0
ret