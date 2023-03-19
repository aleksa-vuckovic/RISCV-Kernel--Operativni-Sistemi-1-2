.extern _ZN7_Thread7runningE
.extern _ZN10_Scheduler3getEv
.extern _ZN7_Thread7wrapperEPFvPvES0_
.extern _Z11thread_exitPv
.extern _ZN7_Thread4exitEPv

.global _ZN7_Thread15thread_dispatchEv
.global _ZN7_Thread7starterEv
.global _ZN7_Thread8sstarterEv

_ZN7_Thread15thread_dispatchEv:
addi sp, sp, -272
sd x1, 264(sp)
sd x2, 256(sp)
sd x3, 248(sp)
sd x4, 240(sp)
sd x5, 232(sp)
sd x6, 224(sp)
sd x7, 216(sp)
sd x8, 208(sp)
sd x9, 200(sp)
sd x10, 192(sp)
sd x11, 184(sp)
sd x12, 176(sp)
sd x13, 168(sp)
sd x14, 160(sp)
sd x15, 152(sp)
sd x16, 144(sp)
sd x17, 136(sp)
sd x18, 128(sp)
sd x19, 120(sp)
sd x20, 112(sp)
sd x21, 104(sp)
sd x22, 96(sp)
sd x23, 88(sp)
sd x24, 80(sp)
sd x25, 72(sp)
sd x26, 64(sp)
sd x27, 56(sp)
sd x28, 48(sp)
sd x29, 40(sp)
sd x30, 32(sp)
sd x31, 24(sp)
csrr s0, sstatus
sd s0, 16(sp)
csrr s0, sepc
sd s0, 8(sp)
csrr s0, scause
sd s0, 0(sp)
la s0, _ZN7_Thread7runningE #ucitam u s0 adresu _running promenljive
ld s0, 0(s0) #zatim procitam pokazivac sa te adrese i smestim isto u s0
sd sp, 8(s0) #cuvam sp (ssp)
call yield
la s0, _ZN7_Thread7runningE
ld s0, 0(s0)
ld sp, 8(s0)
ld s0, 16(sp)
csrw sstatus, s0
ld s0, 8(sp)
csrw sepc, s0
ld s0, 0(sp)
csrw scause, s0
ld x1, 264(sp)
ld x2, 256(sp)
ld x3, 248(sp)
ld x4, 240(sp)
ld x5, 232(sp)
ld x6, 224(sp)
ld x7, 216(sp)
ld x8, 208(sp)
ld x9, 200(sp)
ld x10, 192(sp)
ld x11, 184(sp)
ld x12, 176(sp)
ld x13, 168(sp)
ld x14, 160(sp)
ld x15, 152(sp)
ld x16, 144(sp)
ld x17, 136(sp)
ld x18, 128(sp)
ld x19, 120(sp)
ld x20, 112(sp)
ld x21, 104(sp)
ld x22, 96(sp)
ld x23, 88(sp)
ld x24, 80(sp)
ld x25, 72(sp)
ld x26, 64(sp)
ld x27, 56(sp)
ld x28, 48(sp)
ld x29, 40(sp)
ld x30, 32(sp)
ld x31, 24(sp)
addi sp, sp, 272
ret

yield:
sd ra, 32(s0) #cuvam pc koji pokazuje na nastavak thread_dispatch funkcije
call _ZN10_Scheduler3getEv
la s0, _ZN7_Thread7runningE #ucitam u s0 adresu running promenljive
ld s0, 0(s0) #zatim procitam pokazivac sa te adrese i smestim isto u s0
ld ra, 32(s0) #u ra upisuje pc iz pcb-a
ret

_ZN7_Thread7starterEv:
li t0, 0x100
csrc sstatus, t0 #resetujem ssp
la t0, _ZN7_Thread7runningE
ld t0, 0(t0)
ld sp, 8(t0)
ld t1, -8(sp) #f
csrw sepc, t1
ld a0, -16(sp)
la ra, _Z11thread_exitPv
ld sp, 0(t0)
sret

_ZN7_Thread8sstarterEv:
li t0, 0x20
csrs sstatus, t0 #kad skocim na f-ju BICE dozvoljeni prekidi
#promena koju sam napravio kako bi se mogle praviti sistemske niti koje ce moci da pozivaju preko CAPI usluge, zbog OS2
li t0, 0x100
csrs sstatus, t0 #da bih se vratio opet u sistemski rezim
la t0, _ZN7_Thread7runningE
ld t0, 0(t0)
ld sp, 8(t0)
ld t1, -8(sp) #f
csrw sepc, t1
ld a0, -16(sp)
la ra, _ZN7_Thread4exitEPv
sret