.extern _Z7_handlemmmmmmmm
.extern _ZN7_Thread7runningE

.global trap

trap:
csrw sscratch, t0 #koristicu t0, pa ga pamtim u sscratch
csrr t0, sstatus #citam sstatus da bih proverio ssp bit
#ako SSP 0 to znaci da sam prekinuo glavni proces, ako je 1 to znaci da sam prekinuo obradu softverskog prekida
andi t0, t0, 0x100
bne t0, zero, else
#promena steka, jer smo presli iz korisnickog u privilegovani rezim
la t0, _ZN7_Thread7runningE #ucitam u t0 adresu _running promenljive
ld t0, 0(t0) #zatim procitam pokazivac sa te adrese i smestim isto u t0
sd sp, 0(t0) #cuvam sp u pcb
ld sp, 8(t0) #ucitavam ssp iz pcb-a

else:
csrr t0, sscratch
addi sp, sp, -176 #stavljam sve registre na stek (osim zero i sp)
sd t0, 152(sp)
sd t1, 144(sp)
sd t2, 136(sp)
sd t3, 128(sp)
sd t4, 120(sp)
sd t5, 112(sp)
sd t6, 104(sp)
sd a1, 96(sp)
sd a2, 88(sp)
sd a3, 80(sp)
sd a4, 72(sp)
sd a5, 64(sp)
sd a6, 56(sp)
sd a7, 48(sp)
sd tp, 40(sp)
sd gp, 32(sp)
sd ra, 24(sp)
sd a0, 16(sp)
csrr t0, scause
sd t0, 8(sp)
csrr t1, sepc
#ako je ecall ili ecall2 onda moram da povecam sepc za 4
xori t2, t0, 0x08
beq t2, zero, incsepc
xori t2, t0, 0x09
bne t2, zero, else5
incsepc:
addi t1, t1, 0x04
else5:
sd t1, 0(sp)
#
csrr t0, sstatus
sd t0, 160(sp)
#

#sto se tice s0-11 registara, njihovu vrednost ce cuvati prevodilac unutar funckije handle i drugih funkcija

#cuvam scause i sepc, zato sto moze da dodje do ugnezdjenog prekida

call _Z7_handlemmmmmmmm

#
ld t0, 160(sp)
csrw sstatus, t0
#
ld t0, 0(sp)
csrw sepc, t0
ld t0, 8(sp)
csrw scause, t0
#ako je ecall ili ecall2 onda ne menjam a0 jer se tu prenosi povratna vrednost
xori t1, t0, 0x08
beq t1, zero, else2
xori t1, t0, 0x09
beq t1, zero, else2
ld a0, 16(sp)
else2:
ld t0, 152(sp)
ld t1, 144(sp)
ld t2, 136(sp)
ld t3, 128(sp)
ld t4, 120(sp)
ld t5, 112(sp)
ld t6, 104(sp)
ld a1, 96(sp)
ld a2, 88(sp)
ld a3, 80(sp)
ld a4, 72(sp)
ld a5, 64(sp)
ld a6, 56(sp)
ld a7, 48(sp)
ld tp, 40(sp)
ld gp, 32(sp)
ld ra, 24(sp)
addi sp, sp, 176

csrw sscratch, t0
csrr t0, sstatus
andi t0, t0, 0x100
bne t0, zero, else3
#promena steka
la t0, _ZN7_Thread7runningE #ucitam u t0 adresu _running promenljive
ld t0, 0(t0) #zatim procitam pokazivac sa te adrese i smestim isto u t0
sd sp, 8(t0)
ld sp, 0(t0)

else3:
csrr t0, sscratch
sret