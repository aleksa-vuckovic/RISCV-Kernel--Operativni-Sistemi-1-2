
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00011117          	auipc	sp,0x11
    80000004:	05013103          	ld	sp,80(sp) # 80011050 <_GLOBAL_OFFSET_TABLE_+0x50>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	138080ef          	jal	ra,80008154 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5_SBIT9SIEenableEv>:
.global _ZN5_SBIT6SUMsetEv
.global _ZN5_SBIT7SATPsetEm


_ZN5_SBIT9SIEenableEv:
csrs sstatus, 0x2
    80001000:	10016073          	csrsi	sstatus,2
ret
    80001004:	00008067          	ret

0000000080001008 <_ZN5_SBIT10SIEdisableEv>:

_ZN5_SBIT10SIEdisableEv:
csrc sstatus, 0x2
    80001008:	10017073          	csrci	sstatus,2
ret
    8000100c:	00008067          	ret

0000000080001010 <_ZN5_SBIT11SPIEdisableEv>:

_ZN5_SBIT11SPIEdisableEv:
csrw sscratch, t0
    80001010:	14029073          	csrw	sscratch,t0
li t0, 0x20
    80001014:	02000293          	li	t0,32
csrc sstatus, t0
    80001018:	1002b073          	csrc	sstatus,t0
csrr t0, sscratch
    8000101c:	140022f3          	csrr	t0,sscratch
ret
    80001020:	00008067          	ret

0000000080001024 <_ZN5_SBIT10SPIEenableEv>:

_ZN5_SBIT10SPIEenableEv:
csrw sscratch, t0
    80001024:	14029073          	csrw	sscratch,t0
li t0, 0x20
    80001028:	02000293          	li	t0,32
csrs sstatus, t0
    8000102c:	1002a073          	csrs	sstatus,t0
csrr t0, sscratch
    80001030:	140022f3          	csrr	t0,sscratch
ret
    80001034:	00008067          	ret

0000000080001038 <_ZN5_SBIT10SEIEenableEv>:

_ZN5_SBIT10SEIEenableEv:
csrw sscratch, t0
    80001038:	14029073          	csrw	sscratch,t0
li t0, 0x200
    8000103c:	20000293          	li	t0,512
csrs sie, t0
    80001040:	1042a073          	csrs	sie,t0
csrr t0, sscratch
    80001044:	140022f3          	csrr	t0,sscratch
ret
    80001048:	00008067          	ret

000000008000104c <_ZN5_SBIT11SEIEdisableEv>:

_ZN5_SBIT11SEIEdisableEv:
csrw sscratch, t0
    8000104c:	14029073          	csrw	sscratch,t0
li t0, 0x200
    80001050:	20000293          	li	t0,512
csrc sie, t0
    80001054:	1042b073          	csrc	sie,t0
csrr t0, sscratch
    80001058:	140022f3          	csrr	t0,sscratch
ret
    8000105c:	00008067          	ret

0000000080001060 <_ZN5_SBIT10SSIEenableEv>:

_ZN5_SBIT10SSIEenableEv:
csrs sie, 0x2
    80001060:	10416073          	csrsi	sie,2
ret
    80001064:	00008067          	ret

0000000080001068 <_ZN5_SBIT11SSIEdisableEv>:

_ZN5_SBIT11SSIEdisableEv:
csrc sie, 0x2
    80001068:	10417073          	csrci	sie,2
ret
    8000106c:	00008067          	ret

0000000080001070 <_ZN5_SBIT8SSPclearEv>:

_ZN5_SBIT8SSPclearEv:
csrw sscratch, t0
    80001070:	14029073          	csrw	sscratch,t0
li t0, 0x100
    80001074:	10000293          	li	t0,256
csrc sstatus, t0
    80001078:	1002b073          	csrc	sstatus,t0
csrr t0, sscratch
    8000107c:	140022f3          	csrr	t0,sscratch
ret
    80001080:	00008067          	ret

0000000080001084 <_ZN5_SBIT9SIP1clearEv>:

_ZN5_SBIT9SIP1clearEv:
csrc sip, 0x2
    80001084:	14417073          	csrci	sip,2
ret
    80001088:	00008067          	ret

000000008000108c <_ZN5_SBIT7SIP1setEv>:

_ZN5_SBIT7SIP1setEv:
csrs sip, 0x2
    8000108c:	14416073          	csrsi	sip,2
ret
    80001090:	00008067          	ret

0000000080001094 <_ZN5_SBIT9SIP9clearEv>:

_ZN5_SBIT9SIP9clearEv:
csrw sscratch, t0
    80001094:	14029073          	csrw	sscratch,t0
li t0, 0x200
    80001098:	20000293          	li	t0,512
csrc sip, t0
    8000109c:	1442b073          	csrc	sip,t0
csrr t0, sscratch
    800010a0:	140022f3          	csrr	t0,sscratch
ret
    800010a4:	00008067          	ret

00000000800010a8 <_ZN5_SBIT7SIP9setEv>:

_ZN5_SBIT7SIP9setEv:
csrw sscratch, t0
    800010a8:	14029073          	csrw	sscratch,t0
li t0, 0x200
    800010ac:	20000293          	li	t0,512
csrs sip, t0
    800010b0:	1442a073          	csrs	sip,t0
csrr t0, sscratch
    800010b4:	140022f3          	csrr	t0,sscratch
ret
    800010b8:	00008067          	ret

00000000800010bc <_ZN5_SBIT6SUMsetEv>:

_ZN5_SBIT6SUMsetEv:
csrw sscratch, t0
    800010bc:	14029073          	csrw	sscratch,t0
li t0, 0x40000
    800010c0:	000402b7          	lui	t0,0x40
csrs sstatus, t0
    800010c4:	1002a073          	csrs	sstatus,t0
csrr t0, sscratch
    800010c8:	140022f3          	csrr	t0,sscratch
ret
    800010cc:	00008067          	ret

00000000800010d0 <_ZN5_SBIT7SATPsetEm>:

_ZN5_SBIT7SATPsetEm:
csrs satp, a0
    800010d0:	18052073          	csrs	satp,a0
    800010d4:	00008067          	ret

00000000800010d8 <_ZN7_Thread15thread_dispatchEv>:
.global _ZN7_Thread15thread_dispatchEv
.global _ZN7_Thread7starterEv
.global _ZN7_Thread8sstarterEv

_ZN7_Thread15thread_dispatchEv:
addi sp, sp, -272
    800010d8:	ef010113          	addi	sp,sp,-272
sd x1, 264(sp)
    800010dc:	10113423          	sd	ra,264(sp)
sd x2, 256(sp)
    800010e0:	10213023          	sd	sp,256(sp)
sd x3, 248(sp)
    800010e4:	0e313c23          	sd	gp,248(sp)
sd x4, 240(sp)
    800010e8:	0e413823          	sd	tp,240(sp)
sd x5, 232(sp)
    800010ec:	0e513423          	sd	t0,232(sp)
sd x6, 224(sp)
    800010f0:	0e613023          	sd	t1,224(sp)
sd x7, 216(sp)
    800010f4:	0c713c23          	sd	t2,216(sp)
sd x8, 208(sp)
    800010f8:	0c813823          	sd	s0,208(sp)
sd x9, 200(sp)
    800010fc:	0c913423          	sd	s1,200(sp)
sd x10, 192(sp)
    80001100:	0ca13023          	sd	a0,192(sp)
sd x11, 184(sp)
    80001104:	0ab13c23          	sd	a1,184(sp)
sd x12, 176(sp)
    80001108:	0ac13823          	sd	a2,176(sp)
sd x13, 168(sp)
    8000110c:	0ad13423          	sd	a3,168(sp)
sd x14, 160(sp)
    80001110:	0ae13023          	sd	a4,160(sp)
sd x15, 152(sp)
    80001114:	08f13c23          	sd	a5,152(sp)
sd x16, 144(sp)
    80001118:	09013823          	sd	a6,144(sp)
sd x17, 136(sp)
    8000111c:	09113423          	sd	a7,136(sp)
sd x18, 128(sp)
    80001120:	09213023          	sd	s2,128(sp)
sd x19, 120(sp)
    80001124:	07313c23          	sd	s3,120(sp)
sd x20, 112(sp)
    80001128:	07413823          	sd	s4,112(sp)
sd x21, 104(sp)
    8000112c:	07513423          	sd	s5,104(sp)
sd x22, 96(sp)
    80001130:	07613023          	sd	s6,96(sp)
sd x23, 88(sp)
    80001134:	05713c23          	sd	s7,88(sp)
sd x24, 80(sp)
    80001138:	05813823          	sd	s8,80(sp)
sd x25, 72(sp)
    8000113c:	05913423          	sd	s9,72(sp)
sd x26, 64(sp)
    80001140:	05a13023          	sd	s10,64(sp)
sd x27, 56(sp)
    80001144:	03b13c23          	sd	s11,56(sp)
sd x28, 48(sp)
    80001148:	03c13823          	sd	t3,48(sp)
sd x29, 40(sp)
    8000114c:	03d13423          	sd	t4,40(sp)
sd x30, 32(sp)
    80001150:	03e13023          	sd	t5,32(sp)
sd x31, 24(sp)
    80001154:	01f13c23          	sd	t6,24(sp)
csrr s0, sstatus
    80001158:	10002473          	csrr	s0,sstatus
sd s0, 16(sp)
    8000115c:	00813823          	sd	s0,16(sp)
csrr s0, sepc
    80001160:	14102473          	csrr	s0,sepc
sd s0, 8(sp)
    80001164:	00813423          	sd	s0,8(sp)
csrr s0, scause
    80001168:	14202473          	csrr	s0,scause
sd s0, 0(sp)
    8000116c:	00813023          	sd	s0,0(sp)
la s0, _ZN7_Thread7runningE #ucitam u s0 adresu _running promenljive
    80001170:	0000f417          	auipc	s0,0xf
    80001174:	8f040413          	addi	s0,s0,-1808 # 8000fa60 <_ZN7_Thread7runningE>
ld s0, 0(s0) #zatim procitam pokazivac sa te adrese i smestim isto u s0
    80001178:	00043403          	ld	s0,0(s0)
sd sp, 8(s0) #cuvam sp (ssp)
    8000117c:	00243423          	sd	sp,8(s0)
call yield
    80001180:	0b0000ef          	jal	ra,80001230 <yield>
la s0, _ZN7_Thread7runningE
    80001184:	0000f417          	auipc	s0,0xf
    80001188:	8dc40413          	addi	s0,s0,-1828 # 8000fa60 <_ZN7_Thread7runningE>
ld s0, 0(s0)
    8000118c:	00043403          	ld	s0,0(s0)
ld sp, 8(s0)
    80001190:	00843103          	ld	sp,8(s0)
ld s0, 16(sp)
    80001194:	01013403          	ld	s0,16(sp)
csrw sstatus, s0
    80001198:	10041073          	csrw	sstatus,s0
ld s0, 8(sp)
    8000119c:	00813403          	ld	s0,8(sp)
csrw sepc, s0
    800011a0:	14141073          	csrw	sepc,s0
ld s0, 0(sp)
    800011a4:	00013403          	ld	s0,0(sp)
csrw scause, s0
    800011a8:	14241073          	csrw	scause,s0
ld x1, 264(sp)
    800011ac:	10813083          	ld	ra,264(sp)
ld x2, 256(sp)
    800011b0:	10013103          	ld	sp,256(sp)
ld x3, 248(sp)
    800011b4:	0f813183          	ld	gp,248(sp)
ld x4, 240(sp)
    800011b8:	0f013203          	ld	tp,240(sp)
ld x5, 232(sp)
    800011bc:	0e813283          	ld	t0,232(sp)
ld x6, 224(sp)
    800011c0:	0e013303          	ld	t1,224(sp)
ld x7, 216(sp)
    800011c4:	0d813383          	ld	t2,216(sp)
ld x8, 208(sp)
    800011c8:	0d013403          	ld	s0,208(sp)
ld x9, 200(sp)
    800011cc:	0c813483          	ld	s1,200(sp)
ld x10, 192(sp)
    800011d0:	0c013503          	ld	a0,192(sp)
ld x11, 184(sp)
    800011d4:	0b813583          	ld	a1,184(sp)
ld x12, 176(sp)
    800011d8:	0b013603          	ld	a2,176(sp)
ld x13, 168(sp)
    800011dc:	0a813683          	ld	a3,168(sp)
ld x14, 160(sp)
    800011e0:	0a013703          	ld	a4,160(sp)
ld x15, 152(sp)
    800011e4:	09813783          	ld	a5,152(sp)
ld x16, 144(sp)
    800011e8:	09013803          	ld	a6,144(sp)
ld x17, 136(sp)
    800011ec:	08813883          	ld	a7,136(sp)
ld x18, 128(sp)
    800011f0:	08013903          	ld	s2,128(sp)
ld x19, 120(sp)
    800011f4:	07813983          	ld	s3,120(sp)
ld x20, 112(sp)
    800011f8:	07013a03          	ld	s4,112(sp)
ld x21, 104(sp)
    800011fc:	06813a83          	ld	s5,104(sp)
ld x22, 96(sp)
    80001200:	06013b03          	ld	s6,96(sp)
ld x23, 88(sp)
    80001204:	05813b83          	ld	s7,88(sp)
ld x24, 80(sp)
    80001208:	05013c03          	ld	s8,80(sp)
ld x25, 72(sp)
    8000120c:	04813c83          	ld	s9,72(sp)
ld x26, 64(sp)
    80001210:	04013d03          	ld	s10,64(sp)
ld x27, 56(sp)
    80001214:	03813d83          	ld	s11,56(sp)
ld x28, 48(sp)
    80001218:	03013e03          	ld	t3,48(sp)
ld x29, 40(sp)
    8000121c:	02813e83          	ld	t4,40(sp)
ld x30, 32(sp)
    80001220:	02013f03          	ld	t5,32(sp)
ld x31, 24(sp)
    80001224:	01813f83          	ld	t6,24(sp)
addi sp, sp, 272
    80001228:	11010113          	addi	sp,sp,272
ret
    8000122c:	00008067          	ret

0000000080001230 <yield>:

yield:
sd ra, 32(s0) #cuvam pc koji pokazuje na nastavak thread_dispatch funkcije
    80001230:	02143023          	sd	ra,32(s0)
call _ZN10_Scheduler3getEv
    80001234:	46c000ef          	jal	ra,800016a0 <_ZN10_Scheduler3getEv>
la s0, _ZN7_Thread7runningE #ucitam u s0 adresu running promenljive
    80001238:	0000f417          	auipc	s0,0xf
    8000123c:	82840413          	addi	s0,s0,-2008 # 8000fa60 <_ZN7_Thread7runningE>
ld s0, 0(s0) #zatim procitam pokazivac sa te adrese i smestim isto u s0
    80001240:	00043403          	ld	s0,0(s0)
ld ra, 32(s0) #u ra upisuje pc iz pcb-a
    80001244:	02043083          	ld	ra,32(s0)
ret
    80001248:	00008067          	ret

000000008000124c <_ZN7_Thread7starterEv>:

_ZN7_Thread7starterEv:
li t0, 0x100
    8000124c:	10000293          	li	t0,256
csrc sstatus, t0 #resetujem ssp
    80001250:	1002b073          	csrc	sstatus,t0
la t0, _ZN7_Thread7runningE
    80001254:	0000f297          	auipc	t0,0xf
    80001258:	80c28293          	addi	t0,t0,-2036 # 8000fa60 <_ZN7_Thread7runningE>
ld t0, 0(t0)
    8000125c:	0002b283          	ld	t0,0(t0)
ld sp, 8(t0)
    80001260:	0082b103          	ld	sp,8(t0)
ld t1, -8(sp) #f
    80001264:	ff813303          	ld	t1,-8(sp)
csrw sepc, t1
    80001268:	14131073          	csrw	sepc,t1
ld a0, -16(sp)
    8000126c:	ff013503          	ld	a0,-16(sp)
la ra, _Z11thread_exitPv
    80001270:	00010097          	auipc	ra,0x10
    80001274:	0b408093          	addi	ra,ra,180 # 80011324 <_Z11thread_exitPv>
ld sp, 0(t0)
    80001278:	0002b103          	ld	sp,0(t0)
sret
    8000127c:	10200073          	sret

0000000080001280 <_ZN7_Thread8sstarterEv>:

_ZN7_Thread8sstarterEv:
li t0, 0x20
    80001280:	02000293          	li	t0,32
csrs sstatus, t0 #kad skocim na f-ju BICE dozvoljeni prekidi
    80001284:	1002a073          	csrs	sstatus,t0
#promena koju sam napravio kako bi se mogle praviti sistemske niti koje ce moci da pozivaju preko CAPI usluge, zbog OS2
li t0, 0x100
    80001288:	10000293          	li	t0,256
csrs sstatus, t0 #da bih se vratio opet u sistemski rezim
    8000128c:	1002a073          	csrs	sstatus,t0
la t0, _ZN7_Thread7runningE
    80001290:	0000e297          	auipc	t0,0xe
    80001294:	7d028293          	addi	t0,t0,2000 # 8000fa60 <_ZN7_Thread7runningE>
ld t0, 0(t0)
    80001298:	0002b283          	ld	t0,0(t0)
ld sp, 8(t0)
    8000129c:	0082b103          	ld	sp,8(t0)
ld t1, -8(sp) #f
    800012a0:	ff813303          	ld	t1,-8(sp)
csrw sepc, t1
    800012a4:	14131073          	csrw	sepc,t1
ld a0, -16(sp)
    800012a8:	ff013503          	ld	a0,-16(sp)
la ra, _ZN7_Thread4exitEPv
    800012ac:	00004097          	auipc	ra,0x4
    800012b0:	9ac08093          	addi	ra,ra,-1620 # 80004c58 <_ZN7_Thread4exitEPv>
    800012b4:	10200073          	sret

00000000800012b8 <trap>:
.extern _ZN7_Thread7runningE

.global trap

trap:
csrw sscratch, t0 #koristicu t0, pa ga pamtim u sscratch
    800012b8:	14029073          	csrw	sscratch,t0
csrr t0, sstatus #citam sstatus da bih proverio ssp bit
    800012bc:	100022f3          	csrr	t0,sstatus
#ako SSP 0 to znaci da sam prekinuo glavni proces, ako je 1 to znaci da sam prekinuo obradu softverskog prekida
andi t0, t0, 0x100
    800012c0:	1002f293          	andi	t0,t0,256
bne t0, zero, else
    800012c4:	00029c63          	bnez	t0,800012dc <else>
#promena steka, jer smo presli iz korisnickog u privilegovani rezim
la t0, _ZN7_Thread7runningE #ucitam u t0 adresu _running promenljive
    800012c8:	0000e297          	auipc	t0,0xe
    800012cc:	79828293          	addi	t0,t0,1944 # 8000fa60 <_ZN7_Thread7runningE>
ld t0, 0(t0) #zatim procitam pokazivac sa te adrese i smestim isto u t0
    800012d0:	0002b283          	ld	t0,0(t0)
sd sp, 0(t0) #cuvam sp u pcb
    800012d4:	0022b023          	sd	sp,0(t0)
ld sp, 8(t0) #ucitavam ssp iz pcb-a
    800012d8:	0082b103          	ld	sp,8(t0)

00000000800012dc <else>:

else:
csrr t0, sscratch
    800012dc:	140022f3          	csrr	t0,sscratch
addi sp, sp, -176 #stavljam sve registre na stek (osim zero i sp)
    800012e0:	f5010113          	addi	sp,sp,-176
sd t0, 152(sp)
    800012e4:	08513c23          	sd	t0,152(sp)
sd t1, 144(sp)
    800012e8:	08613823          	sd	t1,144(sp)
sd t2, 136(sp)
    800012ec:	08713423          	sd	t2,136(sp)
sd t3, 128(sp)
    800012f0:	09c13023          	sd	t3,128(sp)
sd t4, 120(sp)
    800012f4:	07d13c23          	sd	t4,120(sp)
sd t5, 112(sp)
    800012f8:	07e13823          	sd	t5,112(sp)
sd t6, 104(sp)
    800012fc:	07f13423          	sd	t6,104(sp)
sd a1, 96(sp)
    80001300:	06b13023          	sd	a1,96(sp)
sd a2, 88(sp)
    80001304:	04c13c23          	sd	a2,88(sp)
sd a3, 80(sp)
    80001308:	04d13823          	sd	a3,80(sp)
sd a4, 72(sp)
    8000130c:	04e13423          	sd	a4,72(sp)
sd a5, 64(sp)
    80001310:	04f13023          	sd	a5,64(sp)
sd a6, 56(sp)
    80001314:	03013c23          	sd	a6,56(sp)
sd a7, 48(sp)
    80001318:	03113823          	sd	a7,48(sp)
sd tp, 40(sp)
    8000131c:	02413423          	sd	tp,40(sp)
sd gp, 32(sp)
    80001320:	02313023          	sd	gp,32(sp)
sd ra, 24(sp)
    80001324:	00113c23          	sd	ra,24(sp)
sd a0, 16(sp)
    80001328:	00a13823          	sd	a0,16(sp)
csrr t0, scause
    8000132c:	142022f3          	csrr	t0,scause
sd t0, 8(sp)
    80001330:	00513423          	sd	t0,8(sp)
csrr t1, sepc
    80001334:	14102373          	csrr	t1,sepc
#ako je ecall ili ecall2 onda moram da povecam sepc za 4
xori t2, t0, 0x08
    80001338:	0082c393          	xori	t2,t0,8
beq t2, zero, incsepc
    8000133c:	00038663          	beqz	t2,80001348 <incsepc>
xori t2, t0, 0x09
    80001340:	0092c393          	xori	t2,t0,9
bne t2, zero, else5
    80001344:	00039463          	bnez	t2,8000134c <else5>

0000000080001348 <incsepc>:
incsepc:
addi t1, t1, 0x04
    80001348:	00430313          	addi	t1,t1,4

000000008000134c <else5>:
else5:
sd t1, 0(sp)
    8000134c:	00613023          	sd	t1,0(sp)
#
csrr t0, sstatus
    80001350:	100022f3          	csrr	t0,sstatus
sd t0, 160(sp)
    80001354:	0a513023          	sd	t0,160(sp)

#sto se tice s0-11 registara, njihovu vrednost ce cuvati prevodilac unutar funckije handle i drugih funkcija

#cuvam scause i sepc, zato sto moze da dodje do ugnezdjenog prekida

call _Z7_handlemmmmmmmm
    80001358:	3ec000ef          	jal	ra,80001744 <_Z7_handlemmmmmmmm>

#
ld t0, 160(sp)
    8000135c:	0a013283          	ld	t0,160(sp)
csrw sstatus, t0
    80001360:	10029073          	csrw	sstatus,t0
#
ld t0, 0(sp)
    80001364:	00013283          	ld	t0,0(sp)
csrw sepc, t0
    80001368:	14129073          	csrw	sepc,t0
ld t0, 8(sp)
    8000136c:	00813283          	ld	t0,8(sp)
csrw scause, t0
    80001370:	14229073          	csrw	scause,t0
#ako je ecall ili ecall2 onda ne menjam a0 jer se tu prenosi povratna vrednost
xori t1, t0, 0x08
    80001374:	0082c313          	xori	t1,t0,8
beq t1, zero, else2
    80001378:	00030863          	beqz	t1,80001388 <else2>
xori t1, t0, 0x09
    8000137c:	0092c313          	xori	t1,t0,9
beq t1, zero, else2
    80001380:	00030463          	beqz	t1,80001388 <else2>
ld a0, 16(sp)
    80001384:	01013503          	ld	a0,16(sp)

0000000080001388 <else2>:
else2:
ld t0, 152(sp)
    80001388:	09813283          	ld	t0,152(sp)
ld t1, 144(sp)
    8000138c:	09013303          	ld	t1,144(sp)
ld t2, 136(sp)
    80001390:	08813383          	ld	t2,136(sp)
ld t3, 128(sp)
    80001394:	08013e03          	ld	t3,128(sp)
ld t4, 120(sp)
    80001398:	07813e83          	ld	t4,120(sp)
ld t5, 112(sp)
    8000139c:	07013f03          	ld	t5,112(sp)
ld t6, 104(sp)
    800013a0:	06813f83          	ld	t6,104(sp)
ld a1, 96(sp)
    800013a4:	06013583          	ld	a1,96(sp)
ld a2, 88(sp)
    800013a8:	05813603          	ld	a2,88(sp)
ld a3, 80(sp)
    800013ac:	05013683          	ld	a3,80(sp)
ld a4, 72(sp)
    800013b0:	04813703          	ld	a4,72(sp)
ld a5, 64(sp)
    800013b4:	04013783          	ld	a5,64(sp)
ld a6, 56(sp)
    800013b8:	03813803          	ld	a6,56(sp)
ld a7, 48(sp)
    800013bc:	03013883          	ld	a7,48(sp)
ld tp, 40(sp)
    800013c0:	02813203          	ld	tp,40(sp)
ld gp, 32(sp)
    800013c4:	02013183          	ld	gp,32(sp)
ld ra, 24(sp)
    800013c8:	01813083          	ld	ra,24(sp)
addi sp, sp, 176
    800013cc:	0b010113          	addi	sp,sp,176

csrw sscratch, t0
    800013d0:	14029073          	csrw	sscratch,t0
csrr t0, sstatus
    800013d4:	100022f3          	csrr	t0,sstatus
andi t0, t0, 0x100
    800013d8:	1002f293          	andi	t0,t0,256
bne t0, zero, else3
    800013dc:	00029c63          	bnez	t0,800013f4 <else3>
#promena steka
la t0, _ZN7_Thread7runningE #ucitam u t0 adresu _running promenljive
    800013e0:	0000e297          	auipc	t0,0xe
    800013e4:	68028293          	addi	t0,t0,1664 # 8000fa60 <_ZN7_Thread7runningE>
ld t0, 0(t0) #zatim procitam pokazivac sa te adrese i smestim isto u t0
    800013e8:	0002b283          	ld	t0,0(t0)
sd sp, 8(t0)
    800013ec:	0022b423          	sd	sp,8(t0)
ld sp, 0(t0)
    800013f0:	0002b103          	ld	sp,0(t0)

00000000800013f4 <else3>:

else3:
csrr t0, sscratch
    800013f4:	140022f3          	csrr	t0,sscratch
    800013f8:	10200073          	sret

00000000800013fc <_Z9kmem_initPvi>:
//

#include "../h/_slab.h"
#include "../h/_SlabAllocator.h"

void kmem_init(void *space, int block_num) {
    800013fc:	ff010113          	addi	sp,sp,-16
    80001400:	00113423          	sd	ra,8(sp)
    80001404:	00813023          	sd	s0,0(sp)
    80001408:	01010413          	addi	s0,sp,16
    kmem_cache_t::kmem_init(space, block_num);
    8000140c:	00002097          	auipc	ra,0x2
    80001410:	cac080e7          	jalr	-852(ra) # 800030b8 <_ZN12kmem_cache_t9kmem_initEPvi>
}
    80001414:	00813083          	ld	ra,8(sp)
    80001418:	00013403          	ld	s0,0(sp)
    8000141c:	01010113          	addi	sp,sp,16
    80001420:	00008067          	ret

0000000080001424 <_Z17kmem_cache_createPKcmPFvPvES3_>:
kmem_cache_t *kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    80001424:	ff010113          	addi	sp,sp,-16
    80001428:	00113423          	sd	ra,8(sp)
    8000142c:	00813023          	sd	s0,0(sp)
    80001430:	01010413          	addi	s0,sp,16
    return kmem_cache_t::kmem_cache_create(name, size, ctor, dtor);
    80001434:	00002097          	auipc	ra,0x2
    80001438:	cf8080e7          	jalr	-776(ra) # 8000312c <_ZN12kmem_cache_t17kmem_cache_createEPKcmPFvPvES4_>
}
    8000143c:	00813083          	ld	ra,8(sp)
    80001440:	00013403          	ld	s0,0(sp)
    80001444:	01010113          	addi	sp,sp,16
    80001448:	00008067          	ret

000000008000144c <_Z17kmem_cache_shrinkP12kmem_cache_t>:
int kmem_cache_shrink(kmem_cache_t *cachep) {
    8000144c:	ff010113          	addi	sp,sp,-16
    80001450:	00113423          	sd	ra,8(sp)
    80001454:	00813023          	sd	s0,0(sp)
    80001458:	01010413          	addi	s0,sp,16
    return kmem_cache_t::kmem_cache_shrink(cachep);
    8000145c:	00002097          	auipc	ra,0x2
    80001460:	d68080e7          	jalr	-664(ra) # 800031c4 <_ZN12kmem_cache_t17kmem_cache_shrinkEPS_>
}
    80001464:	00813083          	ld	ra,8(sp)
    80001468:	00013403          	ld	s0,0(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <_Z16kmem_cache_allocP12kmem_cache_t>:
void* kmem_cache_alloc(kmem_cache_t *cachep) {
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00113423          	sd	ra,8(sp)
    8000147c:	00813023          	sd	s0,0(sp)
    80001480:	01010413          	addi	s0,sp,16
    return kmem_cache_t::kmem_cache_alloc(cachep);
    80001484:	00002097          	auipc	ra,0x2
    80001488:	d68080e7          	jalr	-664(ra) # 800031ec <_ZN12kmem_cache_t16kmem_cache_allocEPS_>
}
    8000148c:	00813083          	ld	ra,8(sp)
    80001490:	00013403          	ld	s0,0(sp)
    80001494:	01010113          	addi	sp,sp,16
    80001498:	00008067          	ret

000000008000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>:
void kmem_cache_free(kmem_cache_t *cachep, void *objp) {
    8000149c:	ff010113          	addi	sp,sp,-16
    800014a0:	00113423          	sd	ra,8(sp)
    800014a4:	00813023          	sd	s0,0(sp)
    800014a8:	01010413          	addi	s0,sp,16
    kmem_cache_t::kmem_cache_free(cachep, objp);
    800014ac:	00002097          	auipc	ra,0x2
    800014b0:	d68080e7          	jalr	-664(ra) # 80003214 <_ZN12kmem_cache_t15kmem_cache_freeEPS_Pv>
}
    800014b4:	00813083          	ld	ra,8(sp)
    800014b8:	00013403          	ld	s0,0(sp)
    800014bc:	01010113          	addi	sp,sp,16
    800014c0:	00008067          	ret

00000000800014c4 <_Z7kmallocm>:
void* kmalloc(size_t size) {
    800014c4:	ff010113          	addi	sp,sp,-16
    800014c8:	00113423          	sd	ra,8(sp)
    800014cc:	00813023          	sd	s0,0(sp)
    800014d0:	01010413          	addi	s0,sp,16
    return kmem_cache_t::kmalloc(size);
    800014d4:	00002097          	auipc	ra,0x2
    800014d8:	d68080e7          	jalr	-664(ra) # 8000323c <_ZN12kmem_cache_t7kmallocEm>
}
    800014dc:	00813083          	ld	ra,8(sp)
    800014e0:	00013403          	ld	s0,0(sp)
    800014e4:	01010113          	addi	sp,sp,16
    800014e8:	00008067          	ret

00000000800014ec <_Z5kfreePKv>:
void kfree(const void *objp) {
    800014ec:	ff010113          	addi	sp,sp,-16
    800014f0:	00113423          	sd	ra,8(sp)
    800014f4:	00813023          	sd	s0,0(sp)
    800014f8:	01010413          	addi	s0,sp,16
    kmem_cache_t::kfree(objp);
    800014fc:	00002097          	auipc	ra,0x2
    80001500:	d70080e7          	jalr	-656(ra) # 8000326c <_ZN12kmem_cache_t5kfreeEPKv>
}
    80001504:	00813083          	ld	ra,8(sp)
    80001508:	00013403          	ld	s0,0(sp)
    8000150c:	01010113          	addi	sp,sp,16
    80001510:	00008067          	ret

0000000080001514 <_Z18kmem_cache_destroyP12kmem_cache_t>:
void kmem_cache_destroy(kmem_cache_t *cachep) {
    80001514:	ff010113          	addi	sp,sp,-16
    80001518:	00113423          	sd	ra,8(sp)
    8000151c:	00813023          	sd	s0,0(sp)
    80001520:	01010413          	addi	s0,sp,16
    kmem_cache_t::kmem_cache_destroy(cachep);
    80001524:	00002097          	auipc	ra,0x2
    80001528:	d70080e7          	jalr	-656(ra) # 80003294 <_ZN12kmem_cache_t18kmem_cache_destroyEPS_>
}
    8000152c:	00813083          	ld	ra,8(sp)
    80001530:	00013403          	ld	s0,0(sp)
    80001534:	01010113          	addi	sp,sp,16
    80001538:	00008067          	ret

000000008000153c <_Z15kmem_cache_infoP12kmem_cache_t>:
void kmem_cache_info(kmem_cache_t *cachep) {
    8000153c:	ff010113          	addi	sp,sp,-16
    80001540:	00113423          	sd	ra,8(sp)
    80001544:	00813023          	sd	s0,0(sp)
    80001548:	01010413          	addi	s0,sp,16
    kmem_cache_t::kmem_cache_info(cachep);
    8000154c:	00002097          	auipc	ra,0x2
    80001550:	d88080e7          	jalr	-632(ra) # 800032d4 <_ZN12kmem_cache_t15kmem_cache_infoEPS_>
}
    80001554:	00813083          	ld	ra,8(sp)
    80001558:	00013403          	ld	s0,0(sp)
    8000155c:	01010113          	addi	sp,sp,16
    80001560:	00008067          	ret

0000000080001564 <_Z16kmem_cache_errorP12kmem_cache_t>:
int kmem_cache_error(kmem_cache_t *cachep) {
    80001564:	ff010113          	addi	sp,sp,-16
    80001568:	00113423          	sd	ra,8(sp)
    8000156c:	00813023          	sd	s0,0(sp)
    80001570:	01010413          	addi	s0,sp,16
    return kmem_cache_t::kmem_cache_error(cachep);
    80001574:	00002097          	auipc	ra,0x2
    80001578:	d88080e7          	jalr	-632(ra) # 800032fc <_ZN12kmem_cache_t16kmem_cache_errorEPS_>
}
    8000157c:	00813083          	ld	ra,8(sp)
    80001580:	00013403          	ld	s0,0(sp)
    80001584:	01010113          	addi	sp,sp,16
    80001588:	00008067          	ret

000000008000158c <_Z20kmem_cache_info_buffi>:

void kmem_cache_info_buff(int pow) {
    8000158c:	ff010113          	addi	sp,sp,-16
    80001590:	00113423          	sd	ra,8(sp)
    80001594:	00813023          	sd	s0,0(sp)
    80001598:	01010413          	addi	s0,sp,16
    kmem_cache_t::kmem_cache_info_buff(pow);
    8000159c:	00002097          	auipc	ra,0x2
    800015a0:	d88080e7          	jalr	-632(ra) # 80003324 <_ZN12kmem_cache_t20kmem_cache_info_buffEi>
}
    800015a4:	00813083          	ld	ra,8(sp)
    800015a8:	00013403          	ld	s0,0(sp)
    800015ac:	01010113          	addi	sp,sp,16
    800015b0:	00008067          	ret

00000000800015b4 <_Z10buddyAlloci>:
void* buddyAlloc(int pow) {
    800015b4:	ff010113          	addi	sp,sp,-16
    800015b8:	00113423          	sd	ra,8(sp)
    800015bc:	00813023          	sd	s0,0(sp)
    800015c0:	01010413          	addi	s0,sp,16
    return kmem_cache_t::buddyAlloc(pow);
    800015c4:	00002097          	auipc	ra,0x2
    800015c8:	db0080e7          	jalr	-592(ra) # 80003374 <_ZN12kmem_cache_t10buddyAllocEi>
}
    800015cc:	00813083          	ld	ra,8(sp)
    800015d0:	00013403          	ld	s0,0(sp)
    800015d4:	01010113          	addi	sp,sp,16
    800015d8:	00008067          	ret

00000000800015dc <_Z9buddyFreePv>:
void buddyFree(void* ptr) {
    800015dc:	ff010113          	addi	sp,sp,-16
    800015e0:	00113423          	sd	ra,8(sp)
    800015e4:	00813023          	sd	s0,0(sp)
    800015e8:	01010413          	addi	s0,sp,16
    return kmem_cache_t::buddyFree(ptr);
    800015ec:	00002097          	auipc	ra,0x2
    800015f0:	dbc080e7          	jalr	-580(ra) # 800033a8 <_ZN12kmem_cache_t9buddyFreeEPv>
}
    800015f4:	00813083          	ld	ra,8(sp)
    800015f8:	00013403          	ld	s0,0(sp)
    800015fc:	01010113          	addi	sp,sp,16
    80001600:	00008067          	ret

0000000080001604 <_Z11getBuddyEndv>:
void* getBuddyEnd() {
    80001604:	ff010113          	addi	sp,sp,-16
    80001608:	00113423          	sd	ra,8(sp)
    8000160c:	00813023          	sd	s0,0(sp)
    80001610:	01010413          	addi	s0,sp,16
    return kmem_cache_t::getBuddyEnd();
    80001614:	00002097          	auipc	ra,0x2
    80001618:	dc8080e7          	jalr	-568(ra) # 800033dc <_ZN12kmem_cache_t11getBuddyEndEv>
}
    8000161c:	00813083          	ld	ra,8(sp)
    80001620:	00013403          	ld	s0,0(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <_Z41__static_initialization_and_destruction_0ii>:
    _Thread::running = ready.remove();
    return 0;
}
int _Scheduler::empty() {
    return ready.empty();
    8000162c:	ff010113          	addi	sp,sp,-16
    80001630:	00813423          	sd	s0,8(sp)
    80001634:	01010413          	addi	s0,sp,16
    80001638:	00100793          	li	a5,1
    8000163c:	00f50863          	beq	a0,a5,8000164c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001640:	00813403          	ld	s0,8(sp)
    80001644:	01010113          	addi	sp,sp,16
    80001648:	00008067          	ret
    8000164c:	000107b7          	lui	a5,0x10
    80001650:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001654:	fef596e3          	bne	a1,a5,80001640 <_Z41__static_initialization_and_destruction_0ii+0x14>
        void* operator new(size_t);
        void operator delete(void*);
    };
    Node* first, *last;
public:
    _ThreadPriorityQueue() : first(nullptr), last(nullptr) {}
    80001658:	0000e797          	auipc	a5,0xe
    8000165c:	3a878793          	addi	a5,a5,936 # 8000fa00 <_ZN10_Scheduler5readyE>
    80001660:	0007b023          	sd	zero,0(a5)
    80001664:	0007b423          	sd	zero,8(a5)
    80001668:	fd9ff06f          	j	80001640 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000166c <_ZN10_Scheduler3putEP7_Thread>:
int _Scheduler::put(thread_t thread) {
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00113423          	sd	ra,8(sp)
    80001674:	00813023          	sd	s0,0(sp)
    80001678:	01010413          	addi	s0,sp,16
    8000167c:	00050593          	mv	a1,a0
    return ready.add(thread);
    80001680:	0000e517          	auipc	a0,0xe
    80001684:	38050513          	addi	a0,a0,896 # 8000fa00 <_ZN10_Scheduler5readyE>
    80001688:	00002097          	auipc	ra,0x2
    8000168c:	ee0080e7          	jalr	-288(ra) # 80003568 <_ZN20_ThreadPriorityQueue3addEP7_Thread>
}
    80001690:	00813083          	ld	ra,8(sp)
    80001694:	00013403          	ld	s0,0(sp)
    80001698:	01010113          	addi	sp,sp,16
    8000169c:	00008067          	ret

00000000800016a0 <_ZN10_Scheduler3getEv>:
int _Scheduler::get() {
    800016a0:	ff010113          	addi	sp,sp,-16
    800016a4:	00113423          	sd	ra,8(sp)
    800016a8:	00813023          	sd	s0,0(sp)
    800016ac:	01010413          	addi	s0,sp,16
    _Thread::running = ready.remove();
    800016b0:	0000e517          	auipc	a0,0xe
    800016b4:	35050513          	addi	a0,a0,848 # 8000fa00 <_ZN10_Scheduler5readyE>
    800016b8:	00002097          	auipc	ra,0x2
    800016bc:	f90080e7          	jalr	-112(ra) # 80003648 <_ZN20_ThreadPriorityQueue6removeEv>
    800016c0:	00010797          	auipc	a5,0x10
    800016c4:	9787b783          	ld	a5,-1672(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    800016c8:	00a7b023          	sd	a0,0(a5)
}
    800016cc:	00000513          	li	a0,0
    800016d0:	00813083          	ld	ra,8(sp)
    800016d4:	00013403          	ld	s0,0(sp)
    800016d8:	01010113          	addi	sp,sp,16
    800016dc:	00008067          	ret

00000000800016e0 <_ZN10_Scheduler5emptyEv>:
int _Scheduler::empty() {
    800016e0:	ff010113          	addi	sp,sp,-16
    800016e4:	00113423          	sd	ra,8(sp)
    800016e8:	00813023          	sd	s0,0(sp)
    800016ec:	01010413          	addi	s0,sp,16
    return ready.empty();
    800016f0:	0000e517          	auipc	a0,0xe
    800016f4:	31050513          	addi	a0,a0,784 # 8000fa00 <_ZN10_Scheduler5readyE>
    800016f8:	00002097          	auipc	ra,0x2
    800016fc:	fb4080e7          	jalr	-76(ra) # 800036ac <_ZN20_ThreadPriorityQueue5emptyEv>
    80001700:	00813083          	ld	ra,8(sp)
    80001704:	00013403          	ld	s0,0(sp)
    80001708:	01010113          	addi	sp,sp,16
    8000170c:	00008067          	ret

0000000080001710 <_GLOBAL__sub_I__ZN10_Scheduler5readyE>:
    80001710:	ff010113          	addi	sp,sp,-16
    80001714:	00113423          	sd	ra,8(sp)
    80001718:	00813023          	sd	s0,0(sp)
    8000171c:	01010413          	addi	s0,sp,16
    80001720:	000105b7          	lui	a1,0x10
    80001724:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001728:	00100513          	li	a0,1
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	f00080e7          	jalr	-256(ra) # 8000162c <_Z41__static_initialization_and_destruction_0ii>
    80001734:	00813083          	ld	ra,8(sp)
    80001738:	00013403          	ld	s0,0(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret

0000000080001744 <_Z7_handlemmmmmmmm>:
#define ECALL2 0x0000000000000009UL
#define IPF 0x0CUL
#define LPF 0x0DUL
#define SPF 0x0FUL

uint64 _handle(uint64 type, uint64 a, uint64 b, uint64 c, uint64 d, uint64 e, uint64 f, uint64 g) {
    80001744:	fb010113          	addi	sp,sp,-80
    80001748:	04113423          	sd	ra,72(sp)
    8000174c:	04813023          	sd	s0,64(sp)
    80001750:	02913c23          	sd	s1,56(sp)
    80001754:	03213823          	sd	s2,48(sp)
    80001758:	03313423          	sd	s3,40(sp)
    8000175c:	03413023          	sd	s4,32(sp)
    80001760:	01513c23          	sd	s5,24(sp)
    80001764:	01613823          	sd	s6,16(sp)
    80001768:	01713423          	sd	s7,8(sp)
    8000176c:	01813023          	sd	s8,0(sp)
    80001770:	05010413          	addi	s0,sp,80
    80001774:	00078b13          	mv	s6,a5
    uint64 cause;
    __asm__ volatile("csrr %0, scause" : "=r"(cause));
    80001778:	142027f3          	csrr	a5,scause
    if (cause == TIMER) {
    8000177c:	fff00313          	li	t1,-1
    80001780:	03f31313          	slli	t1,t1,0x3f
    80001784:	00130313          	addi	t1,t1,1
    80001788:	04678c63          	beq	a5,t1,800017e0 <_Z7_handlemmmmmmmm+0x9c>
    8000178c:	00050493          	mv	s1,a0
    80001790:	00058913          	mv	s2,a1
    80001794:	00060993          	mv	s3,a2
    80001798:	00068a13          	mv	s4,a3
    8000179c:	00070a93          	mv	s5,a4
    800017a0:	00080c13          	mv	s8,a6
    800017a4:	00088b93          	mv	s7,a7
        _SBIT::SIP1clear();
        _Thread::tick();
        return 0;
    }
    else if (cause == HARDWARE) {
    800017a8:	fff00713          	li	a4,-1
    800017ac:	03f71713          	slli	a4,a4,0x3f
    800017b0:	00970713          	addi	a4,a4,9
    800017b4:	04e78263          	beq	a5,a4,800017f8 <_Z7_handlemmmmmmmm+0xb4>
        if (plic_claim() == 10) _Console::handle();//console_handler();//
        //ako nije 10? nepoznat prekid
        //_Thread::dispatch();//dispatch da bi putter ako je signaliziran odmah uradio svoje...
        return 0;
    }
    else if (cause == IPF || cause == LPF || cause == SPF) {
    800017b8:	ff478713          	addi	a4,a5,-12
    800017bc:	00100693          	li	a3,1
    800017c0:	04e6fe63          	bgeu	a3,a4,8000181c <_Z7_handlemmmmmmmm+0xd8>
    800017c4:	00f00713          	li	a4,15
    800017c8:	04e78a63          	beq	a5,a4,8000181c <_Z7_handlemmmmmmmm+0xd8>
        if (cause == IPF) _Console::printString("ERROR: Instruction Page Fault!!\n");
        else if (cause == LPF) _Console::printString("ERROR: Load Page Fault!!\n");
        else _Console::printString("ERROR: Store Page Fault!!\n");
        _Thread::abort();
    }
    else if (cause != ECALL && cause != ECALL2) {
    800017cc:	ff878793          	addi	a5,a5,-8
    800017d0:	00100713          	li	a4,1
    800017d4:	06f77863          	bgeu	a4,a5,80001844 <_Z7_handlemmmmmmmm+0x100>
        //NEPREDVIDJENI PREKIDI
        return 0;
    800017d8:	00000513          	li	a0,0
    800017dc:	2b80006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        _SBIT::SIP1clear();
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	8a4080e7          	jalr	-1884(ra) # 80001084 <_ZN5_SBIT9SIP1clearEv>
        _Thread::tick();
    800017e8:	00002097          	auipc	ra,0x2
    800017ec:	234080e7          	jalr	564(ra) # 80003a1c <_ZN7_Thread4tickEv>
        return 0;
    800017f0:	00000513          	li	a0,0
    800017f4:	2a00006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        if (plic_claim() == 10) _Console::handle();//console_handler();//
    800017f8:	00007097          	auipc	ra,0x7
    800017fc:	1bc080e7          	jalr	444(ra) # 800089b4 <plic_claim>
    80001800:	00a00793          	li	a5,10
    80001804:	00f50663          	beq	a0,a5,80001810 <_Z7_handlemmmmmmmm+0xcc>
        return 0;
    80001808:	00000513          	li	a0,0
    8000180c:	2880006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        if (plic_claim() == 10) _Console::handle();//console_handler();//
    80001810:	00005097          	auipc	ra,0x5
    80001814:	9b8080e7          	jalr	-1608(ra) # 800061c8 <_ZN8_Console6handleEv>
    80001818:	ff1ff06f          	j	80001808 <_Z7_handlemmmmmmmm+0xc4>
        if (cause == IPF) _Console::printString("ERROR: Instruction Page Fault!!\n");
    8000181c:	00c00713          	li	a4,12
    80001820:	04e78663          	beq	a5,a4,8000186c <_Z7_handlemmmmmmmm+0x128>
        else if (cause == LPF) _Console::printString("ERROR: Load Page Fault!!\n");
    80001824:	00d00713          	li	a4,13
    80001828:	04e78c63          	beq	a5,a4,80001880 <_Z7_handlemmmmmmmm+0x13c>
        else _Console::printString("ERROR: Store Page Fault!!\n");
    8000182c:	0000a517          	auipc	a0,0xa
    80001830:	84450513          	addi	a0,a0,-1980 # 8000b070 <PAGEOFFMASK+0x4c>
    80001834:	00005097          	auipc	ra,0x5
    80001838:	a3c080e7          	jalr	-1476(ra) # 80006270 <_ZN8_Console11printStringEPKc>
        _Thread::abort();
    8000183c:	00002097          	auipc	ra,0x2
    80001840:	1ac080e7          	jalr	428(ra) # 800039e8 <_ZN7_Thread5abortEv>
    }
    //softverski prekid
    __asm__ volatile("csrc sip, 0x2");
    80001844:	14417073          	csrci	sip,2
    switch(type) {
    80001848:	04200793          	li	a5,66
    8000184c:	2497e263          	bltu	a5,s1,80001a90 <_Z7_handlemmmmmmmm+0x34c>
    80001850:	00249493          	slli	s1,s1,0x2
    80001854:	0000a717          	auipc	a4,0xa
    80001858:	83870713          	addi	a4,a4,-1992 # 8000b08c <PAGEOFFMASK+0x68>
    8000185c:	00e484b3          	add	s1,s1,a4
    80001860:	0004a783          	lw	a5,0(s1)
    80001864:	00e787b3          	add	a5,a5,a4
    80001868:	00078067          	jr	a5
        if (cause == IPF) _Console::printString("ERROR: Instruction Page Fault!!\n");
    8000186c:	00009517          	auipc	a0,0x9
    80001870:	7bc50513          	addi	a0,a0,1980 # 8000b028 <PAGEOFFMASK+0x4>
    80001874:	00005097          	auipc	ra,0x5
    80001878:	9fc080e7          	jalr	-1540(ra) # 80006270 <_ZN8_Console11printStringEPKc>
    8000187c:	fc1ff06f          	j	8000183c <_Z7_handlemmmmmmmm+0xf8>
        else if (cause == LPF) _Console::printString("ERROR: Load Page Fault!!\n");
    80001880:	00009517          	auipc	a0,0x9
    80001884:	7d050513          	addi	a0,a0,2000 # 8000b050 <PAGEOFFMASK+0x2c>
    80001888:	00005097          	auipc	ra,0x5
    8000188c:	9e8080e7          	jalr	-1560(ra) # 80006270 <_ZN8_Console11printStringEPKc>
    80001890:	fadff06f          	j	8000183c <_Z7_handlemmmmmmmm+0xf8>
        case 0x01:
            return (uint64)_Mem::allocate((size_t)a);
    80001894:	00090513          	mv	a0,s2
    80001898:	00003097          	auipc	ra,0x3
    8000189c:	708080e7          	jalr	1800(ra) # 80004fa0 <_ZN4_Mem8allocateEm>
    800018a0:	1f40006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x02:
            return _Mem::free((void*)a);
    800018a4:	00090513          	mv	a0,s2
    800018a8:	00003097          	auipc	ra,0x3
    800018ac:	628080e7          	jalr	1576(ra) # 80004ed0 <_ZN4_Mem4freeEPv>
    800018b0:	1e40006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>

        case 0x11:
            return _Thread::create((thread_t *) a, (void* (*)(void *)) b, (void *) c, (void *) d, (size_t) e,
    800018b4:	000c051b          	sext.w	a0,s8
    800018b8:	00003097          	auipc	ra,0x3
    800018bc:	e58080e7          	jalr	-424(ra) # 80004710 <_ZN7_Thread9normalizeEi>
    800018c0:	00050793          	mv	a5,a0
    800018c4:	000b881b          	sext.w	a6,s7
    800018c8:	000b0713          	mv	a4,s6
    800018cc:	000a8693          	mv	a3,s5
    800018d0:	000a0613          	mv	a2,s4
    800018d4:	00098593          	mv	a1,s3
    800018d8:	00090513          	mv	a0,s2
    800018dc:	00002097          	auipc	ra,0x2
    800018e0:	42c080e7          	jalr	1068(ra) # 80003d08 <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii>
                                       _Thread::normalize((int) f), (int) (g));
    800018e4:	1b00006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x12:
            return _Thread::create((thread_t *) a, (void (*)(void *)) b, (void *) c, (void *) d, (size_t) e,
    800018e8:	000c051b          	sext.w	a0,s8
    800018ec:	00003097          	auipc	ra,0x3
    800018f0:	e24080e7          	jalr	-476(ra) # 80004710 <_ZN7_Thread9normalizeEi>
    800018f4:	00050793          	mv	a5,a0
    800018f8:	000b881b          	sext.w	a6,s7
    800018fc:	000b0713          	mv	a4,s6
    80001900:	000a8693          	mv	a3,s5
    80001904:	000a0613          	mv	a2,s4
    80001908:	00098593          	mv	a1,s3
    8000190c:	00090513          	mv	a0,s2
    80001910:	00002097          	auipc	ra,0x2
    80001914:	7a0080e7          	jalr	1952(ra) # 800040b0 <_ZN7_Thread6createEPPS_PFvPvES2_S2_mii>
                                   _Thread::normalize((int) f), (int) (g));
    80001918:	17c0006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x13:
            return _Thread::exit((void*)a);
    8000191c:	00090513          	mv	a0,s2
    80001920:	00003097          	auipc	ra,0x3
    80001924:	338080e7          	jalr	824(ra) # 80004c58 <_ZN7_Thread4exitEPv>
    80001928:	16c0006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x14:
            _Thread::dispatch();
    8000192c:	00002097          	auipc	ra,0x2
    80001930:	16c080e7          	jalr	364(ra) # 80003a98 <_ZN7_Thread8dispatchEv>
            return 0;
    80001934:	00000513          	li	a0,0
    80001938:	15c0006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x15:
            return ((thread_t)a)->start();
    8000193c:	00090513          	mv	a0,s2
    80001940:	00002097          	auipc	ra,0x2
    80001944:	318080e7          	jalr	792(ra) # 80003c58 <_ZN7_Thread5startEv>
    80001948:	14c0006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x16:
            return ((thread_t)a)->join((void**)b);
    8000194c:	00098593          	mv	a1,s3
    80001950:	00090513          	mv	a0,s2
    80001954:	00003097          	auipc	ra,0x3
    80001958:	c68080e7          	jalr	-920(ra) # 800045bc <_ZN7_Thread4joinEPPv>
    8000195c:	1380006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x17:
            return ((thread_t) a)->joinLimit((void **) b, (time_t) c);
    80001960:	000a0613          	mv	a2,s4
    80001964:	00098593          	mv	a1,s3
    80001968:	00090513          	mv	a0,s2
    8000196c:	00003097          	auipc	ra,0x3
    80001970:	f98080e7          	jalr	-104(ra) # 80004904 <_ZN7_Thread9joinLimitEPPvm>
    80001974:	1200006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x18:
            return ((thread_t)a)->interrupt();
    80001978:	00090513          	mv	a0,s2
    8000197c:	00003097          	auipc	ra,0x3
    80001980:	184080e7          	jalr	388(ra) # 80004b00 <_ZN7_Thread9interruptEv>
    80001984:	1100006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x19:
            return _Thread::running->interrupted();
    80001988:	0000f797          	auipc	a5,0xf
    8000198c:	6b07b783          	ld	a5,1712(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001990:	0007b503          	ld	a0,0(a5)
    80001994:	00003097          	auipc	ra,0x3
    80001998:	b9c080e7          	jalr	-1124(ra) # 80004530 <_ZN7_Thread11interruptedEv>
    8000199c:	0f80006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>

        case 0x21:
            return _Sem::open((sem_t*)a, (unsigned)b);
    800019a0:	0009859b          	sext.w	a1,s3
    800019a4:	00090513          	mv	a0,s2
    800019a8:	00003097          	auipc	ra,0x3
    800019ac:	6e4080e7          	jalr	1764(ra) # 8000508c <_ZN4_Sem4openEPPS_j>
    800019b0:	0e40006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x22:
            return _Sem::close((sem_t)a);
    800019b4:	00090513          	mv	a0,s2
    800019b8:	00003097          	auipc	ra,0x3
    800019bc:	754080e7          	jalr	1876(ra) # 8000510c <_ZN4_Sem5closeEPS_>
    800019c0:	0d40006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x23:
            return ((sem_t)a)->wait();
    800019c4:	00090513          	mv	a0,s2
    800019c8:	00003097          	auipc	ra,0x3
    800019cc:	7b0080e7          	jalr	1968(ra) # 80005178 <_ZN4_Sem4waitEv>
    800019d0:	0c40006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x24:
            return ((sem_t)a)->signal();
    800019d4:	00090513          	mv	a0,s2
    800019d8:	00004097          	auipc	ra,0x4
    800019dc:	928080e7          	jalr	-1752(ra) # 80005300 <_ZN4_Sem6signalEv>
    800019e0:	0b40006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x25:
            return _Sem::waitOR((sem_t) a, (sem_t) b);
    800019e4:	00098593          	mv	a1,s3
    800019e8:	00090513          	mv	a0,s2
    800019ec:	00004097          	auipc	ra,0x4
    800019f0:	c24080e7          	jalr	-988(ra) # 80005610 <_ZN4_Sem6waitOREPS_S0_>
    800019f4:	0a00006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x26:
            return _Sem::semWaitAND((sem_t) a, (sem_t) b);
    800019f8:	00098593          	mv	a1,s3
    800019fc:	00090513          	mv	a0,s2
    80001a00:	00004097          	auipc	ra,0x4
    80001a04:	df4080e7          	jalr	-524(ra) # 800057f4 <_ZN4_Sem10semWaitANDEPS_S0_>
    80001a08:	08c0006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x27:
            return ((sem_t)a)->wait((time_t)b);
    80001a0c:	00098593          	mv	a1,s3
    80001a10:	00090513          	mv	a0,s2
    80001a14:	00004097          	auipc	ra,0x4
    80001a18:	a04080e7          	jalr	-1532(ra) # 80005418 <_ZN4_Sem4waitEm>
    80001a1c:	0780006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x28:
            return _Sem::semWaitORLimit((sem_t) a, (sem_t) b, (time_t) c);
    80001a20:	000a0613          	mv	a2,s4
    80001a24:	00098593          	mv	a1,s3
    80001a28:	00090513          	mv	a0,s2
    80001a2c:	00004097          	auipc	ra,0x4
    80001a30:	fec080e7          	jalr	-20(ra) # 80005a18 <_ZN4_Sem14semWaitORLimitEPS_S0_m>
    80001a34:	0600006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x29:
            return _Sem::semWaitANDLimit((sem_t) a, (sem_t) b, (time_t) c);
    80001a38:	000a0613          	mv	a2,s4
    80001a3c:	00098593          	mv	a1,s3
    80001a40:	00090513          	mv	a0,s2
    80001a44:	00004097          	auipc	ra,0x4
    80001a48:	248080e7          	jalr	584(ra) # 80005c8c <_ZN4_Sem15semWaitANDLimitEPS_S0_m>
    80001a4c:	0480006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>

        case 0x31:
            return _Thread::timeSleep((time_t) a);
    80001a50:	00090513          	mv	a0,s2
    80001a54:	00003097          	auipc	ra,0x3
    80001a58:	d10080e7          	jalr	-752(ra) # 80004764 <_ZN7_Thread9timeSleepEm>
    80001a5c:	0380006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
    int joinPass();
    int sem_kick(sem_t);
    int check_wait(int);
    void removeManager();

    static time_t getTime() { return clock; }
    80001a60:	0000f797          	auipc	a5,0xf
    80001a64:	6287b783          	ld	a5,1576(a5) # 80011088 <_GLOBAL_OFFSET_TABLE_+0x88>
    80001a68:	0007b503          	ld	a0,0(a5)
        case 0x32:
            return _Thread::getTime();
    80001a6c:	0280006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>

        case 0x41:
            return _Console::getc();
    80001a70:	00004097          	auipc	ra,0x4
    80001a74:	728080e7          	jalr	1832(ra) # 80006198 <_ZN8_Console4getcEv>
    80001a78:	01c0006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
        case 0x42:
            _Console::putc((char)a);
    80001a7c:	0ff97513          	andi	a0,s2,255
    80001a80:	00004097          	auipc	ra,0x4
    80001a84:	6c4080e7          	jalr	1732(ra) # 80006144 <_ZN8_Console4putcEc>
            return 0;
    80001a88:	00000513          	li	a0,0
    80001a8c:	0080006f          	j	80001a94 <_Z7_handlemmmmmmmm+0x350>
    __asm__ volatile("csrc sip, 0x2");
    80001a90:	00000513          	li	a0,0
        default:
            break;
    }
    return 0;
}
    80001a94:	04813083          	ld	ra,72(sp)
    80001a98:	04013403          	ld	s0,64(sp)
    80001a9c:	03813483          	ld	s1,56(sp)
    80001aa0:	03013903          	ld	s2,48(sp)
    80001aa4:	02813983          	ld	s3,40(sp)
    80001aa8:	02013a03          	ld	s4,32(sp)
    80001aac:	01813a83          	ld	s5,24(sp)
    80001ab0:	01013b03          	ld	s6,16(sp)
    80001ab4:	00813b83          	ld	s7,8(sp)
    80001ab8:	00013c03          	ld	s8,0(sp)
    80001abc:	05010113          	addi	sp,sp,80
    80001ac0:	00008067          	ret

0000000080001ac4 <_ZN6_Sleep4NodenwEm>:
#include "../h/_Mem.h"
#include "../h/_Scheduler.h"

kmem_cache_t* _Sleep::Node::cache = nullptr;

void *_Sleep::Node::operator new(size_t size) {
    80001ac4:	ff010113          	addi	sp,sp,-16
    80001ac8:	00113423          	sd	ra,8(sp)
    80001acc:	00813023          	sd	s0,0(sp)
    80001ad0:	01010413          	addi	s0,sp,16
    if (!cache) cache = kmem_cache_create("Sleep::Node Cache", sizeof(_Sleep::Node), nullptr, nullptr);
    80001ad4:	0000e797          	auipc	a5,0xe
    80001ad8:	f3c7b783          	ld	a5,-196(a5) # 8000fa10 <_ZN6_Sleep4Node5cacheE>
    80001adc:	02078263          	beqz	a5,80001b00 <_ZN6_Sleep4NodenwEm+0x3c>
    return kmem_cache_alloc(cache);
    80001ae0:	0000e517          	auipc	a0,0xe
    80001ae4:	f3053503          	ld	a0,-208(a0) # 8000fa10 <_ZN6_Sleep4Node5cacheE>
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	98c080e7          	jalr	-1652(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
}
    80001af0:	00813083          	ld	ra,8(sp)
    80001af4:	00013403          	ld	s0,0(sp)
    80001af8:	01010113          	addi	sp,sp,16
    80001afc:	00008067          	ret
    if (!cache) cache = kmem_cache_create("Sleep::Node Cache", sizeof(_Sleep::Node), nullptr, nullptr);
    80001b00:	00000693          	li	a3,0
    80001b04:	00000613          	li	a2,0
    80001b08:	01800593          	li	a1,24
    80001b0c:	00009517          	auipc	a0,0x9
    80001b10:	68c50513          	addi	a0,a0,1676 # 8000b198 <PAGEOFFMASK+0x174>
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	910080e7          	jalr	-1776(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80001b1c:	0000e797          	auipc	a5,0xe
    80001b20:	eea7ba23          	sd	a0,-268(a5) # 8000fa10 <_ZN6_Sleep4Node5cacheE>
    80001b24:	fbdff06f          	j	80001ae0 <_ZN6_Sleep4NodenwEm+0x1c>

0000000080001b28 <_ZN6_Sleep4NodedlEPv>:
void _Sleep::Node::operator delete(void *adr) {
    80001b28:	ff010113          	addi	sp,sp,-16
    80001b2c:	00113423          	sd	ra,8(sp)
    80001b30:	00813023          	sd	s0,0(sp)
    80001b34:	01010413          	addi	s0,sp,16
    80001b38:	00050593          	mv	a1,a0
    kmem_cache_free(cache, adr);
    80001b3c:	0000e517          	auipc	a0,0xe
    80001b40:	ed453503          	ld	a0,-300(a0) # 8000fa10 <_ZN6_Sleep4Node5cacheE>
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	958080e7          	jalr	-1704(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
}
    80001b4c:	00813083          	ld	ra,8(sp)
    80001b50:	00013403          	ld	s0,0(sp)
    80001b54:	01010113          	addi	sp,sp,16
    80001b58:	00008067          	ret

0000000080001b5c <_ZN6_Sleep10wake_firstEv>:

_Sleep::Node* _Sleep::first = nullptr;

thread_t _Sleep::wake_first() {
    80001b5c:	fe010113          	addi	sp,sp,-32
    80001b60:	00113c23          	sd	ra,24(sp)
    80001b64:	00813823          	sd	s0,16(sp)
    80001b68:	00913423          	sd	s1,8(sp)
    80001b6c:	02010413          	addi	s0,sp,32
    thread_t ret;
    if (first && first->left == 0) {
    80001b70:	0000e517          	auipc	a0,0xe
    80001b74:	ea853503          	ld	a0,-344(a0) # 8000fa18 <_ZN6_Sleep5firstE>
    80001b78:	04050263          	beqz	a0,80001bbc <_ZN6_Sleep10wake_firstEv+0x60>
    80001b7c:	00853783          	ld	a5,8(a0)
    80001b80:	02078063          	beqz	a5,80001ba0 <_ZN6_Sleep10wake_firstEv+0x44>
        Node* old = first;
        first = first->next;
        delete old;
        return ret;
    }
    return nullptr;//nema vise niti za budjenje
    80001b84:	00000493          	li	s1,0
}
    80001b88:	00048513          	mv	a0,s1
    80001b8c:	01813083          	ld	ra,24(sp)
    80001b90:	01013403          	ld	s0,16(sp)
    80001b94:	00813483          	ld	s1,8(sp)
    80001b98:	02010113          	addi	sp,sp,32
    80001b9c:	00008067          	ret
        ret = first->thread;
    80001ba0:	00053483          	ld	s1,0(a0)
        first = first->next;
    80001ba4:	01053783          	ld	a5,16(a0)
    80001ba8:	0000e717          	auipc	a4,0xe
    80001bac:	e6f73823          	sd	a5,-400(a4) # 8000fa18 <_ZN6_Sleep5firstE>
        delete old;
    80001bb0:	00000097          	auipc	ra,0x0
    80001bb4:	f78080e7          	jalr	-136(ra) # 80001b28 <_ZN6_Sleep4NodedlEPv>
        return ret;
    80001bb8:	fd1ff06f          	j	80001b88 <_ZN6_Sleep10wake_firstEv+0x2c>
    return nullptr;//nema vise niti za budjenje
    80001bbc:	00050493          	mv	s1,a0
    80001bc0:	fc9ff06f          	j	80001b88 <_ZN6_Sleep10wake_firstEv+0x2c>

0000000080001bc4 <_ZN6_Sleep3putEP7_Threadm>:
int _Sleep::put(thread_t thread, time_t time) {
    80001bc4:	fd010113          	addi	sp,sp,-48
    80001bc8:	02113423          	sd	ra,40(sp)
    80001bcc:	02813023          	sd	s0,32(sp)
    80001bd0:	00913c23          	sd	s1,24(sp)
    80001bd4:	01213823          	sd	s2,16(sp)
    80001bd8:	01313423          	sd	s3,8(sp)
    80001bdc:	01413023          	sd	s4,0(sp)
    80001be0:	03010413          	addi	s0,sp,48
    80001be4:	00050a13          	mv	s4,a0
    80001be8:	00058913          	mv	s2,a1
    Node* cur = first, *prev = 0;
    80001bec:	0000e497          	auipc	s1,0xe
    80001bf0:	e2c4b483          	ld	s1,-468(s1) # 8000fa18 <_ZN6_Sleep5firstE>
    80001bf4:	00000993          	li	s3,0
    time_t left = time;
    while (cur && left >= cur->left) {
    80001bf8:	00048e63          	beqz	s1,80001c14 <_ZN6_Sleep3putEP7_Threadm+0x50>
    80001bfc:	0084b783          	ld	a5,8(s1)
    80001c00:	00f96a63          	bltu	s2,a5,80001c14 <_ZN6_Sleep3putEP7_Threadm+0x50>
        left -= cur->left;
    80001c04:	40f90933          	sub	s2,s2,a5
        prev = cur, cur = cur->next;
    80001c08:	00048993          	mv	s3,s1
    80001c0c:	0104b483          	ld	s1,16(s1)
    while (cur && left >= cur->left) {
    80001c10:	fe9ff06f          	j	80001bf8 <_ZN6_Sleep3putEP7_Threadm+0x34>
    }
    Node* newnode = new Node(thread, left);
    80001c14:	01800513          	li	a0,24
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	eac080e7          	jalr	-340(ra) # 80001ac4 <_ZN6_Sleep4NodenwEm>
    80001c20:	00050863          	beqz	a0,80001c30 <_ZN6_Sleep3putEP7_Threadm+0x6c>
class _Sleep {
    struct Node {
        thread_t thread;
        time_t left;
        Node* next;
        Node(thread_t thread, time_t left) : thread(thread), left(left), next(nullptr) {}
    80001c24:	01453023          	sd	s4,0(a0)
    80001c28:	01253423          	sd	s2,8(a0)
    80001c2c:	00053823          	sd	zero,16(a0)
    if (!newnode) return -1; //greska u alokaciji
    80001c30:	04050863          	beqz	a0,80001c80 <_ZN6_Sleep3putEP7_Threadm+0xbc>
    newnode->next = cur;
    80001c34:	00953823          	sd	s1,16(a0)
    if (prev) prev->next = newnode;
    80001c38:	02098e63          	beqz	s3,80001c74 <_ZN6_Sleep3putEP7_Threadm+0xb0>
    80001c3c:	00a9b823          	sd	a0,16(s3)
    else first = newnode;
    if (cur) cur->left -= left;
    80001c40:	04048463          	beqz	s1,80001c88 <_ZN6_Sleep3putEP7_Threadm+0xc4>
    80001c44:	0084b583          	ld	a1,8(s1)
    80001c48:	41258933          	sub	s2,a1,s2
    80001c4c:	0124b423          	sd	s2,8(s1)
    return 0;
    80001c50:	00000513          	li	a0,0
}
    80001c54:	02813083          	ld	ra,40(sp)
    80001c58:	02013403          	ld	s0,32(sp)
    80001c5c:	01813483          	ld	s1,24(sp)
    80001c60:	01013903          	ld	s2,16(sp)
    80001c64:	00813983          	ld	s3,8(sp)
    80001c68:	00013a03          	ld	s4,0(sp)
    80001c6c:	03010113          	addi	sp,sp,48
    80001c70:	00008067          	ret
    else first = newnode;
    80001c74:	0000e797          	auipc	a5,0xe
    80001c78:	daa7b223          	sd	a0,-604(a5) # 8000fa18 <_ZN6_Sleep5firstE>
    80001c7c:	fc5ff06f          	j	80001c40 <_ZN6_Sleep3putEP7_Threadm+0x7c>
    if (!newnode) return -1; //greska u alokaciji
    80001c80:	fff00513          	li	a0,-1
    80001c84:	fd1ff06f          	j	80001c54 <_ZN6_Sleep3putEP7_Threadm+0x90>
    return 0;
    80001c88:	00000513          	li	a0,0
    80001c8c:	fc9ff06f          	j	80001c54 <_ZN6_Sleep3putEP7_Threadm+0x90>

0000000080001c90 <_ZN6_Sleep4tickEv>:
void _Sleep::tick() {
    80001c90:	ff010113          	addi	sp,sp,-16
    80001c94:	00113423          	sd	ra,8(sp)
    80001c98:	00813023          	sd	s0,0(sp)
    80001c9c:	01010413          	addi	s0,sp,16
    if (first) first->left--;
    80001ca0:	0000e797          	auipc	a5,0xe
    80001ca4:	d787b783          	ld	a5,-648(a5) # 8000fa18 <_ZN6_Sleep5firstE>
    80001ca8:	00078863          	beqz	a5,80001cb8 <_ZN6_Sleep4tickEv+0x28>
    80001cac:	0087b703          	ld	a4,8(a5)
    80001cb0:	fff70713          	addi	a4,a4,-1
    80001cb4:	00e7b423          	sd	a4,8(a5)
    thread_t woken;
    while ((woken = wake_first())) {
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	ea4080e7          	jalr	-348(ra) # 80001b5c <_ZN6_Sleep10wake_firstEv>
    80001cc0:	00050863          	beqz	a0,80001cd0 <_ZN6_Sleep4tickEv+0x40>
        woken->sleepPass();
    80001cc4:	00003097          	auipc	ra,0x3
    80001cc8:	efc080e7          	jalr	-260(ra) # 80004bc0 <_ZN7_Thread9sleepPassEv>
    while ((woken = wake_first())) {
    80001ccc:	fedff06f          	j	80001cb8 <_ZN6_Sleep4tickEv+0x28>
    }
}
    80001cd0:	00813083          	ld	ra,8(sp)
    80001cd4:	00013403          	ld	s0,0(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret

0000000080001ce0 <_ZN6_Sleep6removeEP7_Thread>:

int _Sleep::remove(thread_t thread) {
    80001ce0:	00050713          	mv	a4,a0
    Node* prev = nullptr, *cur = first;
    80001ce4:	0000e517          	auipc	a0,0xe
    80001ce8:	d3453503          	ld	a0,-716(a0) # 8000fa18 <_ZN6_Sleep5firstE>
    80001cec:	00000693          	li	a3,0
    while (cur && cur->thread != thread) prev = cur, cur = cur->next;
    80001cf0:	00050c63          	beqz	a0,80001d08 <_ZN6_Sleep6removeEP7_Thread+0x28>
    80001cf4:	00053783          	ld	a5,0(a0)
    80001cf8:	00e78863          	beq	a5,a4,80001d08 <_ZN6_Sleep6removeEP7_Thread+0x28>
    80001cfc:	00050693          	mv	a3,a0
    80001d00:	01053503          	ld	a0,16(a0)
    80001d04:	fedff06f          	j	80001cf0 <_ZN6_Sleep6removeEP7_Thread+0x10>
    if (!cur) return -1;
    80001d08:	06050263          	beqz	a0,80001d6c <_ZN6_Sleep6removeEP7_Thread+0x8c>
int _Sleep::remove(thread_t thread) {
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00113423          	sd	ra,8(sp)
    80001d14:	00813023          	sd	s0,0(sp)
    80001d18:	01010413          	addi	s0,sp,16
    if (prev) prev->next = cur->next;
    80001d1c:	04068063          	beqz	a3,80001d5c <_ZN6_Sleep6removeEP7_Thread+0x7c>
    80001d20:	01053783          	ld	a5,16(a0)
    80001d24:	00f6b823          	sd	a5,16(a3)
    else first = cur->next;
    Node* ret = cur; cur = cur->next;
    80001d28:	01053783          	ld	a5,16(a0)
    if (cur) cur->left += ret->left;
    80001d2c:	00078a63          	beqz	a5,80001d40 <_ZN6_Sleep6removeEP7_Thread+0x60>
    80001d30:	00853683          	ld	a3,8(a0)
    80001d34:	0087b703          	ld	a4,8(a5)
    80001d38:	00d70733          	add	a4,a4,a3
    80001d3c:	00e7b423          	sd	a4,8(a5)
    delete ret;
    80001d40:	00000097          	auipc	ra,0x0
    80001d44:	de8080e7          	jalr	-536(ra) # 80001b28 <_ZN6_Sleep4NodedlEPv>
    return 0;
    80001d48:	00000513          	li	a0,0
    80001d4c:	00813083          	ld	ra,8(sp)
    80001d50:	00013403          	ld	s0,0(sp)
    80001d54:	01010113          	addi	sp,sp,16
    80001d58:	00008067          	ret
    else first = cur->next;
    80001d5c:	01053783          	ld	a5,16(a0)
    80001d60:	0000e717          	auipc	a4,0xe
    80001d64:	caf73c23          	sd	a5,-840(a4) # 8000fa18 <_ZN6_Sleep5firstE>
    80001d68:	fc1ff06f          	j	80001d28 <_ZN6_Sleep6removeEP7_Thread+0x48>
    if (!cur) return -1;
    80001d6c:	fff00513          	li	a0,-1
    80001d70:	00008067          	ret

0000000080001d74 <_ZN4_PMTC1Eb>:
#include "../lib/hw.h"
#include "../h/_slab.h"
#include "../h/_BuddyAllocator.h"
#include "../h/_PMT.h"

_PMT::_PMT(bool direct) {
    80001d74:	ff010113          	addi	sp,sp,-16
    80001d78:	00813423          	sd	s0,8(sp)
    80001d7c:	01010413          	addi	s0,sp,16
    80001d80:	00050713          	mv	a4,a0
    80001d84:	1ff00793          	li	a5,511
    80001d88:	0007ca63          	bltz	a5,80001d9c <_ZN4_PMTC1Eb+0x28>
     * 2 : W = 1;
     * 1 : R = 1
     * 0 : V
     */
public:
    _PMTE() { val = 0; }
    80001d8c:	00073023          	sd	zero,0(a4)
    80001d90:	00870713          	addi	a4,a4,8
    80001d94:	fff78793          	addi	a5,a5,-1
    80001d98:	ff1ff06f          	j	80001d88 <_ZN4_PMTC1Eb+0x14>
    if (!direct) return;
    80001d9c:	02058663          	beqz	a1,80001dc8 <_ZN4_PMTC1Eb+0x54>
    for (int i = 0; i < 512; i++) {
    80001da0:	00000793          	li	a5,0
    80001da4:	1ff00713          	li	a4,511
    80001da8:	02f74063          	blt	a4,a5,80001dc8 <_ZN4_PMTC1Eb+0x54>
    void setRWX () { val |= 14; }
    bool isLeaf() { return (val >> 1) & 7ull; }
    void setAD() { val |= 192; }
    void setFrame(uint64 frame) {
        val &= 0xFFC00000000003FFULL;
        val |= frame << 10;
    80001dac:	01c79693          	slli	a3,a5,0x1c
    80001db0:	00379713          	slli	a4,a5,0x3
    80001db4:	00e50733          	add	a4,a0,a4
    80001db8:	0ff6e693          	ori	a3,a3,255
    80001dbc:	00d73023          	sd	a3,0(a4)
    80001dc0:	0017879b          	addiw	a5,a5,1
    80001dc4:	fe1ff06f          	j	80001da4 <_ZN4_PMTC1Eb+0x30>
                uint64 frame = ((uint64)k << 18) | ((uint64)j << 9) | ((uint64)i);
                pmt3[k].setFrame(frame);
            }
        }*/
    }
}
    80001dc8:	00813403          	ld	s0,8(sp)
    80001dcc:	01010113          	addi	sp,sp,16
    80001dd0:	00008067          	ret

0000000080001dd4 <_ZN4_PMT8getEntryEm>:
_PMTE* _PMT::getEntry(uint64 page) {
    80001dd4:	fd010113          	addi	sp,sp,-48
    80001dd8:	02113423          	sd	ra,40(sp)
    80001ddc:	02813023          	sd	s0,32(sp)
    80001de0:	00913c23          	sd	s1,24(sp)
    80001de4:	01213823          	sd	s2,16(sp)
    80001de8:	01313423          	sd	s3,8(sp)
    80001dec:	01413023          	sd	s4,0(sp)
    80001df0:	03010413          	addi	s0,sp,48
    int k = page & 0x1ffull;
    80001df4:	1ff5f493          	andi	s1,a1,511
    int j = (page >> 9) & 0x1ffull;
    80001df8:	0095da13          	srli	s4,a1,0x9
    int i = (page >> 18) & 0x1ffull;
    80001dfc:	0125d593          	srli	a1,a1,0x12
    80001e00:	1ff5f913          	andi	s2,a1,511
    bool isValid() { return val & 1;}
    80001e04:	00391793          	slli	a5,s2,0x3
    80001e08:	00f507b3          	add	a5,a0,a5
    80001e0c:	0007b783          	ld	a5,0(a5)
    80001e10:	0017f713          	andi	a4,a5,1
    if (!entries[i].isValid()) return nullptr;
    80001e14:	16070463          	beqz	a4,80001f7c <_ZN4_PMT8getEntryEm+0x1a8>
    80001e18:	00050993          	mv	s3,a0
    80001e1c:	1ffa7a13          	andi	s4,s4,511
    bool isLeaf() { return (val >> 1) & 7ull; }
    80001e20:	0017d793          	srli	a5,a5,0x1
    80001e24:	0077f793          	andi	a5,a5,7
    if (entries[i].isLeaf()) {
    80001e28:	08079863          	bnez	a5,80001eb8 <_ZN4_PMT8getEntryEm+0xe4>
    }
    uint64 getFrame() {
        return (val >> 10) & 0xFFFFFFFFFFFULL;
    80001e2c:	00391913          	slli	s2,s2,0x3
    80001e30:	012989b3          	add	s3,s3,s2
    80001e34:	0009b783          	ld	a5,0(s3)
    80001e38:	00a7d793          	srli	a5,a5,0xa
            pmt2[t].setDefaultLeaf();
            pmt2[t].setFrame(supFrame | ((uint64) t) << 9);
        }
    }
    uint64 pmt2frame = entries[i].getFrame();
    _PMTE* pmt2 = (_PMTE*) (pmt2frame << 12);
    80001e3c:	00c79793          	slli	a5,a5,0xc
    80001e40:	fff00737          	lui	a4,0xfff00
    80001e44:	00875713          	srli	a4,a4,0x8
    80001e48:	00e7f7b3          	and	a5,a5,a4
    if (!pmt2[j].isValid()) return nullptr;
    80001e4c:	003a1a13          	slli	s4,s4,0x3
    80001e50:	01478a33          	add	s4,a5,s4
    bool isValid() { return val & 1;}
    80001e54:	000a3783          	ld	a5,0(s4)
    80001e58:	0017f713          	andi	a4,a5,1
    80001e5c:	12070463          	beqz	a4,80001f84 <_ZN4_PMT8getEntryEm+0x1b0>
    bool isLeaf() { return (val >> 1) & 7ull; }
    80001e60:	0017d793          	srli	a5,a5,0x1
    80001e64:	0077f793          	andi	a5,a5,7
    if (pmt2[j].isLeaf()) {
    80001e68:	0a079c63          	bnez	a5,80001f20 <_ZN4_PMT8getEntryEm+0x14c>
        return (val >> 10) & 0xFFFFFFFFFFFULL;
    80001e6c:	000a3503          	ld	a0,0(s4)
    80001e70:	00a55513          	srli	a0,a0,0xa
            pmt3[t].setDefaultLeaf();
            pmt3[t].setFrame(supFrame | (uint64)t);
        }
    }
    uint64 pmt3frame = pmt2[j].getFrame();
    _PMTE* pmt3 = (_PMTE*) (pmt3frame << 12);
    80001e74:	00c51513          	slli	a0,a0,0xc
    80001e78:	fff007b7          	lui	a5,0xfff00
    80001e7c:	0087d793          	srli	a5,a5,0x8
    80001e80:	00f57533          	and	a0,a0,a5
    if (!pmt3[k].isValid()) return nullptr;
    80001e84:	00349493          	slli	s1,s1,0x3
    80001e88:	00950533          	add	a0,a0,s1
    bool isValid() { return val & 1;}
    80001e8c:	00053783          	ld	a5,0(a0)
    80001e90:	0017f793          	andi	a5,a5,1
    80001e94:	0e078c63          	beqz	a5,80001f8c <_ZN4_PMT8getEntryEm+0x1b8>
    return pmt3 + k;
}
    80001e98:	02813083          	ld	ra,40(sp)
    80001e9c:	02013403          	ld	s0,32(sp)
    80001ea0:	01813483          	ld	s1,24(sp)
    80001ea4:	01013903          	ld	s2,16(sp)
    80001ea8:	00813983          	ld	s3,8(sp)
    80001eac:	00013a03          	ld	s4,0(sp)
    80001eb0:	03010113          	addi	sp,sp,48
    80001eb4:	00008067          	ret
        _PMTE *pmt2 = (_PMTE *) buddyAlloc(0);
    80001eb8:	00000513          	li	a0,0
    80001ebc:	fffff097          	auipc	ra,0xfffff
    80001ec0:	6f8080e7          	jalr	1784(ra) # 800015b4 <_Z10buddyAlloci>
        return (val >> 10) & 0xFFFFFFFFFFFULL;
    80001ec4:	00391713          	slli	a4,s2,0x3
    80001ec8:	00e98733          	add	a4,s3,a4
    80001ecc:	00073603          	ld	a2,0(a4) # fffffffffff00000 <end+0xffffffff7feebc70>
    80001ed0:	00a65613          	srli	a2,a2,0xa
    80001ed4:	fff00793          	li	a5,-1
    80001ed8:	0147d793          	srli	a5,a5,0x14
    80001edc:	00f67633          	and	a2,a2,a5
        entries[i].setFrame((uint64) pmt2 >> 12);
    80001ee0:	00c55793          	srli	a5,a0,0xc
        val |= frame << 10;
    80001ee4:	00a79793          	slli	a5,a5,0xa
    80001ee8:	0017e793          	ori	a5,a5,1
    80001eec:	00f73023          	sd	a5,0(a4)
        for (int t = 0; t < 512; t++) {
    80001ef0:	00000713          	li	a4,0
    80001ef4:	1ff00793          	li	a5,511
    80001ef8:	f2e7cae3          	blt	a5,a4,80001e2c <_ZN4_PMT8getEntryEm+0x58>
            pmt2[t].setDefaultLeaf();
    80001efc:	00371693          	slli	a3,a4,0x3
    80001f00:	00d506b3          	add	a3,a0,a3
            pmt2[t].setFrame(supFrame | ((uint64) t) << 9);
    80001f04:	00971793          	slli	a5,a4,0x9
    80001f08:	00c7e7b3          	or	a5,a5,a2
    80001f0c:	00a79793          	slli	a5,a5,0xa
    80001f10:	0ff7e793          	ori	a5,a5,255
    80001f14:	00f6b023          	sd	a5,0(a3)
        for (int t = 0; t < 512; t++) {
    80001f18:	0017071b          	addiw	a4,a4,1
    80001f1c:	fd9ff06f          	j	80001ef4 <_ZN4_PMT8getEntryEm+0x120>
        _PMTE *pmt3 = (_PMTE *) buddyAlloc(0);
    80001f20:	00000513          	li	a0,0
    80001f24:	fffff097          	auipc	ra,0xfffff
    80001f28:	690080e7          	jalr	1680(ra) # 800015b4 <_Z10buddyAlloci>
        return (val >> 10) & 0xFFFFFFFFFFFULL;
    80001f2c:	000a3603          	ld	a2,0(s4)
    80001f30:	00a65613          	srli	a2,a2,0xa
    80001f34:	fff00793          	li	a5,-1
    80001f38:	0147d793          	srli	a5,a5,0x14
    80001f3c:	00f67633          	and	a2,a2,a5
        pmt2[j].setFrame((uint64) pmt3 >> 12);
    80001f40:	00c55793          	srli	a5,a0,0xc
        val |= frame << 10;
    80001f44:	00a79793          	slli	a5,a5,0xa
    80001f48:	0017e793          	ori	a5,a5,1
    80001f4c:	00fa3023          	sd	a5,0(s4)
        for (int t = 0; t < 512; t++) {
    80001f50:	00000713          	li	a4,0
    80001f54:	1ff00793          	li	a5,511
    80001f58:	f0e7cae3          	blt	a5,a4,80001e6c <_ZN4_PMT8getEntryEm+0x98>
            pmt3[t].setDefaultLeaf();
    80001f5c:	00371693          	slli	a3,a4,0x3
    80001f60:	00d506b3          	add	a3,a0,a3
            pmt3[t].setFrame(supFrame | (uint64)t);
    80001f64:	00c767b3          	or	a5,a4,a2
    80001f68:	00a79793          	slli	a5,a5,0xa
    80001f6c:	0ff7e793          	ori	a5,a5,255
    80001f70:	00f6b023          	sd	a5,0(a3)
        for (int t = 0; t < 512; t++) {
    80001f74:	0017071b          	addiw	a4,a4,1
    80001f78:	fddff06f          	j	80001f54 <_ZN4_PMT8getEntryEm+0x180>
    if (!entries[i].isValid()) return nullptr;
    80001f7c:	00000513          	li	a0,0
    80001f80:	f19ff06f          	j	80001e98 <_ZN4_PMT8getEntryEm+0xc4>
    if (!pmt2[j].isValid()) return nullptr;
    80001f84:	00000513          	li	a0,0
    80001f88:	f11ff06f          	j	80001e98 <_ZN4_PMT8getEntryEm+0xc4>
    if (!pmt3[k].isValid()) return nullptr;
    80001f8c:	00000513          	li	a0,0
    80001f90:	f09ff06f          	j	80001e98 <_ZN4_PMT8getEntryEm+0xc4>

0000000080001f94 <_ZN4_PMT6clearUEm>:

void _PMT::clearU(uint64 page) {
    80001f94:	ff010113          	addi	sp,sp,-16
    80001f98:	00113423          	sd	ra,8(sp)
    80001f9c:	00813023          	sd	s0,0(sp)
    80001fa0:	01010413          	addi	s0,sp,16
    _PMTE* entry = getEntry(page);
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	e30080e7          	jalr	-464(ra) # 80001dd4 <_ZN4_PMT8getEntryEm>
    if (!entry) return;
    80001fac:	00050863          	beqz	a0,80001fbc <_ZN4_PMT6clearUEm+0x28>
    void setDefaultNode() {
        val = 0;
        setV();
    }
    void setU() { val |= 16; }
    void clearU() { val &= ~(uint64)16; }
    80001fb0:	00053783          	ld	a5,0(a0)
    80001fb4:	fef7f793          	andi	a5,a5,-17
    80001fb8:	00f53023          	sd	a5,0(a0)
    entry->clearU();
}
    80001fbc:	00813083          	ld	ra,8(sp)
    80001fc0:	00013403          	ld	s0,0(sp)
    80001fc4:	01010113          	addi	sp,sp,16
    80001fc8:	00008067          	ret

0000000080001fcc <_ZN4_PMT6clearUEmm>:
void _PMT::clearU(uint64 start, uint64 end) {
    80001fcc:	fd010113          	addi	sp,sp,-48
    80001fd0:	02113423          	sd	ra,40(sp)
    80001fd4:	02813023          	sd	s0,32(sp)
    80001fd8:	00913c23          	sd	s1,24(sp)
    80001fdc:	01213823          	sd	s2,16(sp)
    80001fe0:	01313423          	sd	s3,8(sp)
    80001fe4:	03010413          	addi	s0,sp,48
    80001fe8:	00050993          	mv	s3,a0
    80001fec:	00058493          	mv	s1,a1
    80001ff0:	00060913          	mv	s2,a2
    for (uint64 cur = start; cur <= end; cur++) clearU(cur);
    80001ff4:	00996e63          	bltu	s2,s1,80002010 <_ZN4_PMT6clearUEmm+0x44>
    80001ff8:	00048593          	mv	a1,s1
    80001ffc:	00098513          	mv	a0,s3
    80002000:	00000097          	auipc	ra,0x0
    80002004:	f94080e7          	jalr	-108(ra) # 80001f94 <_ZN4_PMT6clearUEm>
    80002008:	00148493          	addi	s1,s1,1
    8000200c:	fe9ff06f          	j	80001ff4 <_ZN4_PMT6clearUEmm+0x28>
}
    80002010:	02813083          	ld	ra,40(sp)
    80002014:	02013403          	ld	s0,32(sp)
    80002018:	01813483          	ld	s1,24(sp)
    8000201c:	01013903          	ld	s2,16(sp)
    80002020:	00813983          	ld	s3,8(sp)
    80002024:	03010113          	addi	sp,sp,48
    80002028:	00008067          	ret

000000008000202c <_ZnwmPv>:
// Created by os on 11/26/22.
//

#include "../h/_placementNew.h"

void* operator new( size_t, void* where ) {
    8000202c:	ff010113          	addi	sp,sp,-16
    80002030:	00813423          	sd	s0,8(sp)
    80002034:	01010413          	addi	s0,sp,16
    return where;
    80002038:	00058513          	mv	a0,a1
    8000203c:	00813403          	ld	s0,8(sp)
    80002040:	01010113          	addi	sp,sp,16
    80002044:	00008067          	ret

0000000080002048 <_ZN5_Slab5allocEv>:
        *(void**)ptr = ptr + slotSize;
        ptr += slotSize;
    }
    *(void**)ptr = nullptr;
}
void* _Slab::alloc() {
    80002048:	ff010113          	addi	sp,sp,-16
    8000204c:	00813423          	sd	s0,8(sp)
    80002050:	01010413          	addi	s0,sp,16
    80002054:	00050793          	mv	a5,a0
    if (!free) return nullptr;
    80002058:	00853503          	ld	a0,8(a0)
    8000205c:	00050c63          	beqz	a0,80002074 <_ZN5_Slab5allocEv+0x2c>
    void* ret = free;
    free = *(void**)free;
    80002060:	00053703          	ld	a4,0(a0)
    80002064:	00e7b423          	sd	a4,8(a5) # fffffffffff00008 <end+0xffffffff7feebc78>
    allocated++;
    80002068:	0107a703          	lw	a4,16(a5)
    8000206c:	0017071b          	addiw	a4,a4,1
    80002070:	00e7a823          	sw	a4,16(a5)
    return ret;
}
    80002074:	00813403          	ld	s0,8(sp)
    80002078:	01010113          	addi	sp,sp,16
    8000207c:	00008067          	ret

0000000080002080 <_ZN5_Slab7deallocEPv>:
void _Slab::dealloc(void* ptr) {
    80002080:	ff010113          	addi	sp,sp,-16
    80002084:	00813423          	sd	s0,8(sp)
    80002088:	01010413          	addi	s0,sp,16
    *(void**)ptr = free;
    8000208c:	00853783          	ld	a5,8(a0)
    80002090:	00f5b023          	sd	a5,0(a1)
    free = ptr;
    80002094:	00b53423          	sd	a1,8(a0)
    allocated--;
    80002098:	01052783          	lw	a5,16(a0)
    8000209c:	fff7879b          	addiw	a5,a5,-1
    800020a0:	00f52823          	sw	a5,16(a0)
}
    800020a4:	00813403          	ld	s0,8(sp)
    800020a8:	01010113          	addi	sp,sp,16
    800020ac:	00008067          	ret

00000000800020b0 <_ZN5_Slab7isEmptyEv>:
bool _Slab::isEmpty() {
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00813423          	sd	s0,8(sp)
    800020b8:	01010413          	addi	s0,sp,16
    return allocated == 0;
    800020bc:	01052503          	lw	a0,16(a0)
}
    800020c0:	00153513          	seqz	a0,a0
    800020c4:	00813403          	ld	s0,8(sp)
    800020c8:	01010113          	addi	sp,sp,16
    800020cc:	00008067          	ret

00000000800020d0 <_ZN5_Slab6isFullEv>:
bool _Slab::isFull() {
    800020d0:	ff010113          	addi	sp,sp,-16
    800020d4:	00813423          	sd	s0,8(sp)
    800020d8:	01010413          	addi	s0,sp,16
    return free == nullptr;
    800020dc:	00853503          	ld	a0,8(a0)
}
    800020e0:	00153513          	seqz	a0,a0
    800020e4:	00813403          	ld	s0,8(sp)
    800020e8:	01010113          	addi	sp,sp,16
    800020ec:	00008067          	ret

00000000800020f0 <_ZN8_ObjSlab8containsEPv>:
    allocated = 0;
    free = (char*)this + sizeof(_Slab);
    //Ulancavanje slotova
    init((slabSize - sizeof(_ObjSlab)) / slotSize);
}
bool _ObjSlab::contains(void* adr) {
    800020f0:	ff010113          	addi	sp,sp,-16
    800020f4:	00813423          	sd	s0,8(sp)
    800020f8:	01010413          	addi	s0,sp,16
    return adr > this && adr < (char*)this + slabSize;
    800020fc:	00b57c63          	bgeu	a0,a1,80002114 <_ZN8_ObjSlab8containsEPv+0x24>
    80002100:	02053783          	ld	a5,32(a0)
    80002104:	00f50533          	add	a0,a0,a5
    80002108:	00a5ee63          	bltu	a1,a0,80002124 <_ZN8_ObjSlab8containsEPv+0x34>
    8000210c:	00000513          	li	a0,0
    80002110:	0080006f          	j	80002118 <_ZN8_ObjSlab8containsEPv+0x28>
    80002114:	00000513          	li	a0,0
}
    80002118:	00813403          	ld	s0,8(sp)
    8000211c:	01010113          	addi	sp,sp,16
    80002120:	00008067          	ret
    return adr > this && adr < (char*)this + slabSize;
    80002124:	00100513          	li	a0,1
    80002128:	ff1ff06f          	j	80002118 <_ZN8_ObjSlab8containsEPv+0x28>

000000008000212c <_ZN9_BuffSlab8containsEPv>:
    allocated = 0;
    free = slab;
    this->slotSize = slotSize;
    init(slabSize / slotSize);
}
bool _BuffSlab::contains(void* adr) {
    8000212c:	ff010113          	addi	sp,sp,-16
    80002130:	00813423          	sd	s0,8(sp)
    80002134:	01010413          	addi	s0,sp,16
    return adr >= slab && adr < (char*)slab + slabSize;
    80002138:	03853783          	ld	a5,56(a0)
    8000213c:	00f5ec63          	bltu	a1,a5,80002154 <_ZN9_BuffSlab8containsEPv+0x28>
    80002140:	02053703          	ld	a4,32(a0)
    80002144:	00e787b3          	add	a5,a5,a4
    80002148:	00f5ee63          	bltu	a1,a5,80002164 <_ZN9_BuffSlab8containsEPv+0x38>
    8000214c:	00000513          	li	a0,0
    80002150:	0080006f          	j	80002158 <_ZN9_BuffSlab8containsEPv+0x2c>
    80002154:	00000513          	li	a0,0
}
    80002158:	00813403          	ld	s0,8(sp)
    8000215c:	01010113          	addi	sp,sp,16
    80002160:	00008067          	ret
    return adr >= slab && adr < (char*)slab + slabSize;
    80002164:	00100513          	li	a0,1
    80002168:	ff1ff06f          	j	80002158 <_ZN9_BuffSlab8containsEPv+0x2c>

000000008000216c <_ZN5_SlabC1Emm>:
_Slab::_Slab(size_t slotSize, size_t slabSize) {
    8000216c:	ff010113          	addi	sp,sp,-16
    80002170:	00813423          	sd	s0,8(sp)
    80002174:	01010413          	addi	s0,sp,16
    80002178:	0000d797          	auipc	a5,0xd
    8000217c:	50878793          	addi	a5,a5,1288 # 8000f680 <_ZTV5_Slab+0x10>
    80002180:	00f53023          	sd	a5,0(a0)
    this->slotSize = slotSize; this->slabSize = slabSize;
    80002184:	00b53c23          	sd	a1,24(a0)
    80002188:	02c53023          	sd	a2,32(a0)
}
    8000218c:	00813403          	ld	s0,8(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <_ZN5_Slab4initEi>:
void _Slab::init(int num) {
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00813423          	sd	s0,8(sp)
    800021a0:	01010413          	addi	s0,sp,16
    char* ptr = (char*)free;
    800021a4:	00853783          	ld	a5,8(a0)
    for (int i = 0; i < num - 1; i++) {
    800021a8:	00000693          	li	a3,0
    800021ac:	fff5871b          	addiw	a4,a1,-1
    800021b0:	02e6d063          	bge	a3,a4,800021d0 <_ZN5_Slab4initEi+0x38>
        *(void**)ptr = ptr + slotSize;
    800021b4:	01853703          	ld	a4,24(a0)
    800021b8:	00e78733          	add	a4,a5,a4
    800021bc:	00e7b023          	sd	a4,0(a5)
        ptr += slotSize;
    800021c0:	01853703          	ld	a4,24(a0)
    800021c4:	00e787b3          	add	a5,a5,a4
    for (int i = 0; i < num - 1; i++) {
    800021c8:	0016869b          	addiw	a3,a3,1
    800021cc:	fe1ff06f          	j	800021ac <_ZN5_Slab4initEi+0x14>
    *(void**)ptr = nullptr;
    800021d0:	0007b023          	sd	zero,0(a5)
}
    800021d4:	00813403          	ld	s0,8(sp)
    800021d8:	01010113          	addi	sp,sp,16
    800021dc:	00008067          	ret

00000000800021e0 <_ZN8_ObjSlabC1Emm>:
_ObjSlab::_ObjSlab(size_t slotSize, size_t slabSize) : _Slab(slotSize, slabSize) {
    800021e0:	fd010113          	addi	sp,sp,-48
    800021e4:	02113423          	sd	ra,40(sp)
    800021e8:	02813023          	sd	s0,32(sp)
    800021ec:	00913c23          	sd	s1,24(sp)
    800021f0:	01213823          	sd	s2,16(sp)
    800021f4:	01313423          	sd	s3,8(sp)
    800021f8:	03010413          	addi	s0,sp,48
    800021fc:	00050493          	mv	s1,a0
    80002200:	00058993          	mv	s3,a1
    80002204:	00060913          	mv	s2,a2
    80002208:	00000097          	auipc	ra,0x0
    8000220c:	f64080e7          	jalr	-156(ra) # 8000216c <_ZN5_SlabC1Emm>
    80002210:	0000d797          	auipc	a5,0xd
    80002214:	4b078793          	addi	a5,a5,1200 # 8000f6c0 <_ZTV8_ObjSlab+0x10>
    80002218:	00f4b023          	sd	a5,0(s1)
    prev = next = nullptr;
    8000221c:	0204b423          	sd	zero,40(s1)
    80002220:	0204b823          	sd	zero,48(s1)
    allocated = 0;
    80002224:	0004a823          	sw	zero,16(s1)
    free = (char*)this + sizeof(_Slab);
    80002228:	03848793          	addi	a5,s1,56
    8000222c:	00f4b423          	sd	a5,8(s1)
    init((slabSize - sizeof(_ObjSlab)) / slotSize);
    80002230:	fc890913          	addi	s2,s2,-56
    80002234:	033955b3          	divu	a1,s2,s3
    80002238:	0005859b          	sext.w	a1,a1
    8000223c:	00048513          	mv	a0,s1
    80002240:	00000097          	auipc	ra,0x0
    80002244:	f58080e7          	jalr	-168(ra) # 80002198 <_ZN5_Slab4initEi>
}
    80002248:	02813083          	ld	ra,40(sp)
    8000224c:	02013403          	ld	s0,32(sp)
    80002250:	01813483          	ld	s1,24(sp)
    80002254:	01013903          	ld	s2,16(sp)
    80002258:	00813983          	ld	s3,8(sp)
    8000225c:	03010113          	addi	sp,sp,48
    80002260:	00008067          	ret

0000000080002264 <_ZN9_BuffSlabC1EmmPv>:
_BuffSlab::_BuffSlab(size_t slotSize, size_t slabSize, void* slabSpace) : _Slab(slotSize, slabSize) {
    80002264:	fd010113          	addi	sp,sp,-48
    80002268:	02113423          	sd	ra,40(sp)
    8000226c:	02813023          	sd	s0,32(sp)
    80002270:	00913c23          	sd	s1,24(sp)
    80002274:	01213823          	sd	s2,16(sp)
    80002278:	01313423          	sd	s3,8(sp)
    8000227c:	01413023          	sd	s4,0(sp)
    80002280:	03010413          	addi	s0,sp,48
    80002284:	00050493          	mv	s1,a0
    80002288:	00058993          	mv	s3,a1
    8000228c:	00060913          	mv	s2,a2
    80002290:	00068a13          	mv	s4,a3
    80002294:	00000097          	auipc	ra,0x0
    80002298:	ed8080e7          	jalr	-296(ra) # 8000216c <_ZN5_SlabC1Emm>
    8000229c:	0000d797          	auipc	a5,0xd
    800022a0:	46478793          	addi	a5,a5,1124 # 8000f700 <_ZTV9_BuffSlab+0x10>
    800022a4:	00f4b023          	sd	a5,0(s1)
    slab = slabSpace;
    800022a8:	0344bc23          	sd	s4,56(s1)
    prev = next = nullptr;
    800022ac:	0204b423          	sd	zero,40(s1)
    800022b0:	0204b823          	sd	zero,48(s1)
    allocated = 0;
    800022b4:	0004a823          	sw	zero,16(s1)
    free = slab;
    800022b8:	0144b423          	sd	s4,8(s1)
    this->slotSize = slotSize;
    800022bc:	0134bc23          	sd	s3,24(s1)
    init(slabSize / slotSize);
    800022c0:	033955b3          	divu	a1,s2,s3
    800022c4:	0005859b          	sext.w	a1,a1
    800022c8:	00048513          	mv	a0,s1
    800022cc:	00000097          	auipc	ra,0x0
    800022d0:	ecc080e7          	jalr	-308(ra) # 80002198 <_ZN5_Slab4initEi>
}
    800022d4:	02813083          	ld	ra,40(sp)
    800022d8:	02013403          	ld	s0,32(sp)
    800022dc:	01813483          	ld	s1,24(sp)
    800022e0:	01013903          	ld	s2,16(sp)
    800022e4:	00813983          	ld	s3,8(sp)
    800022e8:	00013a03          	ld	s4,0(sp)
    800022ec:	03010113          	addi	sp,sp,48
    800022f0:	00008067          	ret

00000000800022f4 <_ZN12kmem_cache_t19formatBuffSlabSpaceEP9_BuffSlabPv>:

kmem_cache_t* kmem_cache_t::cacheMem; //memorija u koju se smestaju kesevi
kmem_cache_t* kmem_cache_t::freeHead; //lista slobodnih
kmem_cache_t* kmem_cache_t::allocatedHead; //lista zauzetih
_BuffSlab* kmem_cache_t::buffSlabHead;
_BuffSlab* kmem_cache_t::formatBuffSlabSpace(_BuffSlab* start, void* end) {
    800022f4:	fd010113          	addi	sp,sp,-48
    800022f8:	02113423          	sd	ra,40(sp)
    800022fc:	02813023          	sd	s0,32(sp)
    80002300:	00913c23          	sd	s1,24(sp)
    80002304:	01213823          	sd	s2,16(sp)
    80002308:	01313423          	sd	s3,8(sp)
    8000230c:	01413023          	sd	s4,0(sp)
    80002310:	03010413          	addi	s0,sp,48
    80002314:	00050493          	mv	s1,a0
    80002318:	00058a13          	mv	s4,a1
    _BuffSlab* prev, *cur;
    prev = nullptr; cur = start;
    8000231c:	00000993          	li	s3,0
    80002320:	00c0006f          	j	8000232c <_ZN12kmem_cache_t19formatBuffSlabSpaceEP9_BuffSlabPv+0x38>
_BuffSlab* kmem_cache_t::formatBuffSlabSpace(_BuffSlab* start, void* end) {
    80002324:	00048993          	mv	s3,s1
    80002328:	00090493          	mv	s1,s2
    while (cur + 1 <= end) {
    8000232c:	04048913          	addi	s2,s1,64
    80002330:	032a6863          	bltu	s4,s2,80002360 <_ZN12kmem_cache_t19formatBuffSlabSpaceEP9_BuffSlabPv+0x6c>
        new (cur) _BuffSlab();
    80002334:	00048593          	mv	a1,s1
    80002338:	04000513          	li	a0,64
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	cf0080e7          	jalr	-784(ra) # 8000202c <_ZnwmPv>
    80002344:	00050863          	beqz	a0,80002354 <_ZN12kmem_cache_t19formatBuffSlabSpaceEP9_BuffSlabPv+0x60>

class _BuffSlab : public _Slab {
    void* slab;
public:
    _BuffSlab(size_t slotSize, size_t slabSize, void* slabSpace);
    _BuffSlab() {}
    80002348:	0000d797          	auipc	a5,0xd
    8000234c:	3b878793          	addi	a5,a5,952 # 8000f700 <_ZTV9_BuffSlab+0x10>
    80002350:	00f53023          	sd	a5,0(a0)
        if (prev) prev->next = cur;
    80002354:	fc0988e3          	beqz	s3,80002324 <_ZN12kmem_cache_t19formatBuffSlabSpaceEP9_BuffSlabPv+0x30>
    80002358:	0299b423          	sd	s1,40(s3)
    8000235c:	fc9ff06f          	j	80002324 <_ZN12kmem_cache_t19formatBuffSlabSpaceEP9_BuffSlabPv+0x30>
        prev = cur; cur++;
    }
    if (!prev) return nullptr;
    80002360:	00098463          	beqz	s3,80002368 <_ZN12kmem_cache_t19formatBuffSlabSpaceEP9_BuffSlabPv+0x74>
    prev->next = nullptr;
    80002364:	0209b423          	sd	zero,40(s3)
    return prev;
}
    80002368:	00098513          	mv	a0,s3
    8000236c:	02813083          	ld	ra,40(sp)
    80002370:	02013403          	ld	s0,32(sp)
    80002374:	01813483          	ld	s1,24(sp)
    80002378:	01013903          	ld	s2,16(sp)
    8000237c:	00813983          	ld	s3,8(sp)
    80002380:	00013a03          	ld	s4,0(sp)
    80002384:	03010113          	addi	sp,sp,48
    80002388:	00008067          	ret

000000008000238c <_ZN12kmem_cache_t19expandBuffSlabSpaceEv>:
void kmem_cache_t::expandBuffSlabSpace() {
    8000238c:	fe010113          	addi	sp,sp,-32
    80002390:	00113c23          	sd	ra,24(sp)
    80002394:	00813823          	sd	s0,16(sp)
    80002398:	00913423          	sd	s1,8(sp)
    8000239c:	02010413          	addi	s0,sp,32
    _BuffSlab* newspace = (_BuffSlab*)buddy->allocBlock(0);
    800023a0:	00000593          	li	a1,0
    800023a4:	0000d517          	auipc	a0,0xd
    800023a8:	67c53503          	ld	a0,1660(a0) # 8000fa20 <_ZN12kmem_cache_t5buddyE>
    800023ac:	00004097          	auipc	ra,0x4
    800023b0:	570080e7          	jalr	1392(ra) # 8000691c <_ZN10_BuddyTree10allocBlockEi>
    if (!newspace) return;
    800023b4:	02050663          	beqz	a0,800023e0 <_ZN12kmem_cache_t19expandBuffSlabSpaceEv+0x54>
    800023b8:	00050493          	mv	s1,a0
    _BuffSlab* last = formatBuffSlabSpace(newspace, (char*)newspace + BLOCK_SIZE);
    800023bc:	000015b7          	lui	a1,0x1
    800023c0:	00b505b3          	add	a1,a0,a1
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	f30080e7          	jalr	-208(ra) # 800022f4 <_ZN12kmem_cache_t19formatBuffSlabSpaceEP9_BuffSlabPv>
    last->next = buffSlabHead; buffSlabHead = newspace;
    800023cc:	0000d797          	auipc	a5,0xd
    800023d0:	65478793          	addi	a5,a5,1620 # 8000fa20 <_ZN12kmem_cache_t5buddyE>
    800023d4:	0087b703          	ld	a4,8(a5)
    800023d8:	02e53423          	sd	a4,40(a0)
    800023dc:	0097b423          	sd	s1,8(a5)
}
    800023e0:	01813083          	ld	ra,24(sp)
    800023e4:	01013403          	ld	s0,16(sp)
    800023e8:	00813483          	ld	s1,8(sp)
    800023ec:	02010113          	addi	sp,sp,32
    800023f0:	00008067          	ret

00000000800023f4 <_ZN12kmem_cache_t13allocBuffSlabEv>:
_BuffSlab* kmem_cache_t::allocBuffSlab() {
    if (!buffSlabHead) expandBuffSlabSpace();
    800023f4:	0000d797          	auipc	a5,0xd
    800023f8:	6347b783          	ld	a5,1588(a5) # 8000fa28 <_ZN12kmem_cache_t12buffSlabHeadE>
    800023fc:	02078063          	beqz	a5,8000241c <_ZN12kmem_cache_t13allocBuffSlabEv+0x28>
    if (!buffSlabHead) return nullptr;
    80002400:	0000d517          	auipc	a0,0xd
    80002404:	62853503          	ld	a0,1576(a0) # 8000fa28 <_ZN12kmem_cache_t12buffSlabHeadE>
    80002408:	04050a63          	beqz	a0,8000245c <_ZN12kmem_cache_t13allocBuffSlabEv+0x68>
    _BuffSlab* ret = buffSlabHead;
    buffSlabHead = (_BuffSlab*)(ret->next);
    8000240c:	02853783          	ld	a5,40(a0)
    80002410:	0000d717          	auipc	a4,0xd
    80002414:	60f73c23          	sd	a5,1560(a4) # 8000fa28 <_ZN12kmem_cache_t12buffSlabHeadE>
    return ret;
    80002418:	00008067          	ret
_BuffSlab* kmem_cache_t::allocBuffSlab() {
    8000241c:	ff010113          	addi	sp,sp,-16
    80002420:	00113423          	sd	ra,8(sp)
    80002424:	00813023          	sd	s0,0(sp)
    80002428:	01010413          	addi	s0,sp,16
    if (!buffSlabHead) expandBuffSlabSpace();
    8000242c:	00000097          	auipc	ra,0x0
    80002430:	f60080e7          	jalr	-160(ra) # 8000238c <_ZN12kmem_cache_t19expandBuffSlabSpaceEv>
    if (!buffSlabHead) return nullptr;
    80002434:	0000d517          	auipc	a0,0xd
    80002438:	5f453503          	ld	a0,1524(a0) # 8000fa28 <_ZN12kmem_cache_t12buffSlabHeadE>
    8000243c:	00050863          	beqz	a0,8000244c <_ZN12kmem_cache_t13allocBuffSlabEv+0x58>
    buffSlabHead = (_BuffSlab*)(ret->next);
    80002440:	02853783          	ld	a5,40(a0)
    80002444:	0000d717          	auipc	a4,0xd
    80002448:	5ef73223          	sd	a5,1508(a4) # 8000fa28 <_ZN12kmem_cache_t12buffSlabHeadE>
}
    8000244c:	00813083          	ld	ra,8(sp)
    80002450:	00013403          	ld	s0,0(sp)
    80002454:	01010113          	addi	sp,sp,16
    80002458:	00008067          	ret
    8000245c:	00008067          	ret

0000000080002460 <_ZN12kmem_cache_t15deallocBuffSlabEP9_BuffSlab>:
void kmem_cache_t::deallocBuffSlab(_BuffSlab* slab) {
    80002460:	ff010113          	addi	sp,sp,-16
    80002464:	00813423          	sd	s0,8(sp)
    80002468:	01010413          	addi	s0,sp,16
    slab->next = buffSlabHead;
    8000246c:	0000d797          	auipc	a5,0xd
    80002470:	5b478793          	addi	a5,a5,1460 # 8000fa20 <_ZN12kmem_cache_t5buddyE>
    80002474:	0087b703          	ld	a4,8(a5)
    80002478:	02e53423          	sd	a4,40(a0)
    buffSlabHead = slab;
    8000247c:	00a7b423          	sd	a0,8(a5)
}
    80002480:	00813403          	ld	s0,8(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret

000000008000248c <_ZN12kmem_cache_t8allocKctEv>:
    for (int i = 0; i < buffCnt; i++) {
        new (cacheMem + i) kmem_cache_t("buffCache", buffSize, nullptr, nullptr, true);
        buffSize <<= 1;
    }
}
kmem_cache_t* kmem_cache_t::allocKct() {
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00813423          	sd	s0,8(sp)
    80002494:	01010413          	addi	s0,sp,16
    if (!freeHead) return nullptr;
    80002498:	0000d517          	auipc	a0,0xd
    8000249c:	59853503          	ld	a0,1432(a0) # 8000fa30 <_ZN12kmem_cache_t8freeHeadE>
    800024a0:	02050863          	beqz	a0,800024d0 <_ZN12kmem_cache_t8allocKctEv+0x44>
    //izbacuje se iz liste slobodnih
    kmem_cache_t* ret = freeHead;
    freeHead = freeHead->next;
    800024a4:	04853783          	ld	a5,72(a0)
    800024a8:	0000d717          	auipc	a4,0xd
    800024ac:	58f73423          	sd	a5,1416(a4) # 8000fa30 <_ZN12kmem_cache_t8freeHeadE>
    if (freeHead) freeHead->prev = nullptr;
    800024b0:	00078463          	beqz	a5,800024b8 <_ZN12kmem_cache_t8allocKctEv+0x2c>
    800024b4:	0407b823          	sd	zero,80(a5)
    //ubacuje se u listu alociranih
    ret->next = allocatedHead; ret->prev = nullptr;
    800024b8:	0000d797          	auipc	a5,0xd
    800024bc:	5807b783          	ld	a5,1408(a5) # 8000fa38 <_ZN12kmem_cache_t13allocatedHeadE>
    800024c0:	04f53423          	sd	a5,72(a0)
    800024c4:	04053823          	sd	zero,80(a0)
    if (allocatedHead) allocatedHead->prev = ret;
    800024c8:	00078463          	beqz	a5,800024d0 <_ZN12kmem_cache_t8allocKctEv+0x44>
    800024cc:	04a7b823          	sd	a0,80(a5)
    return ret;
}
    800024d0:	00813403          	ld	s0,8(sp)
    800024d4:	01010113          	addi	sp,sp,16
    800024d8:	00008067          	ret

00000000800024dc <_ZN12kmem_cache_t10deallocKctEPS_>:
void kmem_cache_t::deallocKct(kmem_cache_t* kct) {
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00813423          	sd	s0,8(sp)
    800024e4:	01010413          	addi	s0,sp,16
    //izbacuje se iz liste alociranih
    if (kct->prev) kct->prev->next = kct->next;
    800024e8:	05053783          	ld	a5,80(a0)
    800024ec:	04078463          	beqz	a5,80002534 <_ZN12kmem_cache_t10deallocKctEPS_+0x58>
    800024f0:	04853703          	ld	a4,72(a0)
    800024f4:	04e7b423          	sd	a4,72(a5)
    else allocatedHead = kct->next;
    if (kct->next) kct->next->prev = kct->prev;
    800024f8:	04853783          	ld	a5,72(a0)
    800024fc:	00078663          	beqz	a5,80002508 <_ZN12kmem_cache_t10deallocKctEPS_+0x2c>
    80002500:	05053703          	ld	a4,80(a0)
    80002504:	04e7b823          	sd	a4,80(a5)
    //ubacuje se u listu slobodnih
    kct->next = freeHead;
    80002508:	0000d797          	auipc	a5,0xd
    8000250c:	5287b783          	ld	a5,1320(a5) # 8000fa30 <_ZN12kmem_cache_t8freeHeadE>
    80002510:	04f53423          	sd	a5,72(a0)
    kct->prev = nullptr;
    80002514:	04053823          	sd	zero,80(a0)
    if (freeHead) freeHead->prev = kct;
    80002518:	00078463          	beqz	a5,80002520 <_ZN12kmem_cache_t10deallocKctEPS_+0x44>
    8000251c:	04a7b823          	sd	a0,80(a5)
    freeHead = kct;
    80002520:	0000d797          	auipc	a5,0xd
    80002524:	50a7b823          	sd	a0,1296(a5) # 8000fa30 <_ZN12kmem_cache_t8freeHeadE>
}
    80002528:	00813403          	ld	s0,8(sp)
    8000252c:	01010113          	addi	sp,sp,16
    80002530:	00008067          	ret
    else allocatedHead = kct->next;
    80002534:	04853783          	ld	a5,72(a0)
    80002538:	0000d717          	auipc	a4,0xd
    8000253c:	50f73023          	sd	a5,1280(a4) # 8000fa38 <_ZN12kmem_cache_t13allocatedHeadE>
    80002540:	fb9ff06f          	j	800024f8 <_ZN12kmem_cache_t10deallocKctEPS_+0x1c>

0000000080002544 <_ZN12kmem_cache_t12getBuffCacheEm>:
kmem_cache_t* kmem_cache_t::getBuffCache(size_t size) {
    80002544:	ff010113          	addi	sp,sp,-16
    80002548:	00813423          	sd	s0,8(sp)
    8000254c:	01010413          	addi	s0,sp,16
    //dohvata BUFFCACHE za bafer prosledjene velicine
    int pow = 0; size_t buffSize = 1;
    80002550:	00100793          	li	a5,1
    80002554:	00000713          	li	a4,0
    while (buffSize < size) pow++, buffSize <<= 1;
    80002558:	00a7f863          	bgeu	a5,a0,80002568 <_ZN12kmem_cache_t12getBuffCacheEm+0x24>
    8000255c:	0017071b          	addiw	a4,a4,1
    80002560:	00179793          	slli	a5,a5,0x1
    80002564:	ff5ff06f          	j	80002558 <_ZN12kmem_cache_t12getBuffCacheEm+0x14>
    if (pow < buffPowMin) pow = buffPowMin;
    80002568:	00400793          	li	a5,4
    8000256c:	00e7da63          	bge	a5,a4,80002580 <_ZN12kmem_cache_t12getBuffCacheEm+0x3c>
    if (pow > buffPowMax) pow = buffPowMax;
    80002570:	01100793          	li	a5,17
    80002574:	00e7d863          	bge	a5,a4,80002584 <_ZN12kmem_cache_t12getBuffCacheEm+0x40>
    80002578:	01100713          	li	a4,17
    8000257c:	0080006f          	j	80002584 <_ZN12kmem_cache_t12getBuffCacheEm+0x40>
    if (pow < buffPowMin) pow = buffPowMin;
    80002580:	00500713          	li	a4,5
    return cacheMem + pow - buffPowMin;
    80002584:	00171513          	slli	a0,a4,0x1
    80002588:	00e50733          	add	a4,a0,a4
    8000258c:	00571713          	slli	a4,a4,0x5
    80002590:	e2070713          	addi	a4,a4,-480
}
    80002594:	0000d517          	auipc	a0,0xd
    80002598:	4ac53503          	ld	a0,1196(a0) # 8000fa40 <_ZN12kmem_cache_t8cacheMemE>
    8000259c:	00e50533          	add	a0,a0,a4
    800025a0:	00813403          	ld	s0,8(sp)
    800025a4:	01010113          	addi	sp,sp,16
    800025a8:	00008067          	ret

00000000800025ac <_ZN12kmem_cache_t4moveEPP5_SlabS2_S1_>:
void kmem_cache_t::move(_Slab** listFrom, _Slab** listTo, _Slab* slab) {
    800025ac:	ff010113          	addi	sp,sp,-16
    800025b0:	00813423          	sd	s0,8(sp)
    800025b4:	01010413          	addi	s0,sp,16
    //izbacivanje
    _Slab* prev = slab->prev;
    800025b8:	03063783          	ld	a5,48(a2)
    if (prev) prev->next = slab->next;
    800025bc:	04078063          	beqz	a5,800025fc <_ZN12kmem_cache_t4moveEPP5_SlabS2_S1_+0x50>
    800025c0:	02863703          	ld	a4,40(a2)
    800025c4:	02e7b423          	sd	a4,40(a5)
    else *listFrom = slab->next;
    _Slab* next = slab->next;
    800025c8:	02863703          	ld	a4,40(a2)
    if (next) next->prev = prev;
    800025cc:	00070463          	beqz	a4,800025d4 <_ZN12kmem_cache_t4moveEPP5_SlabS2_S1_+0x28>
    800025d0:	02f73823          	sd	a5,48(a4)
    //ubacivanje
    slab->next = *listTo; slab->prev = nullptr;
    800025d4:	0005b783          	ld	a5,0(a1) # 1000 <_entry-0x7ffff000>
    800025d8:	02f63423          	sd	a5,40(a2)
    800025dc:	02063823          	sd	zero,48(a2)
    if (*listTo) (*listTo)->prev = slab;
    800025e0:	0005b783          	ld	a5,0(a1)
    800025e4:	00078463          	beqz	a5,800025ec <_ZN12kmem_cache_t4moveEPP5_SlabS2_S1_+0x40>
    800025e8:	02c7b823          	sd	a2,48(a5)
    *listTo = slab;
    800025ec:	00c5b023          	sd	a2,0(a1)
}
    800025f0:	00813403          	ld	s0,8(sp)
    800025f4:	01010113          	addi	sp,sp,16
    800025f8:	00008067          	ret
    else *listFrom = slab->next;
    800025fc:	02863703          	ld	a4,40(a2)
    80002600:	00e53023          	sd	a4,0(a0)
    80002604:	fc5ff06f          	j	800025c8 <_ZN12kmem_cache_t4moveEPP5_SlabS2_S1_+0x1c>

0000000080002608 <_ZN12kmem_cache_t12calcSlabSizeEv>:
        if (cacheMem[i].dealloc(buff)) return true;
    }
    return false;
}

void kmem_cache_t::calcSlabSize() {
    80002608:	ff010113          	addi	sp,sp,-16
    8000260c:	00813423          	sd	s0,8(sp)
    80002610:	01010413          	addi	s0,sp,16
    slabSize = BLOCK_SIZE;
    80002614:	000017b7          	lui	a5,0x1
    80002618:	02f53423          	sd	a5,40(a0)
    if (buffCache) {
    8000261c:	04054783          	lbu	a5,64(a0)
    80002620:	00078e63          	beqz	a5,8000263c <_ZN12kmem_cache_t12calcSlabSizeEv+0x34>
        while (slotSize > slabSize) slabSize <<= 1;
    80002624:	02053703          	ld	a4,32(a0)
    80002628:	02853783          	ld	a5,40(a0)
    8000262c:	04e7f063          	bgeu	a5,a4,8000266c <_ZN12kmem_cache_t12calcSlabSizeEv+0x64>
    80002630:	00179793          	slli	a5,a5,0x1
    80002634:	02f53423          	sd	a5,40(a0)
    80002638:	fedff06f          	j	80002624 <_ZN12kmem_cache_t12calcSlabSizeEv+0x1c>
    }
    else {
        size_t headerSize = sizeof(_ObjSlab);
        if (slotSize <= BLOCK_SIZE / 8) return;
    8000263c:	02053683          	ld	a3,32(a0)
    80002640:	20000793          	li	a5,512
    80002644:	00d7e863          	bltu	a5,a3,80002654 <_ZN12kmem_cache_t12calcSlabSizeEv+0x4c>
    80002648:	0240006f          	j	8000266c <_ZN12kmem_cache_t12calcSlabSizeEv+0x64>
        else while (slotSize > slabSize - headerSize || (slabSize - headerSize) % slotSize > slotSize / 8) slabSize <<= 1;
    8000264c:	00179793          	slli	a5,a5,0x1
    80002650:	02f53423          	sd	a5,40(a0)
    80002654:	02853783          	ld	a5,40(a0)
    80002658:	fc878713          	addi	a4,a5,-56 # fc8 <_entry-0x7ffff038>
    8000265c:	fed768e3          	bltu	a4,a3,8000264c <_ZN12kmem_cache_t12calcSlabSizeEv+0x44>
    80002660:	02d77733          	remu	a4,a4,a3
    80002664:	0036d613          	srli	a2,a3,0x3
    80002668:	fee662e3          	bltu	a2,a4,8000264c <_ZN12kmem_cache_t12calcSlabSizeEv+0x44>
    }
}
    8000266c:	00813403          	ld	s0,8(sp)
    80002670:	01010113          	addi	sp,sp,16
    80002674:	00008067          	ret

0000000080002678 <_ZN12kmem_cache_tC1EPKcmPFvPvES4_b>:
kmem_cache_t::kmem_cache_t(const char* name, size_t size, void (*ctor)(void*), void (*dtor)(void*), bool buffCache) {
    80002678:	ff010113          	addi	sp,sp,-16
    8000267c:	00113423          	sd	ra,8(sp)
    80002680:	00813023          	sd	s0,0(sp)
    80002684:	01010413          	addi	s0,sp,16
    80002688:	04053c23          	sd	zero,88(a0)
    this->name = name;
    8000268c:	00b53c23          	sd	a1,24(a0)
    this->slotSize = size;
    80002690:	02c53023          	sd	a2,32(a0)
    if (buffCache) {
        //ovde bi trebalo proveriti da li je size stepen dvojke
    }
    this->ctor = ctor;
    80002694:	02d53823          	sd	a3,48(a0)
    this->dtor = dtor;
    80002698:	02e53c23          	sd	a4,56(a0)
    this->buffCache = buffCache;
    8000269c:	04f50023          	sb	a5,64(a0)
    full = free = partial = nullptr;
    800026a0:	00053823          	sd	zero,16(a0)
    800026a4:	00053423          	sd	zero,8(a0)
    800026a8:	00053023          	sd	zero,0(a0)
    err = nullptr;
    calcSlabSize();
    800026ac:	00000097          	auipc	ra,0x0
    800026b0:	f5c080e7          	jalr	-164(ra) # 80002608 <_ZN12kmem_cache_t12calcSlabSizeEv>
}
    800026b4:	00813083          	ld	ra,8(sp)
    800026b8:	00013403          	ld	s0,0(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_ZN12kmem_cache_tC1Ev>:
kmem_cache_t::kmem_cache_t() {
    800026c4:	ff010113          	addi	sp,sp,-16
    800026c8:	00813423          	sd	s0,8(sp)
    800026cc:	01010413          	addi	s0,sp,16
    800026d0:	04053c23          	sd	zero,88(a0)
    full = free = partial = nullptr;
    800026d4:	00053823          	sd	zero,16(a0)
    800026d8:	00053423          	sd	zero,8(a0)
    800026dc:	00053023          	sd	zero,0(a0)
    ctor = dtor = nullptr;
    800026e0:	02053c23          	sd	zero,56(a0)
    800026e4:	02053823          	sd	zero,48(a0)
    name = nullptr;
    800026e8:	00053c23          	sd	zero,24(a0)
    next = prev = nullptr;
    800026ec:	04053823          	sd	zero,80(a0)
    800026f0:	04053423          	sd	zero,72(a0)
    slotSize = slabSize = 0;
    800026f4:	02053423          	sd	zero,40(a0)
    800026f8:	02053023          	sd	zero,32(a0)
    buffCache = false;
    800026fc:	04050023          	sb	zero,64(a0)
    err = nullptr;
}
    80002700:	00813403          	ld	s0,8(sp)
    80002704:	01010113          	addi	sp,sp,16
    80002708:	00008067          	ret

000000008000270c <_ZN12kmem_cache_t9kmem_initEP10_BuddyTree>:
void kmem_cache_t::kmem_init(_BuddyTree* bud) {
    8000270c:	fd010113          	addi	sp,sp,-48
    80002710:	02113423          	sd	ra,40(sp)
    80002714:	02813023          	sd	s0,32(sp)
    80002718:	00913c23          	sd	s1,24(sp)
    8000271c:	01213823          	sd	s2,16(sp)
    80002720:	01313423          	sd	s3,8(sp)
    80002724:	03010413          	addi	s0,sp,48
    buddy = bud;
    80002728:	0000d497          	auipc	s1,0xd
    8000272c:	2f848493          	addi	s1,s1,760 # 8000fa20 <_ZN12kmem_cache_t5buddyE>
    80002730:	00a4b023          	sd	a0,0(s1)
    cacheMem = (kmem_cache_t*)buddy->allocBlock(0);
    80002734:	00000593          	li	a1,0
    80002738:	00004097          	auipc	ra,0x4
    8000273c:	1e4080e7          	jalr	484(ra) # 8000691c <_ZN10_BuddyTree10allocBlockEi>
    80002740:	02a4b023          	sd	a0,32(s1)
    for (int i = 0; i < MAX; i++) {
    80002744:	00000913          	li	s2,0
    kmem_cache_t* prev = nullptr, * cur = nullptr;
    80002748:	00000993          	li	s3,0
    8000274c:	00c0006f          	j	80002758 <_ZN12kmem_cache_t9kmem_initEP10_BuddyTree+0x4c>
    for (int i = 0; i < MAX; i++) {
    80002750:	0019091b          	addiw	s2,s2,1
        cur = cacheMem + buffCnt + i;
    80002754:	00048993          	mv	s3,s1
    for (int i = 0; i < MAX; i++) {
    80002758:	01300793          	li	a5,19
    8000275c:	0527c863          	blt	a5,s2,800027ac <_ZN12kmem_cache_t9kmem_initEP10_BuddyTree+0xa0>
        cur = cacheMem + buffCnt + i;
    80002760:	00d90793          	addi	a5,s2,13
    80002764:	00179493          	slli	s1,a5,0x1
    80002768:	00f484b3          	add	s1,s1,a5
    8000276c:	00549793          	slli	a5,s1,0x5
    80002770:	0000d497          	auipc	s1,0xd
    80002774:	2d04b483          	ld	s1,720(s1) # 8000fa40 <_ZN12kmem_cache_t8cacheMemE>
    80002778:	00f484b3          	add	s1,s1,a5
        new (cacheMem + buffCnt + i) kmem_cache_t();
    8000277c:	00048593          	mv	a1,s1
    80002780:	06000513          	li	a0,96
    80002784:	00000097          	auipc	ra,0x0
    80002788:	8a8080e7          	jalr	-1880(ra) # 8000202c <_ZnwmPv>
    8000278c:	00050663          	beqz	a0,80002798 <_ZN12kmem_cache_t9kmem_initEP10_BuddyTree+0x8c>
    80002790:	00000097          	auipc	ra,0x0
    80002794:	f34080e7          	jalr	-204(ra) # 800026c4 <_ZN12kmem_cache_tC1Ev>
        cur->prev = prev; cur->next = nullptr;
    80002798:	0534b823          	sd	s3,80(s1)
    8000279c:	0404b423          	sd	zero,72(s1)
        if (prev) prev->next = cur;
    800027a0:	fa0988e3          	beqz	s3,80002750 <_ZN12kmem_cache_t9kmem_initEP10_BuddyTree+0x44>
    800027a4:	0499b423          	sd	s1,72(s3)
    800027a8:	fa9ff06f          	j	80002750 <_ZN12kmem_cache_t9kmem_initEP10_BuddyTree+0x44>
    freeHead = cacheMem + buffCnt;
    800027ac:	0000d797          	auipc	a5,0xd
    800027b0:	27478793          	addi	a5,a5,628 # 8000fa20 <_ZN12kmem_cache_t5buddyE>
    800027b4:	0207b703          	ld	a4,32(a5)
    800027b8:	4e070693          	addi	a3,a4,1248
    800027bc:	00d7b823          	sd	a3,16(a5)
    allocatedHead = nullptr;
    800027c0:	0007bc23          	sd	zero,24(a5)
    buffSlabHead = (_BuffSlab*)(cacheMem + buffCnt + MAX);
    800027c4:	000015b7          	lui	a1,0x1
    800027c8:	c6058513          	addi	a0,a1,-928 # c60 <_entry-0x7ffff3a0>
    800027cc:	00a70533          	add	a0,a4,a0
    800027d0:	00a7b423          	sd	a0,8(a5)
    if (!formatBuffSlabSpace(buffSlabHead, (char*)cacheMem + BLOCK_SIZE)) {
    800027d4:	00b705b3          	add	a1,a4,a1
    800027d8:	00000097          	auipc	ra,0x0
    800027dc:	b1c080e7          	jalr	-1252(ra) # 800022f4 <_ZN12kmem_cache_t19formatBuffSlabSpaceEP9_BuffSlabPv>
    800027e0:	00050863          	beqz	a0,800027f0 <_ZN12kmem_cache_t9kmem_initEP10_BuddyTree+0xe4>
        cur = cacheMem + buffCnt + i;
    800027e4:	00000493          	li	s1,0
    800027e8:	02000913          	li	s2,32
    800027ec:	0200006f          	j	8000280c <_ZN12kmem_cache_t9kmem_initEP10_BuddyTree+0x100>
        buffSlabHead = nullptr; expandBuffSlabSpace();
    800027f0:	0000d797          	auipc	a5,0xd
    800027f4:	2207bc23          	sd	zero,568(a5) # 8000fa28 <_ZN12kmem_cache_t12buffSlabHeadE>
    800027f8:	00000097          	auipc	ra,0x0
    800027fc:	b94080e7          	jalr	-1132(ra) # 8000238c <_ZN12kmem_cache_t19expandBuffSlabSpaceEv>
    80002800:	fe5ff06f          	j	800027e4 <_ZN12kmem_cache_t9kmem_initEP10_BuddyTree+0xd8>
        buffSize <<= 1;
    80002804:	00191913          	slli	s2,s2,0x1
    for (int i = 0; i < buffCnt; i++) {
    80002808:	0014849b          	addiw	s1,s1,1
    8000280c:	00c00793          	li	a5,12
    80002810:	0497c863          	blt	a5,s1,80002860 <_ZN12kmem_cache_t9kmem_initEP10_BuddyTree+0x154>
        new (cacheMem + i) kmem_cache_t("buffCache", buffSize, nullptr, nullptr, true);
    80002814:	00149793          	slli	a5,s1,0x1
    80002818:	009787b3          	add	a5,a5,s1
    8000281c:	00579793          	slli	a5,a5,0x5
    80002820:	0000d597          	auipc	a1,0xd
    80002824:	2205b583          	ld	a1,544(a1) # 8000fa40 <_ZN12kmem_cache_t8cacheMemE>
    80002828:	00f585b3          	add	a1,a1,a5
    8000282c:	06000513          	li	a0,96
    80002830:	fffff097          	auipc	ra,0xfffff
    80002834:	7fc080e7          	jalr	2044(ra) # 8000202c <_ZnwmPv>
    80002838:	fc0506e3          	beqz	a0,80002804 <_ZN12kmem_cache_t9kmem_initEP10_BuddyTree+0xf8>
    8000283c:	00100793          	li	a5,1
    80002840:	00000713          	li	a4,0
    80002844:	00000693          	li	a3,0
    80002848:	00090613          	mv	a2,s2
    8000284c:	00009597          	auipc	a1,0x9
    80002850:	96458593          	addi	a1,a1,-1692 # 8000b1b0 <PAGEOFFMASK+0x18c>
    80002854:	00000097          	auipc	ra,0x0
    80002858:	e24080e7          	jalr	-476(ra) # 80002678 <_ZN12kmem_cache_tC1EPKcmPFvPvES4_b>
    8000285c:	fa9ff06f          	j	80002804 <_ZN12kmem_cache_t9kmem_initEP10_BuddyTree+0xf8>
}
    80002860:	02813083          	ld	ra,40(sp)
    80002864:	02013403          	ld	s0,32(sp)
    80002868:	01813483          	ld	s1,24(sp)
    8000286c:	01013903          	ld	s2,16(sp)
    80002870:	00813983          	ld	s3,8(sp)
    80002874:	03010113          	addi	sp,sp,48
    80002878:	00008067          	ret

000000008000287c <_ZN12kmem_cache_t12deallocSlabsEP5_Slab>:
void kmem_cache_t::deallocSlabs(_Slab* head) {
    8000287c:	fd010113          	addi	sp,sp,-48
    80002880:	02113423          	sd	ra,40(sp)
    80002884:	02813023          	sd	s0,32(sp)
    80002888:	00913c23          	sd	s1,24(sp)
    8000288c:	01213823          	sd	s2,16(sp)
    80002890:	01313423          	sd	s3,8(sp)
    80002894:	03010413          	addi	s0,sp,48
    80002898:	00050993          	mv	s3,a0
    8000289c:	00058493          	mv	s1,a1
    _Slab* cur = head;
    800028a0:	01c0006f          	j	800028bc <_ZN12kmem_cache_t12deallocSlabsEP5_Slab+0x40>
        if (buffCache) {
            _BuffSlab* t = (_BuffSlab*)tmp;
            buddy->dealloc(t->getSlab());
            deallocBuffSlab(t);
        }
        else buddy->dealloc(tmp);
    800028a4:	00048593          	mv	a1,s1
    800028a8:	0000d517          	auipc	a0,0xd
    800028ac:	17853503          	ld	a0,376(a0) # 8000fa20 <_ZN12kmem_cache_t5buddyE>
    800028b0:	00004097          	auipc	ra,0x4
    800028b4:	1c8080e7          	jalr	456(ra) # 80006a78 <_ZN10_BuddyTree7deallocEPv>
void kmem_cache_t::deallocSlabs(_Slab* head) {
    800028b8:	00090493          	mv	s1,s2
    while (cur) {
    800028bc:	02048a63          	beqz	s1,800028f0 <_ZN12kmem_cache_t12deallocSlabsEP5_Slab+0x74>
        cur = cur->next;
    800028c0:	0284b903          	ld	s2,40(s1)
        if (buffCache) {
    800028c4:	0409c783          	lbu	a5,64(s3)
    800028c8:	fc078ee3          	beqz	a5,800028a4 <_ZN12kmem_cache_t12deallocSlabsEP5_Slab+0x28>
            buddy->dealloc(t->getSlab());
    800028cc:	0384b583          	ld	a1,56(s1)
    800028d0:	0000d517          	auipc	a0,0xd
    800028d4:	15053503          	ld	a0,336(a0) # 8000fa20 <_ZN12kmem_cache_t5buddyE>
    800028d8:	00004097          	auipc	ra,0x4
    800028dc:	1a0080e7          	jalr	416(ra) # 80006a78 <_ZN10_BuddyTree7deallocEPv>
            deallocBuffSlab(t);
    800028e0:	00048513          	mv	a0,s1
    800028e4:	00000097          	auipc	ra,0x0
    800028e8:	b7c080e7          	jalr	-1156(ra) # 80002460 <_ZN12kmem_cache_t15deallocBuffSlabEP9_BuffSlab>
    800028ec:	fcdff06f          	j	800028b8 <_ZN12kmem_cache_t12deallocSlabsEP5_Slab+0x3c>
    }
}
    800028f0:	02813083          	ld	ra,40(sp)
    800028f4:	02013403          	ld	s0,32(sp)
    800028f8:	01813483          	ld	s1,24(sp)
    800028fc:	01013903          	ld	s2,16(sp)
    80002900:	00813983          	ld	s3,8(sp)
    80002904:	03010113          	addi	sp,sp,48
    80002908:	00008067          	ret

000000008000290c <_ZN12kmem_cache_tD1Ev>:
kmem_cache_t::~kmem_cache_t() {
    8000290c:	fe010113          	addi	sp,sp,-32
    80002910:	00113c23          	sd	ra,24(sp)
    80002914:	00813823          	sd	s0,16(sp)
    80002918:	00913423          	sd	s1,8(sp)
    8000291c:	02010413          	addi	s0,sp,32
    80002920:	00050493          	mv	s1,a0
    //dealokacija i reset podataka
    deallocSlabs(full); deallocSlabs(partial); deallocSlabs(free);
    80002924:	00053583          	ld	a1,0(a0)
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	f54080e7          	jalr	-172(ra) # 8000287c <_ZN12kmem_cache_t12deallocSlabsEP5_Slab>
    80002930:	0104b583          	ld	a1,16(s1)
    80002934:	00048513          	mv	a0,s1
    80002938:	00000097          	auipc	ra,0x0
    8000293c:	f44080e7          	jalr	-188(ra) # 8000287c <_ZN12kmem_cache_t12deallocSlabsEP5_Slab>
    80002940:	0084b583          	ld	a1,8(s1)
    80002944:	00048513          	mv	a0,s1
    80002948:	00000097          	auipc	ra,0x0
    8000294c:	f34080e7          	jalr	-204(ra) # 8000287c <_ZN12kmem_cache_t12deallocSlabsEP5_Slab>
    ctor = dtor = nullptr;
    name = nullptr;
    slotSize = slabSize = 0;
    buffCache = false;
    err = nullptr;
}
    80002950:	01813083          	ld	ra,24(sp)
    80002954:	01013403          	ld	s0,16(sp)
    80002958:	00813483          	ld	s1,8(sp)
    8000295c:	02010113          	addi	sp,sp,32
    80002960:	00008067          	ret

0000000080002964 <_ZN12kmem_cache_t9allocSlabEv>:
_Slab* kmem_cache_t::allocSlab() {
    80002964:	fd010113          	addi	sp,sp,-48
    80002968:	02113423          	sd	ra,40(sp)
    8000296c:	02813023          	sd	s0,32(sp)
    80002970:	00913c23          	sd	s1,24(sp)
    80002974:	01213823          	sd	s2,16(sp)
    80002978:	01313423          	sd	s3,8(sp)
    8000297c:	03010413          	addi	s0,sp,48
    80002980:	00050493          	mv	s1,a0
    if (buffCache) {
    80002984:	04054783          	lbu	a5,64(a0)
    80002988:	06078863          	beqz	a5,800029f8 <_ZN12kmem_cache_t9allocSlabEv+0x94>
        _BuffSlab* slab = allocBuffSlab();
    8000298c:	00000097          	auipc	ra,0x0
    80002990:	a68080e7          	jalr	-1432(ra) # 800023f4 <_ZN12kmem_cache_t13allocBuffSlabEv>
    80002994:	00050913          	mv	s2,a0
        if (!slab) return nullptr;
    80002998:	0a050063          	beqz	a0,80002a38 <_ZN12kmem_cache_t9allocSlabEv+0xd4>
        void* slabSpace = buddy->alloc(slabSize);
    8000299c:	0284b583          	ld	a1,40(s1)
    800029a0:	0000d517          	auipc	a0,0xd
    800029a4:	08053503          	ld	a0,128(a0) # 8000fa20 <_ZN12kmem_cache_t5buddyE>
    800029a8:	00004097          	auipc	ra,0x4
    800029ac:	08c080e7          	jalr	140(ra) # 80006a34 <_ZN10_BuddyTree5allocEm>
    800029b0:	00050993          	mv	s3,a0
        if (!slabSpace) { deallocBuffSlab(slab); return nullptr; }
    800029b4:	02050863          	beqz	a0,800029e4 <_ZN12kmem_cache_t9allocSlabEv+0x80>
        new (slab) _BuffSlab(slotSize, slabSize, slabSpace);
    800029b8:	00090593          	mv	a1,s2
    800029bc:	04000513          	li	a0,64
    800029c0:	fffff097          	auipc	ra,0xfffff
    800029c4:	66c080e7          	jalr	1644(ra) # 8000202c <_ZnwmPv>
    800029c8:	06050863          	beqz	a0,80002a38 <_ZN12kmem_cache_t9allocSlabEv+0xd4>
    800029cc:	00098693          	mv	a3,s3
    800029d0:	0284b603          	ld	a2,40(s1)
    800029d4:	0204b583          	ld	a1,32(s1)
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	88c080e7          	jalr	-1908(ra) # 80002264 <_ZN9_BuffSlabC1EmmPv>
        return slab;
    800029e0:	0580006f          	j	80002a38 <_ZN12kmem_cache_t9allocSlabEv+0xd4>
        if (!slabSpace) { deallocBuffSlab(slab); return nullptr; }
    800029e4:	00090513          	mv	a0,s2
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	a78080e7          	jalr	-1416(ra) # 80002460 <_ZN12kmem_cache_t15deallocBuffSlabEP9_BuffSlab>
    800029f0:	00098913          	mv	s2,s3
    800029f4:	0440006f          	j	80002a38 <_ZN12kmem_cache_t9allocSlabEv+0xd4>
    }
    else {
        _ObjSlab* ret = (_ObjSlab*)buddy->alloc(slabSize);
    800029f8:	02853583          	ld	a1,40(a0)
    800029fc:	0000d517          	auipc	a0,0xd
    80002a00:	02453503          	ld	a0,36(a0) # 8000fa20 <_ZN12kmem_cache_t5buddyE>
    80002a04:	00004097          	auipc	ra,0x4
    80002a08:	030080e7          	jalr	48(ra) # 80006a34 <_ZN10_BuddyTree5allocEm>
    80002a0c:	00050913          	mv	s2,a0
        if (!ret) return nullptr;
    80002a10:	02050463          	beqz	a0,80002a38 <_ZN12kmem_cache_t9allocSlabEv+0xd4>
        new (ret) _ObjSlab(slotSize, slabSize);
    80002a14:	00050593          	mv	a1,a0
    80002a18:	03800513          	li	a0,56
    80002a1c:	fffff097          	auipc	ra,0xfffff
    80002a20:	610080e7          	jalr	1552(ra) # 8000202c <_ZnwmPv>
    80002a24:	00050a63          	beqz	a0,80002a38 <_ZN12kmem_cache_t9allocSlabEv+0xd4>
    80002a28:	0284b603          	ld	a2,40(s1)
    80002a2c:	0204b583          	ld	a1,32(s1)
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	7b0080e7          	jalr	1968(ra) # 800021e0 <_ZN8_ObjSlabC1Emm>
        return ret;
    }

}
    80002a38:	00090513          	mv	a0,s2
    80002a3c:	02813083          	ld	ra,40(sp)
    80002a40:	02013403          	ld	s0,32(sp)
    80002a44:	01813483          	ld	s1,24(sp)
    80002a48:	01013903          	ld	s2,16(sp)
    80002a4c:	00813983          	ld	s3,8(sp)
    80002a50:	03010113          	addi	sp,sp,48
    80002a54:	00008067          	ret

0000000080002a58 <_ZN12kmem_cache_t5allocEv>:
void* kmem_cache_t::alloc() {
    80002a58:	fe010113          	addi	sp,sp,-32
    80002a5c:	00113c23          	sd	ra,24(sp)
    80002a60:	00813823          	sd	s0,16(sp)
    80002a64:	00913423          	sd	s1,8(sp)
    80002a68:	01213023          	sd	s2,0(sp)
    80002a6c:	02010413          	addi	s0,sp,32
    80002a70:	00050493          	mv	s1,a0
    void* ret;
    if (partial) {
    80002a74:	01053503          	ld	a0,16(a0)
    80002a78:	06050663          	beqz	a0,80002ae4 <_ZN12kmem_cache_t5allocEv+0x8c>
        ret = partial->alloc();
    80002a7c:	00053783          	ld	a5,0(a0)
    80002a80:	0007b783          	ld	a5,0(a5)
    80002a84:	000780e7          	jalr	a5
    80002a88:	00050913          	mv	s2,a0
        if (partial->isFull()) move(&partial, &full, partial); //prebacivanje iz partial u full listu
    80002a8c:	0104b503          	ld	a0,16(s1)
    80002a90:	00053783          	ld	a5,0(a0)
    80002a94:	0187b783          	ld	a5,24(a5)
    80002a98:	000780e7          	jalr	a5
    80002a9c:	02051863          	bnez	a0,80002acc <_ZN12kmem_cache_t5allocEv+0x74>
        }
        ret = free->alloc();
        if (free->isFull()) move(&free, &full, free); //prebacivanje iz free u full listu
        else move(&free, &partial, free); //prebacivanje iz free u partial listu
    }
    if (ctor) ctor(ret);
    80002aa0:	0304b783          	ld	a5,48(s1)
    80002aa4:	00078663          	beqz	a5,80002ab0 <_ZN12kmem_cache_t5allocEv+0x58>
    80002aa8:	00090513          	mv	a0,s2
    80002aac:	000780e7          	jalr	a5
    return ret;
}
    80002ab0:	00090513          	mv	a0,s2
    80002ab4:	01813083          	ld	ra,24(sp)
    80002ab8:	01013403          	ld	s0,16(sp)
    80002abc:	00813483          	ld	s1,8(sp)
    80002ac0:	00013903          	ld	s2,0(sp)
    80002ac4:	02010113          	addi	sp,sp,32
    80002ac8:	00008067          	ret
        if (partial->isFull()) move(&partial, &full, partial); //prebacivanje iz partial u full listu
    80002acc:	0104b603          	ld	a2,16(s1)
    80002ad0:	00048593          	mv	a1,s1
    80002ad4:	01048513          	addi	a0,s1,16
    80002ad8:	00000097          	auipc	ra,0x0
    80002adc:	ad4080e7          	jalr	-1324(ra) # 800025ac <_ZN12kmem_cache_t4moveEPP5_SlabS2_S1_>
    80002ae0:	fc1ff06f          	j	80002aa0 <_ZN12kmem_cache_t5allocEv+0x48>
        if (!free) free = allocSlab();
    80002ae4:	0084b783          	ld	a5,8(s1)
    80002ae8:	04078663          	beqz	a5,80002b34 <_ZN12kmem_cache_t5allocEv+0xdc>
        if (!free) {
    80002aec:	0084b903          	ld	s2,8(s1)
    80002af0:	04090c63          	beqz	s2,80002b48 <_ZN12kmem_cache_t5allocEv+0xf0>
        ret = free->alloc();
    80002af4:	00093783          	ld	a5,0(s2)
    80002af8:	0007b783          	ld	a5,0(a5)
    80002afc:	00090513          	mv	a0,s2
    80002b00:	000780e7          	jalr	a5
    80002b04:	00050913          	mv	s2,a0
        if (free->isFull()) move(&free, &full, free); //prebacivanje iz free u full listu
    80002b08:	0084b503          	ld	a0,8(s1)
    80002b0c:	00053783          	ld	a5,0(a0)
    80002b10:	0187b783          	ld	a5,24(a5)
    80002b14:	000780e7          	jalr	a5
    80002b18:	04050063          	beqz	a0,80002b58 <_ZN12kmem_cache_t5allocEv+0x100>
    80002b1c:	0084b603          	ld	a2,8(s1)
    80002b20:	00048593          	mv	a1,s1
    80002b24:	00848513          	addi	a0,s1,8
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	a84080e7          	jalr	-1404(ra) # 800025ac <_ZN12kmem_cache_t4moveEPP5_SlabS2_S1_>
    80002b30:	f71ff06f          	j	80002aa0 <_ZN12kmem_cache_t5allocEv+0x48>
        if (!free) free = allocSlab();
    80002b34:	00048513          	mv	a0,s1
    80002b38:	00000097          	auipc	ra,0x0
    80002b3c:	e2c080e7          	jalr	-468(ra) # 80002964 <_ZN12kmem_cache_t9allocSlabEv>
    80002b40:	00a4b423          	sd	a0,8(s1)
    80002b44:	fa9ff06f          	j	80002aec <_ZN12kmem_cache_t5allocEv+0x94>
            err = "ALLOCATION_ERROR: COULD NOT ALLOCATE SLAB";
    80002b48:	00008797          	auipc	a5,0x8
    80002b4c:	67878793          	addi	a5,a5,1656 # 8000b1c0 <PAGEOFFMASK+0x19c>
    80002b50:	04f4bc23          	sd	a5,88(s1)
            return nullptr;
    80002b54:	f5dff06f          	j	80002ab0 <_ZN12kmem_cache_t5allocEv+0x58>
        else move(&free, &partial, free); //prebacivanje iz free u partial listu
    80002b58:	0084b603          	ld	a2,8(s1)
    80002b5c:	01048593          	addi	a1,s1,16
    80002b60:	00848513          	addi	a0,s1,8
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	a48080e7          	jalr	-1464(ra) # 800025ac <_ZN12kmem_cache_t4moveEPP5_SlabS2_S1_>
    80002b6c:	f35ff06f          	j	80002aa0 <_ZN12kmem_cache_t5allocEv+0x48>

0000000080002b70 <_ZN12kmem_cache_t7deallocEPv>:
/*bool kmem_cache_t::contains(_Slab* slab, void* obj) {
    return obj > slab && obj < (char*)slab + slabSize;
}*/
bool kmem_cache_t::dealloc(void* obj) {
    80002b70:	fd010113          	addi	sp,sp,-48
    80002b74:	02113423          	sd	ra,40(sp)
    80002b78:	02813023          	sd	s0,32(sp)
    80002b7c:	00913c23          	sd	s1,24(sp)
    80002b80:	01213823          	sd	s2,16(sp)
    80002b84:	01313423          	sd	s3,8(sp)
    80002b88:	01413023          	sd	s4,0(sp)
    80002b8c:	03010413          	addi	s0,sp,48
    80002b90:	00050a13          	mv	s4,a0
    80002b94:	00058993          	mv	s3,a1
    if (dtor) dtor(obj);
    80002b98:	03853783          	ld	a5,56(a0)
    80002b9c:	00078663          	beqz	a5,80002ba8 <_ZN12kmem_cache_t7deallocEPv+0x38>
    80002ba0:	00058513          	mv	a0,a1
    80002ba4:	000780e7          	jalr	a5
    _Slab* cur = full;
    80002ba8:	000a3903          	ld	s2,0(s4)
    while (cur) {
    80002bac:	0a090063          	beqz	s2,80002c4c <_ZN12kmem_cache_t7deallocEPv+0xdc>
        if (cur->contains(obj)) {
    80002bb0:	00093783          	ld	a5,0(s2)
    80002bb4:	0287b783          	ld	a5,40(a5)
    80002bb8:	00098593          	mv	a1,s3
    80002bbc:	00090513          	mv	a0,s2
    80002bc0:	000780e7          	jalr	a5
    80002bc4:	00050493          	mv	s1,a0
    80002bc8:	00051663          	bnez	a0,80002bd4 <_ZN12kmem_cache_t7deallocEPv+0x64>
            cur->dealloc(obj);
            if (cur->isEmpty()) move(&full, &free, cur); //prebacivanje iz full u free
            else move(&full, &partial, cur); //prebacivanje iz full u partial
            return true;
        }
        cur = cur->next;
    80002bcc:	02893903          	ld	s2,40(s2)
    while (cur) {
    80002bd0:	fddff06f          	j	80002bac <_ZN12kmem_cache_t7deallocEPv+0x3c>
            cur->dealloc(obj);
    80002bd4:	00093783          	ld	a5,0(s2)
    80002bd8:	0087b783          	ld	a5,8(a5)
    80002bdc:	00098593          	mv	a1,s3
    80002be0:	00090513          	mv	a0,s2
    80002be4:	000780e7          	jalr	a5
            if (cur->isEmpty()) move(&full, &free, cur); //prebacivanje iz full u free
    80002be8:	00093783          	ld	a5,0(s2)
    80002bec:	0107b783          	ld	a5,16(a5)
    80002bf0:	00090513          	mv	a0,s2
    80002bf4:	000780e7          	jalr	a5
    80002bf8:	02050e63          	beqz	a0,80002c34 <_ZN12kmem_cache_t7deallocEPv+0xc4>
    80002bfc:	00090613          	mv	a2,s2
    80002c00:	008a0593          	addi	a1,s4,8
    80002c04:	000a0513          	mv	a0,s4
    80002c08:	00000097          	auipc	ra,0x0
    80002c0c:	9a4080e7          	jalr	-1628(ra) # 800025ac <_ZN12kmem_cache_t4moveEPP5_SlabS2_S1_>
        }
        cur = cur->next;
    }
    if (!buffCache) err = "DEALLOCATION_ERROR: SLOT ADDRESS NOT FOUND IN CACHE.";
    return false;
}
    80002c10:	00048513          	mv	a0,s1
    80002c14:	02813083          	ld	ra,40(sp)
    80002c18:	02013403          	ld	s0,32(sp)
    80002c1c:	01813483          	ld	s1,24(sp)
    80002c20:	01013903          	ld	s2,16(sp)
    80002c24:	00813983          	ld	s3,8(sp)
    80002c28:	00013a03          	ld	s4,0(sp)
    80002c2c:	03010113          	addi	sp,sp,48
    80002c30:	00008067          	ret
            else move(&full, &partial, cur); //prebacivanje iz full u partial
    80002c34:	00090613          	mv	a2,s2
    80002c38:	010a0593          	addi	a1,s4,16
    80002c3c:	000a0513          	mv	a0,s4
    80002c40:	00000097          	auipc	ra,0x0
    80002c44:	96c080e7          	jalr	-1684(ra) # 800025ac <_ZN12kmem_cache_t4moveEPP5_SlabS2_S1_>
            return true;
    80002c48:	fc9ff06f          	j	80002c10 <_ZN12kmem_cache_t7deallocEPv+0xa0>
    cur = partial;
    80002c4c:	010a3903          	ld	s2,16(s4)
    while (cur) {
    80002c50:	06090463          	beqz	s2,80002cb8 <_ZN12kmem_cache_t7deallocEPv+0x148>
        if (cur->contains(obj)) {
    80002c54:	00093783          	ld	a5,0(s2)
    80002c58:	0287b783          	ld	a5,40(a5)
    80002c5c:	00098593          	mv	a1,s3
    80002c60:	00090513          	mv	a0,s2
    80002c64:	000780e7          	jalr	a5
    80002c68:	00050493          	mv	s1,a0
    80002c6c:	00051663          	bnez	a0,80002c78 <_ZN12kmem_cache_t7deallocEPv+0x108>
        cur = cur->next;
    80002c70:	02893903          	ld	s2,40(s2)
    while (cur) {
    80002c74:	fddff06f          	j	80002c50 <_ZN12kmem_cache_t7deallocEPv+0xe0>
            cur->dealloc(obj);
    80002c78:	00093783          	ld	a5,0(s2)
    80002c7c:	0087b783          	ld	a5,8(a5)
    80002c80:	00098593          	mv	a1,s3
    80002c84:	00090513          	mv	a0,s2
    80002c88:	000780e7          	jalr	a5
            if (cur->isEmpty()) move(&partial, &free, cur); //prebacivanje iz full u free
    80002c8c:	00093783          	ld	a5,0(s2)
    80002c90:	0107b783          	ld	a5,16(a5)
    80002c94:	00090513          	mv	a0,s2
    80002c98:	000780e7          	jalr	a5
    80002c9c:	f6050ae3          	beqz	a0,80002c10 <_ZN12kmem_cache_t7deallocEPv+0xa0>
    80002ca0:	00090613          	mv	a2,s2
    80002ca4:	008a0593          	addi	a1,s4,8
    80002ca8:	010a0513          	addi	a0,s4,16
    80002cac:	00000097          	auipc	ra,0x0
    80002cb0:	900080e7          	jalr	-1792(ra) # 800025ac <_ZN12kmem_cache_t4moveEPP5_SlabS2_S1_>
            return true;
    80002cb4:	f5dff06f          	j	80002c10 <_ZN12kmem_cache_t7deallocEPv+0xa0>
    if (!buffCache) err = "DEALLOCATION_ERROR: SLOT ADDRESS NOT FOUND IN CACHE.";
    80002cb8:	040a4483          	lbu	s1,64(s4)
    80002cbc:	00049a63          	bnez	s1,80002cd0 <_ZN12kmem_cache_t7deallocEPv+0x160>
    80002cc0:	00008797          	auipc	a5,0x8
    80002cc4:	53078793          	addi	a5,a5,1328 # 8000b1f0 <PAGEOFFMASK+0x1cc>
    80002cc8:	04fa3c23          	sd	a5,88(s4)
    80002ccc:	f45ff06f          	j	80002c10 <_ZN12kmem_cache_t7deallocEPv+0xa0>
    return false;
    80002cd0:	00000493          	li	s1,0
    80002cd4:	f3dff06f          	j	80002c10 <_ZN12kmem_cache_t7deallocEPv+0xa0>

0000000080002cd8 <_ZN12kmem_cache_t11deallocBuffEPv>:
bool kmem_cache_t::deallocBuff(void* buff) {
    80002cd8:	fe010113          	addi	sp,sp,-32
    80002cdc:	00113c23          	sd	ra,24(sp)
    80002ce0:	00813823          	sd	s0,16(sp)
    80002ce4:	00913423          	sd	s1,8(sp)
    80002ce8:	01213023          	sd	s2,0(sp)
    80002cec:	02010413          	addi	s0,sp,32
    80002cf0:	00050913          	mv	s2,a0
    for (int i = 0; i < buffPowMax - buffPowMin + 1; i++) {
    80002cf4:	00000493          	li	s1,0
    80002cf8:	00c00793          	li	a5,12
    80002cfc:	0297ca63          	blt	a5,s1,80002d30 <_ZN12kmem_cache_t11deallocBuffEPv+0x58>
        if (cacheMem[i].dealloc(buff)) return true;
    80002d00:	00149793          	slli	a5,s1,0x1
    80002d04:	009787b3          	add	a5,a5,s1
    80002d08:	00579793          	slli	a5,a5,0x5
    80002d0c:	00090593          	mv	a1,s2
    80002d10:	0000d517          	auipc	a0,0xd
    80002d14:	d3053503          	ld	a0,-720(a0) # 8000fa40 <_ZN12kmem_cache_t8cacheMemE>
    80002d18:	00f50533          	add	a0,a0,a5
    80002d1c:	00000097          	auipc	ra,0x0
    80002d20:	e54080e7          	jalr	-428(ra) # 80002b70 <_ZN12kmem_cache_t7deallocEPv>
    80002d24:	00051863          	bnez	a0,80002d34 <_ZN12kmem_cache_t11deallocBuffEPv+0x5c>
    for (int i = 0; i < buffPowMax - buffPowMin + 1; i++) {
    80002d28:	0014849b          	addiw	s1,s1,1
    80002d2c:	fcdff06f          	j	80002cf8 <_ZN12kmem_cache_t11deallocBuffEPv+0x20>
    return false;
    80002d30:	00000513          	li	a0,0
}
    80002d34:	01813083          	ld	ra,24(sp)
    80002d38:	01013403          	ld	s0,16(sp)
    80002d3c:	00813483          	ld	s1,8(sp)
    80002d40:	00013903          	ld	s2,0(sp)
    80002d44:	02010113          	addi	sp,sp,32
    80002d48:	00008067          	ret

0000000080002d4c <_ZN12kmem_cache_t6shrinkEv>:
int kmem_cache_t::shrink() {
    if (free) {
    80002d4c:	00853583          	ld	a1,8(a0)
    80002d50:	00059663          	bnez	a1,80002d5c <_ZN12kmem_cache_t6shrinkEv+0x10>
        deallocSlabs(free);
        free = nullptr;
        return 1;
    }
    return 0;
    80002d54:	00000513          	li	a0,0
}
    80002d58:	00008067          	ret
int kmem_cache_t::shrink() {
    80002d5c:	fe010113          	addi	sp,sp,-32
    80002d60:	00113c23          	sd	ra,24(sp)
    80002d64:	00813823          	sd	s0,16(sp)
    80002d68:	00913423          	sd	s1,8(sp)
    80002d6c:	02010413          	addi	s0,sp,32
    80002d70:	00050493          	mv	s1,a0
        deallocSlabs(free);
    80002d74:	00000097          	auipc	ra,0x0
    80002d78:	b08080e7          	jalr	-1272(ra) # 8000287c <_ZN12kmem_cache_t12deallocSlabsEP5_Slab>
        free = nullptr;
    80002d7c:	0004b423          	sd	zero,8(s1)
        return 1;
    80002d80:	00100513          	li	a0,1
}
    80002d84:	01813083          	ld	ra,24(sp)
    80002d88:	01013403          	ld	s0,16(sp)
    80002d8c:	00813483          	ld	s1,8(sp)
    80002d90:	02010113          	addi	sp,sp,32
    80002d94:	00008067          	ret

0000000080002d98 <_ZN12kmem_cache_t7slabNumEv>:
int kmem_cache_t::slabNum() {
    80002d98:	fd010113          	addi	sp,sp,-48
    80002d9c:	02813423          	sd	s0,40(sp)
    80002da0:	03010413          	addi	s0,sp,48
    int res = 0;
    _Slab* arrs[] = {free, partial, full};
    80002da4:	00853783          	ld	a5,8(a0)
    80002da8:	fcf43c23          	sd	a5,-40(s0)
    80002dac:	01053783          	ld	a5,16(a0)
    80002db0:	fef43023          	sd	a5,-32(s0)
    80002db4:	00053783          	ld	a5,0(a0)
    80002db8:	fef43423          	sd	a5,-24(s0)
    for (int i = 0; i < 3; i++) {
    80002dbc:	00000713          	li	a4,0
    int res = 0;
    80002dc0:	00000513          	li	a0,0
    80002dc4:	0080006f          	j	80002dcc <_ZN12kmem_cache_t7slabNumEv+0x34>
    for (int i = 0; i < 3; i++) {
    80002dc8:	0017071b          	addiw	a4,a4,1
    80002dcc:	00200793          	li	a5,2
    80002dd0:	02e7c263          	blt	a5,a4,80002df4 <_ZN12kmem_cache_t7slabNumEv+0x5c>
        _Slab* cur = arrs[i];
    80002dd4:	00371793          	slli	a5,a4,0x3
    80002dd8:	ff040693          	addi	a3,s0,-16
    80002ddc:	00f687b3          	add	a5,a3,a5
    80002de0:	fe87b783          	ld	a5,-24(a5)
        while (cur) { res++; cur = cur->next; }
    80002de4:	fe0782e3          	beqz	a5,80002dc8 <_ZN12kmem_cache_t7slabNumEv+0x30>
    80002de8:	0015051b          	addiw	a0,a0,1
    80002dec:	0287b783          	ld	a5,40(a5)
    80002df0:	ff5ff06f          	j	80002de4 <_ZN12kmem_cache_t7slabNumEv+0x4c>
    }
    return res;
}
    80002df4:	02813403          	ld	s0,40(sp)
    80002df8:	03010113          	addi	sp,sp,48
    80002dfc:	00008067          	ret

0000000080002e00 <_ZN12kmem_cache_t12slabCapacityEv>:
int kmem_cache_t::slabCapacity() {
    80002e00:	ff010113          	addi	sp,sp,-16
    80002e04:	00813423          	sd	s0,8(sp)
    80002e08:	01010413          	addi	s0,sp,16
    size_t actualSize = buffCache ? slabSize : slabSize - sizeof(_ObjSlab);
    80002e0c:	04054783          	lbu	a5,64(a0)
    80002e10:	02078063          	beqz	a5,80002e30 <_ZN12kmem_cache_t12slabCapacityEv+0x30>
    80002e14:	02853783          	ld	a5,40(a0)
    return actualSize / slotSize;
    80002e18:	02053503          	ld	a0,32(a0)
    80002e1c:	02a7d533          	divu	a0,a5,a0
}
    80002e20:	0005051b          	sext.w	a0,a0
    80002e24:	00813403          	ld	s0,8(sp)
    80002e28:	01010113          	addi	sp,sp,16
    80002e2c:	00008067          	ret
    size_t actualSize = buffCache ? slabSize : slabSize - sizeof(_ObjSlab);
    80002e30:	02853783          	ld	a5,40(a0)
    80002e34:	fc878793          	addi	a5,a5,-56
    80002e38:	fe1ff06f          	j	80002e18 <_ZN12kmem_cache_t12slabCapacityEv+0x18>

0000000080002e3c <_ZN12kmem_cache_t16allocatedSlotNumEv>:
int kmem_cache_t::allocatedSlotNum() {
    80002e3c:	fb010113          	addi	sp,sp,-80
    80002e40:	04113423          	sd	ra,72(sp)
    80002e44:	04813023          	sd	s0,64(sp)
    80002e48:	02913c23          	sd	s1,56(sp)
    80002e4c:	03213823          	sd	s2,48(sp)
    80002e50:	03313423          	sd	s3,40(sp)
    80002e54:	05010413          	addi	s0,sp,80
    int res = 0;
    _Slab* arrs[] = {free, partial, full};
    80002e58:	00853783          	ld	a5,8(a0)
    80002e5c:	faf43c23          	sd	a5,-72(s0)
    80002e60:	01053783          	ld	a5,16(a0)
    80002e64:	fcf43023          	sd	a5,-64(s0)
    80002e68:	00053783          	ld	a5,0(a0)
    80002e6c:	fcf43423          	sd	a5,-56(s0)
    for (int i = 1; i < 3; i++) {
    80002e70:	00100993          	li	s3,1
    int res = 0;
    80002e74:	00000913          	li	s2,0
    80002e78:	0080006f          	j	80002e80 <_ZN12kmem_cache_t16allocatedSlotNumEv+0x44>
    for (int i = 1; i < 3; i++) {
    80002e7c:	0019899b          	addiw	s3,s3,1
    80002e80:	00200793          	li	a5,2
    80002e84:	0337ca63          	blt	a5,s3,80002eb8 <_ZN12kmem_cache_t16allocatedSlotNumEv+0x7c>
        _Slab* cur = arrs[i];
    80002e88:	00399793          	slli	a5,s3,0x3
    80002e8c:	fd040713          	addi	a4,s0,-48
    80002e90:	00f707b3          	add	a5,a4,a5
    80002e94:	fe87b483          	ld	s1,-24(a5)
        while (cur) { res += cur->getAllocatedCount(); cur = cur->next; }
    80002e98:	fe0482e3          	beqz	s1,80002e7c <_ZN12kmem_cache_t16allocatedSlotNumEv+0x40>
    80002e9c:	0004b783          	ld	a5,0(s1)
    80002ea0:	0207b783          	ld	a5,32(a5)
    80002ea4:	00048513          	mv	a0,s1
    80002ea8:	000780e7          	jalr	a5
    80002eac:	00a9093b          	addw	s2,s2,a0
    80002eb0:	0284b483          	ld	s1,40(s1)
    80002eb4:	fe5ff06f          	j	80002e98 <_ZN12kmem_cache_t16allocatedSlotNumEv+0x5c>
    }
    return res;
}
    80002eb8:	00090513          	mv	a0,s2
    80002ebc:	04813083          	ld	ra,72(sp)
    80002ec0:	04013403          	ld	s0,64(sp)
    80002ec4:	03813483          	ld	s1,56(sp)
    80002ec8:	03013903          	ld	s2,48(sp)
    80002ecc:	02813983          	ld	s3,40(sp)
    80002ed0:	05010113          	addi	sp,sp,80
    80002ed4:	00008067          	ret

0000000080002ed8 <_ZN12kmem_cache_t9printInfoEv>:
void kmem_cache_t::printInfo() {
    80002ed8:	fd010113          	addi	sp,sp,-48
    80002edc:	02113423          	sd	ra,40(sp)
    80002ee0:	02813023          	sd	s0,32(sp)
    80002ee4:	00913c23          	sd	s1,24(sp)
    80002ee8:	01213823          	sd	s2,16(sp)
    80002eec:	01313423          	sd	s3,8(sp)
    80002ef0:	03010413          	addi	s0,sp,48
    80002ef4:	00050493          	mv	s1,a0
    int slabCnt = slabNum();
    80002ef8:	00000097          	auipc	ra,0x0
    80002efc:	ea0080e7          	jalr	-352(ra) # 80002d98 <_ZN12kmem_cache_t7slabNumEv>
    80002f00:	00050993          	mv	s3,a0
    int slabCap = slabCapacity();
    80002f04:	00048513          	mv	a0,s1
    80002f08:	00000097          	auipc	ra,0x0
    80002f0c:	ef8080e7          	jalr	-264(ra) # 80002e00 <_ZN12kmem_cache_t12slabCapacityEv>
    80002f10:	00050913          	mv	s2,a0
    _Console::printString("Cache: ");
    80002f14:	00008517          	auipc	a0,0x8
    80002f18:	31450513          	addi	a0,a0,788 # 8000b228 <PAGEOFFMASK+0x204>
    80002f1c:	00003097          	auipc	ra,0x3
    80002f20:	354080e7          	jalr	852(ra) # 80006270 <_ZN8_Console11printStringEPKc>
    _Console::printString(name);
    80002f24:	0184b503          	ld	a0,24(s1)
    80002f28:	00003097          	auipc	ra,0x3
    80002f2c:	348080e7          	jalr	840(ra) # 80006270 <_ZN8_Console11printStringEPKc>
    _Console::putc('\n');
    80002f30:	00a00513          	li	a0,10
    80002f34:	00003097          	auipc	ra,0x3
    80002f38:	210080e7          	jalr	528(ra) # 80006144 <_ZN8_Console4putcEc>

    _Console::printString("Slot size: ");
    80002f3c:	00008517          	auipc	a0,0x8
    80002f40:	2f450513          	addi	a0,a0,756 # 8000b230 <PAGEOFFMASK+0x20c>
    80002f44:	00003097          	auipc	ra,0x3
    80002f48:	32c080e7          	jalr	812(ra) # 80006270 <_ZN8_Console11printStringEPKc>
    _Console::printNum(slotSize);
    80002f4c:	0204b503          	ld	a0,32(s1)
    80002f50:	00003097          	auipc	ra,0x3
    80002f54:	38c080e7          	jalr	908(ra) # 800062dc <_ZN8_Console8printNumEm>
    _Console::putc('\n');
    80002f58:	00a00513          	li	a0,10
    80002f5c:	00003097          	auipc	ra,0x3
    80002f60:	1e8080e7          	jalr	488(ra) # 80006144 <_ZN8_Console4putcEc>

    _Console::printString("Slab size: ");
    80002f64:	00008517          	auipc	a0,0x8
    80002f68:	2dc50513          	addi	a0,a0,732 # 8000b240 <PAGEOFFMASK+0x21c>
    80002f6c:	00003097          	auipc	ra,0x3
    80002f70:	304080e7          	jalr	772(ra) # 80006270 <_ZN8_Console11printStringEPKc>
    _Console::printNum(slabSize);
    80002f74:	0284b503          	ld	a0,40(s1)
    80002f78:	00003097          	auipc	ra,0x3
    80002f7c:	364080e7          	jalr	868(ra) # 800062dc <_ZN8_Console8printNumEm>
    _Console::putc('\n');
    80002f80:	00a00513          	li	a0,10
    80002f84:	00003097          	auipc	ra,0x3
    80002f88:	1c0080e7          	jalr	448(ra) # 80006144 <_ZN8_Console4putcEc>

    _Console::printString("Slots per slab: ");
    80002f8c:	00008517          	auipc	a0,0x8
    80002f90:	2c450513          	addi	a0,a0,708 # 8000b250 <PAGEOFFMASK+0x22c>
    80002f94:	00003097          	auipc	ra,0x3
    80002f98:	2dc080e7          	jalr	732(ra) # 80006270 <_ZN8_Console11printStringEPKc>
    _Console::printNum(slabCap);
    80002f9c:	00090513          	mv	a0,s2
    80002fa0:	00003097          	auipc	ra,0x3
    80002fa4:	33c080e7          	jalr	828(ra) # 800062dc <_ZN8_Console8printNumEm>
    _Console::putc('\n');
    80002fa8:	00a00513          	li	a0,10
    80002fac:	00003097          	auipc	ra,0x3
    80002fb0:	198080e7          	jalr	408(ra) # 80006144 <_ZN8_Console4putcEc>

    _Console::printString("Number of slabs: ");
    80002fb4:	00008517          	auipc	a0,0x8
    80002fb8:	2b450513          	addi	a0,a0,692 # 8000b268 <PAGEOFFMASK+0x244>
    80002fbc:	00003097          	auipc	ra,0x3
    80002fc0:	2b4080e7          	jalr	692(ra) # 80006270 <_ZN8_Console11printStringEPKc>
    _Console::printNum(slabCnt);
    80002fc4:	00098513          	mv	a0,s3
    80002fc8:	00003097          	auipc	ra,0x3
    80002fcc:	314080e7          	jalr	788(ra) # 800062dc <_ZN8_Console8printNumEm>
    _Console::putc('\n');
    80002fd0:	00a00513          	li	a0,10
    80002fd4:	00003097          	auipc	ra,0x3
    80002fd8:	170080e7          	jalr	368(ra) # 80006144 <_ZN8_Console4putcEc>

    _Console::printString("Allocated objects / Total slots: ");
    80002fdc:	00008517          	auipc	a0,0x8
    80002fe0:	2a450513          	addi	a0,a0,676 # 8000b280 <PAGEOFFMASK+0x25c>
    80002fe4:	00003097          	auipc	ra,0x3
    80002fe8:	28c080e7          	jalr	652(ra) # 80006270 <_ZN8_Console11printStringEPKc>
    _Console::printNum(allocatedSlotNum());
    80002fec:	00048513          	mv	a0,s1
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	e4c080e7          	jalr	-436(ra) # 80002e3c <_ZN12kmem_cache_t16allocatedSlotNumEv>
    80002ff8:	00003097          	auipc	ra,0x3
    80002ffc:	2e4080e7          	jalr	740(ra) # 800062dc <_ZN8_Console8printNumEm>
    _Console::printString(" / ");
    80003000:	00008517          	auipc	a0,0x8
    80003004:	2a850513          	addi	a0,a0,680 # 8000b2a8 <PAGEOFFMASK+0x284>
    80003008:	00003097          	auipc	ra,0x3
    8000300c:	268080e7          	jalr	616(ra) # 80006270 <_ZN8_Console11printStringEPKc>
    _Console::printNum(slabCnt * slabCap);
    80003010:	0329853b          	mulw	a0,s3,s2
    80003014:	00003097          	auipc	ra,0x3
    80003018:	2c8080e7          	jalr	712(ra) # 800062dc <_ZN8_Console8printNumEm>
    _Console::putc('\n');
    8000301c:	00a00513          	li	a0,10
    80003020:	00003097          	auipc	ra,0x3
    80003024:	124080e7          	jalr	292(ra) # 80006144 <_ZN8_Console4putcEc>

    _Console::putc('\n');
    80003028:	00a00513          	li	a0,10
    8000302c:	00003097          	auipc	ra,0x3
    80003030:	118080e7          	jalr	280(ra) # 80006144 <_ZN8_Console4putcEc>
}
    80003034:	02813083          	ld	ra,40(sp)
    80003038:	02013403          	ld	s0,32(sp)
    8000303c:	01813483          	ld	s1,24(sp)
    80003040:	01013903          	ld	s2,16(sp)
    80003044:	00813983          	ld	s3,8(sp)
    80003048:	03010113          	addi	sp,sp,48
    8000304c:	00008067          	ret

0000000080003050 <_ZN12kmem_cache_t10printErrorEv>:
int kmem_cache_t::printError() {
    80003050:	fe010113          	addi	sp,sp,-32
    80003054:	00113c23          	sd	ra,24(sp)
    80003058:	00813823          	sd	s0,16(sp)
    8000305c:	00913423          	sd	s1,8(sp)
    80003060:	02010413          	addi	s0,sp,32
    80003064:	00050493          	mv	s1,a0
    if (err) {
    80003068:	05853503          	ld	a0,88(a0)
    8000306c:	02050a63          	beqz	a0,800030a0 <_ZN12kmem_cache_t10printErrorEv+0x50>
        _Console::printString(err);
    80003070:	00003097          	auipc	ra,0x3
    80003074:	200080e7          	jalr	512(ra) # 80006270 <_ZN8_Console11printStringEPKc>
        _Console::putc('\n');
    80003078:	00a00513          	li	a0,10
    8000307c:	00003097          	auipc	ra,0x3
    80003080:	0c8080e7          	jalr	200(ra) # 80006144 <_ZN8_Console4putcEc>
        err = nullptr;
    80003084:	0404bc23          	sd	zero,88(s1)
        return 1;
    80003088:	00100513          	li	a0,1
    }
    else {
        _Console::printString("NO ERROR!\n");
        return 0;
    }
}
    8000308c:	01813083          	ld	ra,24(sp)
    80003090:	01013403          	ld	s0,16(sp)
    80003094:	00813483          	ld	s1,8(sp)
    80003098:	02010113          	addi	sp,sp,32
    8000309c:	00008067          	ret
        _Console::printString("NO ERROR!\n");
    800030a0:	00008517          	auipc	a0,0x8
    800030a4:	21050513          	addi	a0,a0,528 # 8000b2b0 <PAGEOFFMASK+0x28c>
    800030a8:	00003097          	auipc	ra,0x3
    800030ac:	1c8080e7          	jalr	456(ra) # 80006270 <_ZN8_Console11printStringEPKc>
        return 0;
    800030b0:	00000513          	li	a0,0
    800030b4:	fd9ff06f          	j	8000308c <_ZN12kmem_cache_t10printErrorEv+0x3c>

00000000800030b8 <_ZN12kmem_cache_t9kmem_initEPvi>:

void kmem_cache_t::kmem_init(void* space, int block_num) {
    800030b8:	fe010113          	addi	sp,sp,-32
    800030bc:	00113c23          	sd	ra,24(sp)
    800030c0:	00813823          	sd	s0,16(sp)
    800030c4:	00913423          	sd	s1,8(sp)
    800030c8:	01213023          	sd	s2,0(sp)
    800030cc:	02010413          	addi	s0,sp,32
    void* heap_end = (char*)space + block_num * BLOCK_SIZE;
    800030d0:	00c5959b          	slliw	a1,a1,0xc
    800030d4:	00b50933          	add	s2,a0,a1
    _BuddyTree* buddy = new(space) _BuddyTree(heap_end, BLOCK_SIZE, PAGEOFFMASK);
    800030d8:	00050593          	mv	a1,a0
    800030dc:	03000513          	li	a0,48
    800030e0:	fffff097          	auipc	ra,0xfffff
    800030e4:	f4c080e7          	jalr	-180(ra) # 8000202c <_ZnwmPv>
    800030e8:	00050493          	mv	s1,a0
    800030ec:	00050e63          	beqz	a0,80003108 <_ZN12kmem_cache_t9kmem_initEPvi+0x50>
    800030f0:	000016b7          	lui	a3,0x1
    800030f4:	fff68693          	addi	a3,a3,-1 # fff <_entry-0x7ffff001>
    800030f8:	00001637          	lui	a2,0x1
    800030fc:	00090593          	mv	a1,s2
    80003100:	00003097          	auipc	ra,0x3
    80003104:	680080e7          	jalr	1664(ra) # 80006780 <_ZN10_BuddyTreeC1EPvmm>
    kmem_init(buddy);
    80003108:	00048513          	mv	a0,s1
    8000310c:	fffff097          	auipc	ra,0xfffff
    80003110:	600080e7          	jalr	1536(ra) # 8000270c <_ZN12kmem_cache_t9kmem_initEP10_BuddyTree>
}
    80003114:	01813083          	ld	ra,24(sp)
    80003118:	01013403          	ld	s0,16(sp)
    8000311c:	00813483          	ld	s1,8(sp)
    80003120:	00013903          	ld	s2,0(sp)
    80003124:	02010113          	addi	sp,sp,32
    80003128:	00008067          	ret

000000008000312c <_ZN12kmem_cache_t17kmem_cache_createEPKcmPFvPvES4_>:
kmem_cache_t* kmem_cache_t::kmem_cache_create(const char* name, size_t size, void (*ctor)(void*), void (*dtor)(void*)) {
    8000312c:	fc010113          	addi	sp,sp,-64
    80003130:	02113c23          	sd	ra,56(sp)
    80003134:	02813823          	sd	s0,48(sp)
    80003138:	02913423          	sd	s1,40(sp)
    8000313c:	03213023          	sd	s2,32(sp)
    80003140:	01313c23          	sd	s3,24(sp)
    80003144:	01413823          	sd	s4,16(sp)
    80003148:	01513423          	sd	s5,8(sp)
    8000314c:	04010413          	addi	s0,sp,64
    80003150:	00050913          	mv	s2,a0
    80003154:	00058993          	mv	s3,a1
    80003158:	00060a13          	mv	s4,a2
    8000315c:	00068a93          	mv	s5,a3
    kmem_cache_t* ret = allocKct();
    80003160:	fffff097          	auipc	ra,0xfffff
    80003164:	32c080e7          	jalr	812(ra) # 8000248c <_ZN12kmem_cache_t8allocKctEv>
    80003168:	00050493          	mv	s1,a0
    new (ret) kmem_cache_t(name, size, ctor, dtor, false);
    8000316c:	00050593          	mv	a1,a0
    80003170:	06000513          	li	a0,96
    80003174:	fffff097          	auipc	ra,0xfffff
    80003178:	eb8080e7          	jalr	-328(ra) # 8000202c <_ZnwmPv>
    8000317c:	02050063          	beqz	a0,8000319c <_ZN12kmem_cache_t17kmem_cache_createEPKcmPFvPvES4_+0x70>
    80003180:	00000793          	li	a5,0
    80003184:	000a8713          	mv	a4,s5
    80003188:	000a0693          	mv	a3,s4
    8000318c:	00098613          	mv	a2,s3
    80003190:	00090593          	mv	a1,s2
    80003194:	fffff097          	auipc	ra,0xfffff
    80003198:	4e4080e7          	jalr	1252(ra) # 80002678 <_ZN12kmem_cache_tC1EPKcmPFvPvES4_b>
    return ret;
}
    8000319c:	00048513          	mv	a0,s1
    800031a0:	03813083          	ld	ra,56(sp)
    800031a4:	03013403          	ld	s0,48(sp)
    800031a8:	02813483          	ld	s1,40(sp)
    800031ac:	02013903          	ld	s2,32(sp)
    800031b0:	01813983          	ld	s3,24(sp)
    800031b4:	01013a03          	ld	s4,16(sp)
    800031b8:	00813a83          	ld	s5,8(sp)
    800031bc:	04010113          	addi	sp,sp,64
    800031c0:	00008067          	ret

00000000800031c4 <_ZN12kmem_cache_t17kmem_cache_shrinkEPS_>:
int kmem_cache_t::kmem_cache_shrink(kmem_cache_t* cachep) {
    800031c4:	ff010113          	addi	sp,sp,-16
    800031c8:	00113423          	sd	ra,8(sp)
    800031cc:	00813023          	sd	s0,0(sp)
    800031d0:	01010413          	addi	s0,sp,16
    return cachep->shrink();
    800031d4:	00000097          	auipc	ra,0x0
    800031d8:	b78080e7          	jalr	-1160(ra) # 80002d4c <_ZN12kmem_cache_t6shrinkEv>
}
    800031dc:	00813083          	ld	ra,8(sp)
    800031e0:	00013403          	ld	s0,0(sp)
    800031e4:	01010113          	addi	sp,sp,16
    800031e8:	00008067          	ret

00000000800031ec <_ZN12kmem_cache_t16kmem_cache_allocEPS_>:
void* kmem_cache_t::kmem_cache_alloc(kmem_cache_t* cachep) {
    800031ec:	ff010113          	addi	sp,sp,-16
    800031f0:	00113423          	sd	ra,8(sp)
    800031f4:	00813023          	sd	s0,0(sp)
    800031f8:	01010413          	addi	s0,sp,16
    return cachep->alloc();
    800031fc:	00000097          	auipc	ra,0x0
    80003200:	85c080e7          	jalr	-1956(ra) # 80002a58 <_ZN12kmem_cache_t5allocEv>
}
    80003204:	00813083          	ld	ra,8(sp)
    80003208:	00013403          	ld	s0,0(sp)
    8000320c:	01010113          	addi	sp,sp,16
    80003210:	00008067          	ret

0000000080003214 <_ZN12kmem_cache_t15kmem_cache_freeEPS_Pv>:
void kmem_cache_t::kmem_cache_free(kmem_cache_t* cachep, void* objp) {
    80003214:	ff010113          	addi	sp,sp,-16
    80003218:	00113423          	sd	ra,8(sp)
    8000321c:	00813023          	sd	s0,0(sp)
    80003220:	01010413          	addi	s0,sp,16
    cachep->dealloc(objp);
    80003224:	00000097          	auipc	ra,0x0
    80003228:	94c080e7          	jalr	-1716(ra) # 80002b70 <_ZN12kmem_cache_t7deallocEPv>
}
    8000322c:	00813083          	ld	ra,8(sp)
    80003230:	00013403          	ld	s0,0(sp)
    80003234:	01010113          	addi	sp,sp,16
    80003238:	00008067          	ret

000000008000323c <_ZN12kmem_cache_t7kmallocEm>:
void* kmem_cache_t::kmalloc(size_t size) {
    8000323c:	ff010113          	addi	sp,sp,-16
    80003240:	00113423          	sd	ra,8(sp)
    80003244:	00813023          	sd	s0,0(sp)
    80003248:	01010413          	addi	s0,sp,16
    kmem_cache_t* cache = getBuffCache(size);
    8000324c:	fffff097          	auipc	ra,0xfffff
    80003250:	2f8080e7          	jalr	760(ra) # 80002544 <_ZN12kmem_cache_t12getBuffCacheEm>
    return cache->alloc();
    80003254:	00000097          	auipc	ra,0x0
    80003258:	804080e7          	jalr	-2044(ra) # 80002a58 <_ZN12kmem_cache_t5allocEv>
}
    8000325c:	00813083          	ld	ra,8(sp)
    80003260:	00013403          	ld	s0,0(sp)
    80003264:	01010113          	addi	sp,sp,16
    80003268:	00008067          	ret

000000008000326c <_ZN12kmem_cache_t5kfreeEPKv>:
void kmem_cache_t::kfree(const void* objp) {
    8000326c:	ff010113          	addi	sp,sp,-16
    80003270:	00113423          	sd	ra,8(sp)
    80003274:	00813023          	sd	s0,0(sp)
    80003278:	01010413          	addi	s0,sp,16
    void* obj = (void*) objp;
    deallocBuff(obj);
    8000327c:	00000097          	auipc	ra,0x0
    80003280:	a5c080e7          	jalr	-1444(ra) # 80002cd8 <_ZN12kmem_cache_t11deallocBuffEPv>
}
    80003284:	00813083          	ld	ra,8(sp)
    80003288:	00013403          	ld	s0,0(sp)
    8000328c:	01010113          	addi	sp,sp,16
    80003290:	00008067          	ret

0000000080003294 <_ZN12kmem_cache_t18kmem_cache_destroyEPS_>:
void kmem_cache_t::kmem_cache_destroy(kmem_cache_t* cachep) {
    80003294:	fe010113          	addi	sp,sp,-32
    80003298:	00113c23          	sd	ra,24(sp)
    8000329c:	00813823          	sd	s0,16(sp)
    800032a0:	00913423          	sd	s1,8(sp)
    800032a4:	02010413          	addi	s0,sp,32
    800032a8:	00050493          	mv	s1,a0
    cachep->~kmem_cache_t();
    800032ac:	fffff097          	auipc	ra,0xfffff
    800032b0:	660080e7          	jalr	1632(ra) # 8000290c <_ZN12kmem_cache_tD1Ev>
    deallocKct(cachep);
    800032b4:	00048513          	mv	a0,s1
    800032b8:	fffff097          	auipc	ra,0xfffff
    800032bc:	224080e7          	jalr	548(ra) # 800024dc <_ZN12kmem_cache_t10deallocKctEPS_>
}
    800032c0:	01813083          	ld	ra,24(sp)
    800032c4:	01013403          	ld	s0,16(sp)
    800032c8:	00813483          	ld	s1,8(sp)
    800032cc:	02010113          	addi	sp,sp,32
    800032d0:	00008067          	ret

00000000800032d4 <_ZN12kmem_cache_t15kmem_cache_infoEPS_>:
void kmem_cache_t::kmem_cache_info(kmem_cache_t* cachep) {
    800032d4:	ff010113          	addi	sp,sp,-16
    800032d8:	00113423          	sd	ra,8(sp)
    800032dc:	00813023          	sd	s0,0(sp)
    800032e0:	01010413          	addi	s0,sp,16
    cachep->printInfo();
    800032e4:	00000097          	auipc	ra,0x0
    800032e8:	bf4080e7          	jalr	-1036(ra) # 80002ed8 <_ZN12kmem_cache_t9printInfoEv>
}
    800032ec:	00813083          	ld	ra,8(sp)
    800032f0:	00013403          	ld	s0,0(sp)
    800032f4:	01010113          	addi	sp,sp,16
    800032f8:	00008067          	ret

00000000800032fc <_ZN12kmem_cache_t16kmem_cache_errorEPS_>:
int kmem_cache_t::kmem_cache_error(kmem_cache_t* cachep) {
    800032fc:	ff010113          	addi	sp,sp,-16
    80003300:	00113423          	sd	ra,8(sp)
    80003304:	00813023          	sd	s0,0(sp)
    80003308:	01010413          	addi	s0,sp,16
    return cachep->printError();
    8000330c:	00000097          	auipc	ra,0x0
    80003310:	d44080e7          	jalr	-700(ra) # 80003050 <_ZN12kmem_cache_t10printErrorEv>
}
    80003314:	00813083          	ld	ra,8(sp)
    80003318:	00013403          	ld	s0,0(sp)
    8000331c:	01010113          	addi	sp,sp,16
    80003320:	00008067          	ret

0000000080003324 <_ZN12kmem_cache_t20kmem_cache_info_buffEi>:
void kmem_cache_t::kmem_cache_info_buff(int pow) {
    if (pow < buffPowMin || pow > buffPowMax) return;
    80003324:	ffb5071b          	addiw	a4,a0,-5
    80003328:	00c00793          	li	a5,12
    8000332c:	00e7f463          	bgeu	a5,a4,80003334 <_ZN12kmem_cache_t20kmem_cache_info_buffEi+0x10>
    80003330:	00008067          	ret
void kmem_cache_t::kmem_cache_info_buff(int pow) {
    80003334:	ff010113          	addi	sp,sp,-16
    80003338:	00113423          	sd	ra,8(sp)
    8000333c:	00813023          	sd	s0,0(sp)
    80003340:	01010413          	addi	s0,sp,16
    int i = pow - buffPowMin;
    cacheMem[i].printInfo();
    80003344:	00171793          	slli	a5,a4,0x1
    80003348:	00e78533          	add	a0,a5,a4
    8000334c:	00551513          	slli	a0,a0,0x5
    80003350:	0000c797          	auipc	a5,0xc
    80003354:	6f07b783          	ld	a5,1776(a5) # 8000fa40 <_ZN12kmem_cache_t8cacheMemE>
    80003358:	00a78533          	add	a0,a5,a0
    8000335c:	00000097          	auipc	ra,0x0
    80003360:	b7c080e7          	jalr	-1156(ra) # 80002ed8 <_ZN12kmem_cache_t9printInfoEv>
}
    80003364:	00813083          	ld	ra,8(sp)
    80003368:	00013403          	ld	s0,0(sp)
    8000336c:	01010113          	addi	sp,sp,16
    80003370:	00008067          	ret

0000000080003374 <_ZN12kmem_cache_t10buddyAllocEi>:

void* kmem_cache_t::buddyAlloc(int pow) {
    80003374:	ff010113          	addi	sp,sp,-16
    80003378:	00113423          	sd	ra,8(sp)
    8000337c:	00813023          	sd	s0,0(sp)
    80003380:	01010413          	addi	s0,sp,16
    80003384:	00050593          	mv	a1,a0
    return buddy->allocBlock(pow);
    80003388:	0000c517          	auipc	a0,0xc
    8000338c:	69853503          	ld	a0,1688(a0) # 8000fa20 <_ZN12kmem_cache_t5buddyE>
    80003390:	00003097          	auipc	ra,0x3
    80003394:	58c080e7          	jalr	1420(ra) # 8000691c <_ZN10_BuddyTree10allocBlockEi>
}
    80003398:	00813083          	ld	ra,8(sp)
    8000339c:	00013403          	ld	s0,0(sp)
    800033a0:	01010113          	addi	sp,sp,16
    800033a4:	00008067          	ret

00000000800033a8 <_ZN12kmem_cache_t9buddyFreeEPv>:
void kmem_cache_t::buddyFree(void* ptr) {
    800033a8:	ff010113          	addi	sp,sp,-16
    800033ac:	00113423          	sd	ra,8(sp)
    800033b0:	00813023          	sd	s0,0(sp)
    800033b4:	01010413          	addi	s0,sp,16
    800033b8:	00050593          	mv	a1,a0
    buddy->dealloc(ptr);
    800033bc:	0000c517          	auipc	a0,0xc
    800033c0:	66453503          	ld	a0,1636(a0) # 8000fa20 <_ZN12kmem_cache_t5buddyE>
    800033c4:	00003097          	auipc	ra,0x3
    800033c8:	6b4080e7          	jalr	1716(ra) # 80006a78 <_ZN10_BuddyTree7deallocEPv>
}
    800033cc:	00813083          	ld	ra,8(sp)
    800033d0:	00013403          	ld	s0,0(sp)
    800033d4:	01010113          	addi	sp,sp,16
    800033d8:	00008067          	ret

00000000800033dc <_ZN12kmem_cache_t11getBuddyEndEv>:
void* kmem_cache_t::getBuddyEnd() {
    800033dc:	ff010113          	addi	sp,sp,-16
    800033e0:	00813423          	sd	s0,8(sp)
    800033e4:	01010413          	addi	s0,sp,16
    return buddy->getEnd();
    800033e8:	0000c797          	auipc	a5,0xc
    800033ec:	6387b783          	ld	a5,1592(a5) # 8000fa20 <_ZN12kmem_cache_t5buddyE>
    800033f0:	0187b503          	ld	a0,24(a5)
    800033f4:	00813403          	ld	s0,8(sp)
    800033f8:	01010113          	addi	sp,sp,16
    800033fc:	00008067          	ret

0000000080003400 <_ZN5_Slab17getAllocatedCountEv>:
    virtual int getAllocatedCount() { return allocated; }
    80003400:	ff010113          	addi	sp,sp,-16
    80003404:	00813423          	sd	s0,8(sp)
    80003408:	01010413          	addi	s0,sp,16
    8000340c:	01052503          	lw	a0,16(a0)
    80003410:	00813403          	ld	s0,8(sp)
    80003414:	01010113          	addi	sp,sp,16
    80003418:	00008067          	ret

000000008000341c <_ZN5_Slab8containsEPv>:
    virtual bool contains(void* adr) { return false; }//ova bi trebalo da bude pure virtual ali ne moze*
    8000341c:	ff010113          	addi	sp,sp,-16
    80003420:	00813423          	sd	s0,8(sp)
    80003424:	01010413          	addi	s0,sp,16
    80003428:	00000513          	li	a0,0
    8000342c:	00813403          	ld	s0,8(sp)
    80003430:	01010113          	addi	sp,sp,16
    80003434:	00008067          	ret

0000000080003438 <_ZN20_ThreadPriorityQueue4NodenwEm>:
#include "../h/_ThreadPriorityQueue.h"
#include "../h/_Thread.h"
#include "../h/_Mem.h"

kmem_cache_t* _ThreadPriorityQueue::Node::cache = nullptr;
void* _ThreadPriorityQueue::Node::operator new(size_t size) {
    80003438:	ff010113          	addi	sp,sp,-16
    8000343c:	00113423          	sd	ra,8(sp)
    80003440:	00813023          	sd	s0,0(sp)
    80003444:	01010413          	addi	s0,sp,16
    if (!cache) cache = kmem_cache_create("Thread_priority_queue::Node", sizeof(_ThreadPriorityQueue::Node), nullptr, nullptr);
    80003448:	0000c797          	auipc	a5,0xc
    8000344c:	6007b783          	ld	a5,1536(a5) # 8000fa48 <_ZN20_ThreadPriorityQueue4Node5cacheE>
    80003450:	02078263          	beqz	a5,80003474 <_ZN20_ThreadPriorityQueue4NodenwEm+0x3c>
    return kmem_cache_alloc(cache);
    80003454:	0000c517          	auipc	a0,0xc
    80003458:	5f453503          	ld	a0,1524(a0) # 8000fa48 <_ZN20_ThreadPriorityQueue4Node5cacheE>
    8000345c:	ffffe097          	auipc	ra,0xffffe
    80003460:	018080e7          	jalr	24(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
}
    80003464:	00813083          	ld	ra,8(sp)
    80003468:	00013403          	ld	s0,0(sp)
    8000346c:	01010113          	addi	sp,sp,16
    80003470:	00008067          	ret
    if (!cache) cache = kmem_cache_create("Thread_priority_queue::Node", sizeof(_ThreadPriorityQueue::Node), nullptr, nullptr);
    80003474:	00000693          	li	a3,0
    80003478:	00000613          	li	a2,0
    8000347c:	01800593          	li	a1,24
    80003480:	00008517          	auipc	a0,0x8
    80003484:	e4850513          	addi	a0,a0,-440 # 8000b2c8 <_ZN12kmem_cache_t3MAXE+0x4>
    80003488:	ffffe097          	auipc	ra,0xffffe
    8000348c:	f9c080e7          	jalr	-100(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80003490:	0000c797          	auipc	a5,0xc
    80003494:	5aa7bc23          	sd	a0,1464(a5) # 8000fa48 <_ZN20_ThreadPriorityQueue4Node5cacheE>
    80003498:	fbdff06f          	j	80003454 <_ZN20_ThreadPriorityQueue4NodenwEm+0x1c>

000000008000349c <_ZN20_ThreadPriorityQueue4NodedlEPv>:
void _ThreadPriorityQueue::Node::operator delete(void* addr) {
    8000349c:	ff010113          	addi	sp,sp,-16
    800034a0:	00113423          	sd	ra,8(sp)
    800034a4:	00813023          	sd	s0,0(sp)
    800034a8:	01010413          	addi	s0,sp,16
    800034ac:	00050593          	mv	a1,a0
    kmem_cache_free(cache, addr);
    800034b0:	0000c517          	auipc	a0,0xc
    800034b4:	59853503          	ld	a0,1432(a0) # 8000fa48 <_ZN20_ThreadPriorityQueue4Node5cacheE>
    800034b8:	ffffe097          	auipc	ra,0xffffe
    800034bc:	fe4080e7          	jalr	-28(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
}
    800034c0:	00813083          	ld	ra,8(sp)
    800034c4:	00013403          	ld	s0,0(sp)
    800034c8:	01010113          	addi	sp,sp,16
    800034cc:	00008067          	ret

00000000800034d0 <_ZN20_ThreadPriorityQueuenwEm>:

kmem_cache_t* _ThreadPriorityQueue::cache = nullptr;
void* _ThreadPriorityQueue::operator new(size_t size) {
    800034d0:	ff010113          	addi	sp,sp,-16
    800034d4:	00113423          	sd	ra,8(sp)
    800034d8:	00813023          	sd	s0,0(sp)
    800034dc:	01010413          	addi	s0,sp,16
    if (!cache) cache = kmem_cache_create("Thread_priority_queue Cache", sizeof(_ThreadPriorityQueue), nullptr, nullptr);
    800034e0:	0000c797          	auipc	a5,0xc
    800034e4:	5707b783          	ld	a5,1392(a5) # 8000fa50 <_ZN20_ThreadPriorityQueue5cacheE>
    800034e8:	02078263          	beqz	a5,8000350c <_ZN20_ThreadPriorityQueuenwEm+0x3c>
    return kmem_cache_alloc(cache);
    800034ec:	0000c517          	auipc	a0,0xc
    800034f0:	56453503          	ld	a0,1380(a0) # 8000fa50 <_ZN20_ThreadPriorityQueue5cacheE>
    800034f4:	ffffe097          	auipc	ra,0xffffe
    800034f8:	f80080e7          	jalr	-128(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
}
    800034fc:	00813083          	ld	ra,8(sp)
    80003500:	00013403          	ld	s0,0(sp)
    80003504:	01010113          	addi	sp,sp,16
    80003508:	00008067          	ret
    if (!cache) cache = kmem_cache_create("Thread_priority_queue Cache", sizeof(_ThreadPriorityQueue), nullptr, nullptr);
    8000350c:	00000693          	li	a3,0
    80003510:	00000613          	li	a2,0
    80003514:	01000593          	li	a1,16
    80003518:	00008517          	auipc	a0,0x8
    8000351c:	dd050513          	addi	a0,a0,-560 # 8000b2e8 <_ZN12kmem_cache_t3MAXE+0x24>
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	f04080e7          	jalr	-252(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80003528:	0000c797          	auipc	a5,0xc
    8000352c:	52a7b423          	sd	a0,1320(a5) # 8000fa50 <_ZN20_ThreadPriorityQueue5cacheE>
    80003530:	fbdff06f          	j	800034ec <_ZN20_ThreadPriorityQueuenwEm+0x1c>

0000000080003534 <_ZN20_ThreadPriorityQueuedlEPv>:
void _ThreadPriorityQueue::operator delete(void* addr) {
    80003534:	ff010113          	addi	sp,sp,-16
    80003538:	00113423          	sd	ra,8(sp)
    8000353c:	00813023          	sd	s0,0(sp)
    80003540:	01010413          	addi	s0,sp,16
    80003544:	00050593          	mv	a1,a0
    kmem_cache_free(cache, addr);
    80003548:	0000c517          	auipc	a0,0xc
    8000354c:	50853503          	ld	a0,1288(a0) # 8000fa50 <_ZN20_ThreadPriorityQueue5cacheE>
    80003550:	ffffe097          	auipc	ra,0xffffe
    80003554:	f4c080e7          	jalr	-180(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
}
    80003558:	00813083          	ld	ra,8(sp)
    8000355c:	00013403          	ld	s0,0(sp)
    80003560:	01010113          	addi	sp,sp,16
    80003564:	00008067          	ret

0000000080003568 <_ZN20_ThreadPriorityQueue3addEP7_Thread>:

int _ThreadPriorityQueue::add(thread_t thread) {
    80003568:	fd010113          	addi	sp,sp,-48
    8000356c:	02113423          	sd	ra,40(sp)
    80003570:	02813023          	sd	s0,32(sp)
    80003574:	00913c23          	sd	s1,24(sp)
    80003578:	01213823          	sd	s2,16(sp)
    8000357c:	01313423          	sd	s3,8(sp)
    80003580:	03010413          	addi	s0,sp,48
    80003584:	00050993          	mv	s3,a0
    80003588:	00058913          	mv	s2,a1
    Node* cur = new Node(thread);
    8000358c:	01800513          	li	a0,24
    80003590:	00000097          	auipc	ra,0x0
    80003594:	ea8080e7          	jalr	-344(ra) # 80003438 <_ZN20_ThreadPriorityQueue4NodenwEm>
    80003598:	00050493          	mv	s1,a0
    8000359c:	00050863          	beqz	a0,800035ac <_ZN20_ThreadPriorityQueue3addEP7_Thread+0x44>
        Node(thread_t thread) : thread(thread), next(0), prev(0) {}
    800035a0:	01253023          	sd	s2,0(a0)
    800035a4:	00053423          	sd	zero,8(a0)
    800035a8:	00053823          	sd	zero,16(a0)
    if (!cur) return -1;
    800035ac:	08048a63          	beqz	s1,80003640 <_ZN20_ThreadPriorityQueue3addEP7_Thread+0xd8>
    Node* prev, *next;
    if (thread->top()) {
    800035b0:	00090513          	mv	a0,s2
    800035b4:	00000097          	auipc	ra,0x0
    800035b8:	584080e7          	jalr	1412(ra) # 80003b38 <_ZN7_Thread3topEv>
    800035bc:	04050263          	beqz	a0,80003600 <_ZN20_ThreadPriorityQueue3addEP7_Thread+0x98>
        prev = nullptr, next = first;
    800035c0:	0009b603          	ld	a2,0(s3)
    800035c4:	00000793          	li	a5,0
        prev = last, next = nullptr;
        while (prev && prev->thread->getPriority() < thread->getPriority()) {
            next = prev; prev = prev->prev;
        }
    }
    cur->next = next;
    800035c8:	00c4b423          	sd	a2,8(s1)
    if (next) next->prev = cur;
    800035cc:	06060063          	beqz	a2,8000362c <_ZN20_ThreadPriorityQueue3addEP7_Thread+0xc4>
    800035d0:	00963823          	sd	s1,16(a2) # 1010 <_entry-0x7fffeff0>
    else last = cur;
    cur->prev = prev;
    800035d4:	00f4b823          	sd	a5,16(s1)
    if (prev) prev->next = cur;
    800035d8:	04078e63          	beqz	a5,80003634 <_ZN20_ThreadPriorityQueue3addEP7_Thread+0xcc>
    800035dc:	0097b423          	sd	s1,8(a5)
    else first = cur;
    return 0;
    800035e0:	00000513          	li	a0,0
}
    800035e4:	02813083          	ld	ra,40(sp)
    800035e8:	02013403          	ld	s0,32(sp)
    800035ec:	01813483          	ld	s1,24(sp)
    800035f0:	01013903          	ld	s2,16(sp)
    800035f4:	00813983          	ld	s3,8(sp)
    800035f8:	03010113          	addi	sp,sp,48
    800035fc:	00008067          	ret
        prev = last, next = nullptr;
    80003600:	0089b783          	ld	a5,8(s3)
    80003604:	00000613          	li	a2,0
    80003608:	00c0006f          	j	80003614 <_ZN20_ThreadPriorityQueue3addEP7_Thread+0xac>
            next = prev; prev = prev->prev;
    8000360c:	00078613          	mv	a2,a5
    80003610:	0107b783          	ld	a5,16(a5)
        while (prev && prev->thread->getPriority() < thread->getPriority()) {
    80003614:	fa078ae3          	beqz	a5,800035c8 <_ZN20_ThreadPriorityQueue3addEP7_Thread+0x60>
    80003618:	0007b703          	ld	a4,0(a5)
    int getPriority() { return priority; }
    8000361c:	02c72683          	lw	a3,44(a4)
    80003620:	02c92703          	lw	a4,44(s2)
    80003624:	fee6c4e3          	blt	a3,a4,8000360c <_ZN20_ThreadPriorityQueue3addEP7_Thread+0xa4>
    80003628:	fa1ff06f          	j	800035c8 <_ZN20_ThreadPriorityQueue3addEP7_Thread+0x60>
    else last = cur;
    8000362c:	0099b423          	sd	s1,8(s3)
    80003630:	fa5ff06f          	j	800035d4 <_ZN20_ThreadPriorityQueue3addEP7_Thread+0x6c>
    else first = cur;
    80003634:	0099b023          	sd	s1,0(s3)
    return 0;
    80003638:	00000513          	li	a0,0
    8000363c:	fa9ff06f          	j	800035e4 <_ZN20_ThreadPriorityQueue3addEP7_Thread+0x7c>
    if (!cur) return -1;
    80003640:	fff00513          	li	a0,-1
    80003644:	fa1ff06f          	j	800035e4 <_ZN20_ThreadPriorityQueue3addEP7_Thread+0x7c>

0000000080003648 <_ZN20_ThreadPriorityQueue6removeEv>:
thread_t _ThreadPriorityQueue::remove() {
    80003648:	fe010113          	addi	sp,sp,-32
    8000364c:	00113c23          	sd	ra,24(sp)
    80003650:	00813823          	sd	s0,16(sp)
    80003654:	00913423          	sd	s1,8(sp)
    80003658:	02010413          	addi	s0,sp,32
    8000365c:	00050793          	mv	a5,a0
    if (!first) return nullptr;
    80003660:	00053503          	ld	a0,0(a0)
    80003664:	04050063          	beqz	a0,800036a4 <_ZN20_ThreadPriorityQueue6removeEv+0x5c>
    thread_t ret = first->thread;
    80003668:	00053483          	ld	s1,0(a0)
    Node* node = first;
    first = node->next;
    8000366c:	00853703          	ld	a4,8(a0)
    80003670:	00e7b023          	sd	a4,0(a5)
    if (first) first->prev = nullptr;
    80003674:	02070463          	beqz	a4,8000369c <_ZN20_ThreadPriorityQueue6removeEv+0x54>
    80003678:	00073823          	sd	zero,16(a4)
    else last = nullptr;
    delete node;
    8000367c:	00000097          	auipc	ra,0x0
    80003680:	e20080e7          	jalr	-480(ra) # 8000349c <_ZN20_ThreadPriorityQueue4NodedlEPv>
    return ret;
}
    80003684:	00048513          	mv	a0,s1
    80003688:	01813083          	ld	ra,24(sp)
    8000368c:	01013403          	ld	s0,16(sp)
    80003690:	00813483          	ld	s1,8(sp)
    80003694:	02010113          	addi	sp,sp,32
    80003698:	00008067          	ret
    else last = nullptr;
    8000369c:	0007b423          	sd	zero,8(a5)
    800036a0:	fddff06f          	j	8000367c <_ZN20_ThreadPriorityQueue6removeEv+0x34>
    if (!first) return nullptr;
    800036a4:	00050493          	mv	s1,a0
    800036a8:	fddff06f          	j	80003684 <_ZN20_ThreadPriorityQueue6removeEv+0x3c>

00000000800036ac <_ZN20_ThreadPriorityQueue5emptyEv>:
int _ThreadPriorityQueue::empty() {
    800036ac:	ff010113          	addi	sp,sp,-16
    800036b0:	00813423          	sd	s0,8(sp)
    800036b4:	01010413          	addi	s0,sp,16
    return !first;
    800036b8:	00053503          	ld	a0,0(a0)
    800036bc:	00153513          	seqz	a0,a0
    800036c0:	00813403          	ld	s0,8(sp)
    800036c4:	01010113          	addi	sp,sp,16
    800036c8:	00008067          	ret

00000000800036cc <_ZN7_ThreadnwEm>:
const size_t _Thread::DEFAULT_SSP_SIZE = 4096*2;
thread_t _Thread::main;

kmem_cache_t* _Thread::cache = nullptr;

void* _Thread::operator new(size_t) {
    800036cc:	ff010113          	addi	sp,sp,-16
    800036d0:	00113423          	sd	ra,8(sp)
    800036d4:	00813023          	sd	s0,0(sp)
    800036d8:	01010413          	addi	s0,sp,16
    if (!cache) cache = kmem_cache_create("Thread Cache", sizeof(_Thread), nullptr, nullptr);
    800036dc:	0000c797          	auipc	a5,0xc
    800036e0:	37c7b783          	ld	a5,892(a5) # 8000fa58 <_ZN7_Thread5cacheE>
    800036e4:	02078263          	beqz	a5,80003708 <_ZN7_ThreadnwEm+0x3c>
    return kmem_cache_alloc(cache);
    800036e8:	0000c517          	auipc	a0,0xc
    800036ec:	37053503          	ld	a0,880(a0) # 8000fa58 <_ZN7_Thread5cacheE>
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	d84080e7          	jalr	-636(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
}
    800036f8:	00813083          	ld	ra,8(sp)
    800036fc:	00013403          	ld	s0,0(sp)
    80003700:	01010113          	addi	sp,sp,16
    80003704:	00008067          	ret
    if (!cache) cache = kmem_cache_create("Thread Cache", sizeof(_Thread), nullptr, nullptr);
    80003708:	00000693          	li	a3,0
    8000370c:	00000613          	li	a2,0
    80003710:	04800593          	li	a1,72
    80003714:	00008517          	auipc	a0,0x8
    80003718:	bf450513          	addi	a0,a0,-1036 # 8000b308 <_ZN12kmem_cache_t3MAXE+0x44>
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	d08080e7          	jalr	-760(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80003724:	0000c797          	auipc	a5,0xc
    80003728:	32a7ba23          	sd	a0,820(a5) # 8000fa58 <_ZN7_Thread5cacheE>
    8000372c:	fbdff06f          	j	800036e8 <_ZN7_ThreadnwEm+0x1c>

0000000080003730 <_ZN7_ThreaddlEPv>:
void _Thread::operator delete(void* addr) {
    80003730:	ff010113          	addi	sp,sp,-16
    80003734:	00113423          	sd	ra,8(sp)
    80003738:	00813023          	sd	s0,0(sp)
    8000373c:	01010413          	addi	s0,sp,16
    80003740:	00050593          	mv	a1,a0
    kmem_cache_free(cache, addr);
    80003744:	0000c517          	auipc	a0,0xc
    80003748:	31453503          	ld	a0,788(a0) # 8000fa58 <_ZN7_Thread5cacheE>
    8000374c:	ffffe097          	auipc	ra,0xffffe
    80003750:	d50080e7          	jalr	-688(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
}
    80003754:	00813083          	ld	ra,8(sp)
    80003758:	00013403          	ld	s0,0(sp)
    8000375c:	01010113          	addi	sp,sp,16
    80003760:	00008067          	ret

0000000080003764 <_ZN7_ThreadD1Ev>:
_Thread::~_Thread() {}
    80003764:	ff010113          	addi	sp,sp,-16
    80003768:	00813423          	sd	s0,8(sp)
    8000376c:	01010413          	addi	s0,sp,16
    80003770:	00813403          	ld	s0,8(sp)
    80003774:	01010113          	addi	sp,sp,16
    80003778:	00008067          	ret

000000008000377c <_ZN7_ThreadC1EPFPvS0_ES0_S0_mibb>:
_Thread::_Thread(void* (*startRoutine)(void*), void* arg, void* stackSpace, size_t stackSize, int priority, bool daemon, bool isVoid) {
    8000377c:	fd010113          	addi	sp,sp,-48
    80003780:	02113423          	sd	ra,40(sp)
    80003784:	02813023          	sd	s0,32(sp)
    80003788:	00913c23          	sd	s1,24(sp)
    8000378c:	01213823          	sd	s2,16(sp)
    80003790:	01313423          	sd	s3,8(sp)
    80003794:	03010413          	addi	s0,sp,48
    80003798:	00050493          	mv	s1,a0
    8000379c:	00058993          	mv	s3,a1
    800037a0:	00060913          	mv	s2,a2
    flags = 0u;
    800037a4:	02052423          	sw	zero,40(a0)
    if (daemon) flags |= 32u;
    800037a8:	00080663          	beqz	a6,800037b4 <_ZN7_ThreadC1EPFPvS0_ES0_S0_mibb+0x38>
    800037ac:	02000613          	li	a2,32
    800037b0:	02c52423          	sw	a2,40(a0)
    this->priority = priority;
    800037b4:	02f4a623          	sw	a5,44(s1)
    parent = running;
    800037b8:	0000c797          	auipc	a5,0xc
    800037bc:	2a87b783          	ld	a5,680(a5) # 8000fa60 <_ZN7_Thread7runningE>
    800037c0:	02f4b823          	sd	a5,48(s1)
    waitManager = nullptr;
    800037c4:	0404b023          	sd	zero,64(s1)
    if (isVoid) returnValue = nullptr;
    800037c8:	06088663          	beqz	a7,80003834 <_ZN7_ThreadC1EPFPvS0_ES0_S0_mibb+0xb8>
    800037cc:	0204bc23          	sd	zero,56(s1)
    else returnValue = (void*)1;

    sp = stackSpace;
    sptop = (void *) ((char *) sp - stackSize);
    800037d0:	40e68733          	sub	a4,a3,a4
    800037d4:	00e4b823          	sd	a4,16(s1)
    sp = (void *) ((uint64) sp - (uint64) sp % 16);
    800037d8:	ff06f693          	andi	a3,a3,-16
    800037dc:	00d4b023          	sd	a3,0(s1)
    ssptop = _Mem::allocate((_Thread::DEFAULT_SSP_SIZE));
    800037e0:	00002537          	lui	a0,0x2
    800037e4:	00001097          	auipc	ra,0x1
    800037e8:	7bc080e7          	jalr	1980(ra) # 80004fa0 <_ZN4_Mem8allocateEm>
    800037ec:	00a4bc23          	sd	a0,24(s1)
    ssp = (char*)ssptop + _Thread::DEFAULT_SSP_SIZE;
    800037f0:	000027b7          	lui	a5,0x2
    800037f4:	00f50533          	add	a0,a0,a5
    ssp = (void*)((uint64)ssp - (uint64)ssp%16); //sp i ssp moraju biti deljivi sa 16
    800037f8:	ff057513          	andi	a0,a0,-16
    800037fc:	00a4b423          	sd	a0,8(s1)
    //stavljam na sstek start_routine i arg kako be starter mogao da zapocne nit
    __asm__ volatile("mv t5, %0": : "r"(ssp));
    80003800:	00050f13          	mv	t5,a0
    __asm__ volatile("sd %0, -8(t5)" : : "r"(startRoutine));
    80003804:	ff3f3c23          	sd	s3,-8(t5)
    __asm__ volatile("sd %0, -16(t5)" : : "r"(arg));
    80003808:	ff2f3823          	sd	s2,-16(t5)
    pc = (uint64) &starter;
    8000380c:	0000e797          	auipc	a5,0xe
    80003810:	85c7b783          	ld	a5,-1956(a5) # 80011068 <_GLOBAL_OFFSET_TABLE_+0x68>
    80003814:	02f4b023          	sd	a5,32(s1)
}
    80003818:	02813083          	ld	ra,40(sp)
    8000381c:	02013403          	ld	s0,32(sp)
    80003820:	01813483          	ld	s1,24(sp)
    80003824:	01013903          	ld	s2,16(sp)
    80003828:	00813983          	ld	s3,8(sp)
    8000382c:	03010113          	addi	sp,sp,48
    80003830:	00008067          	ret
    else returnValue = (void*)1;
    80003834:	00100793          	li	a5,1
    80003838:	02f4bc23          	sd	a5,56(s1)
    8000383c:	f95ff06f          	j	800037d0 <_ZN7_ThreadC1EPFPvS0_ES0_S0_mibb+0x54>

0000000080003840 <_ZN7_ThreadC1EPFPvS0_ES0_mibb>:
_Thread::_Thread(void* (*startRoutine)(void*), void* arg, size_t stackSize, int priority, bool daemon, bool isVoid) :
    80003840:	fb010113          	addi	sp,sp,-80
    80003844:	04113423          	sd	ra,72(sp)
    80003848:	04813023          	sd	s0,64(sp)
    8000384c:	02913c23          	sd	s1,56(sp)
    80003850:	03213823          	sd	s2,48(sp)
    80003854:	03313423          	sd	s3,40(sp)
    80003858:	03413023          	sd	s4,32(sp)
    8000385c:	01513c23          	sd	s5,24(sp)
    80003860:	01613823          	sd	s6,16(sp)
    80003864:	01713423          	sd	s7,8(sp)
    80003868:	05010413          	addi	s0,sp,80
    8000386c:	00050913          	mv	s2,a0
    80003870:	00058993          	mv	s3,a1
    80003874:	00060a13          	mv	s4,a2
    80003878:	00068493          	mv	s1,a3
    8000387c:	00070a93          	mv	s5,a4
    80003880:	00078b13          	mv	s6,a5
    80003884:	00080b93          	mv	s7,a6
_Thread(startRoutine, arg, (char*)_Mem::allocate(stackSize) + stackSize, stackSize, priority, daemon, isVoid) {}
    80003888:	00068513          	mv	a0,a3
    8000388c:	00001097          	auipc	ra,0x1
    80003890:	714080e7          	jalr	1812(ra) # 80004fa0 <_ZN4_Mem8allocateEm>
    80003894:	000b8893          	mv	a7,s7
    80003898:	000b0813          	mv	a6,s6
    8000389c:	000a8793          	mv	a5,s5
    800038a0:	00048713          	mv	a4,s1
    800038a4:	009506b3          	add	a3,a0,s1
    800038a8:	000a0613          	mv	a2,s4
    800038ac:	00098593          	mv	a1,s3
    800038b0:	00090513          	mv	a0,s2
    800038b4:	00000097          	auipc	ra,0x0
    800038b8:	ec8080e7          	jalr	-312(ra) # 8000377c <_ZN7_ThreadC1EPFPvS0_ES0_S0_mibb>
    800038bc:	04813083          	ld	ra,72(sp)
    800038c0:	04013403          	ld	s0,64(sp)
    800038c4:	03813483          	ld	s1,56(sp)
    800038c8:	03013903          	ld	s2,48(sp)
    800038cc:	02813983          	ld	s3,40(sp)
    800038d0:	02013a03          	ld	s4,32(sp)
    800038d4:	01813a83          	ld	s5,24(sp)
    800038d8:	01013b03          	ld	s6,16(sp)
    800038dc:	00813b83          	ld	s7,8(sp)
    800038e0:	05010113          	addi	sp,sp,80
    800038e4:	00008067          	ret

00000000800038e8 <_ZN7_ThreadC1EPFPvS0_ES0_ibb>:
_Thread::_Thread(void* (*startRoutine)(void*), void* arg, int priority, bool daemon, bool isVoid) :
    800038e8:	fe010113          	addi	sp,sp,-32
    800038ec:	00113c23          	sd	ra,24(sp)
    800038f0:	00813823          	sd	s0,16(sp)
    800038f4:	00913423          	sd	s1,8(sp)
    800038f8:	02010413          	addi	s0,sp,32
    800038fc:	00050493          	mv	s1,a0
_Thread(startRoutine, arg, nullptr, 0, priority, daemon, isVoid) { pc = (uint64) &sstarter; }
    80003900:	00078893          	mv	a7,a5
    80003904:	00070813          	mv	a6,a4
    80003908:	00068793          	mv	a5,a3
    8000390c:	00000713          	li	a4,0
    80003910:	00000693          	li	a3,0
    80003914:	00000097          	auipc	ra,0x0
    80003918:	e68080e7          	jalr	-408(ra) # 8000377c <_ZN7_ThreadC1EPFPvS0_ES0_S0_mibb>
    8000391c:	0000d797          	auipc	a5,0xd
    80003920:	7b47b783          	ld	a5,1972(a5) # 800110d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
    80003924:	02f4b023          	sd	a5,32(s1)
    80003928:	01813083          	ld	ra,24(sp)
    8000392c:	01013403          	ld	s0,16(sp)
    80003930:	00813483          	ld	s1,8(sp)
    80003934:	02010113          	addi	sp,sp,32
    80003938:	00008067          	ret

000000008000393c <_ZN7_ThreadC1Ev>:
_Thread::_Thread() {
    8000393c:	ff010113          	addi	sp,sp,-16
    80003940:	00813423          	sd	s0,8(sp)
    80003944:	01010413          	addi	s0,sp,16
    sp = ssp = sptop = ssptop = nullptr;
    80003948:	00053c23          	sd	zero,24(a0) # 2018 <_entry-0x7fffdfe8>
    8000394c:	00053823          	sd	zero,16(a0)
    80003950:	00053423          	sd	zero,8(a0)
    80003954:	00053023          	sd	zero,0(a0)
    flags =  4;
    80003958:	00400793          	li	a5,4
    8000395c:	02f52423          	sw	a5,40(a0)
    parent = nullptr; waitManager =  nullptr; priority = TOP_PRIORITY; returnValue = nullptr; pc = 0;
    80003960:	02053823          	sd	zero,48(a0)
    80003964:	04053023          	sd	zero,64(a0)
    80003968:	3e800793          	li	a5,1000
    8000396c:	02f52623          	sw	a5,44(a0)
    80003970:	02053c23          	sd	zero,56(a0)
    80003974:	02053023          	sd	zero,32(a0)
}
    80003978:	00813403          	ld	s0,8(sp)
    8000397c:	01010113          	addi	sp,sp,16
    80003980:	00008067          	ret

0000000080003984 <_ZN7_Thread8busyWaitEv>:
    return create(handle, (void(*)(void*))startRoutine, nullptr, priority, options);
}
//cekanje da se probudi neka nit (ili da prodje buffer semafor)
//pritom moraju da budu dozvoljeni prekidi tajmera da bi tajmer mogao da radi svoj posao
//kao i hardvera u slucaju da sve niti npr cekaju da ucitaju karakter
void _Thread::busyWait() {
    80003984:	ff010113          	addi	sp,sp,-16
    80003988:	00113423          	sd	ra,8(sp)
    8000398c:	00813023          	sd	s0,0(sp)
    80003990:	01010413          	addi	s0,sp,16
    time = 1000;
    80003994:	3e800793          	li	a5,1000
    80003998:	0000c717          	auipc	a4,0xc
    8000399c:	daf73023          	sd	a5,-608(a4) # 8000f738 <_ZN7_Thread4timeE>
    _SBIT::SIEenable();//dozvola prekida (tajmera)
    800039a0:	ffffd097          	auipc	ra,0xffffd
    800039a4:	660080e7          	jalr	1632(ra) # 80001000 <_ZN5_SBIT9SIEenableEv>
    while (_Scheduler::empty()) time = 1000;
    800039a8:	ffffe097          	auipc	ra,0xffffe
    800039ac:	d38080e7          	jalr	-712(ra) # 800016e0 <_ZN10_Scheduler5emptyEv>
    800039b0:	00050a63          	beqz	a0,800039c4 <_ZN7_Thread8busyWaitEv+0x40>
    800039b4:	3e800793          	li	a5,1000
    800039b8:	0000c717          	auipc	a4,0xc
    800039bc:	d8f73023          	sd	a5,-640(a4) # 8000f738 <_ZN7_Thread4timeE>
    800039c0:	fe9ff06f          	j	800039a8 <_ZN7_Thread8busyWaitEv+0x24>
    _SBIT::SIEdisable();
    800039c4:	ffffd097          	auipc	ra,0xffffd
    800039c8:	644080e7          	jalr	1604(ra) # 80001008 <_ZN5_SBIT10SIEdisableEv>
    time = DEFAULT_TIME_SLICE;
    800039cc:	00200793          	li	a5,2
    800039d0:	0000c717          	auipc	a4,0xc
    800039d4:	d6f73423          	sd	a5,-664(a4) # 8000f738 <_ZN7_Thread4timeE>
}
    800039d8:	00813083          	ld	ra,8(sp)
    800039dc:	00013403          	ld	s0,0(sp)
    800039e0:	01010113          	addi	sp,sp,16
    800039e4:	00008067          	ret

00000000800039e8 <_ZN7_Thread5abortEv>:
    else _Scheduler::get(); //siguran sam da ce moci jer readyFirst != 0
    __asm__ volatile("mv ra, %0" : : "r"(running->pc));
    __asm__ volatile("ret");
    return 0;
}
void _Thread::abort() {
    800039e8:	ff010113          	addi	sp,sp,-16
    800039ec:	00813423          	sd	s0,8(sp)
    800039f0:	01010413          	addi	s0,sp,16
    running = main;
    800039f4:	0000c717          	auipc	a4,0xc
    800039f8:	06470713          	addi	a4,a4,100 # 8000fa58 <_ZN7_Thread5cacheE>
    800039fc:	01073783          	ld	a5,16(a4)
    80003a00:	00f73423          	sd	a5,8(a4)
    __asm__ volatile("mv ra, %0" : : "r"(running->pc));
    80003a04:	0207b783          	ld	a5,32(a5)
    80003a08:	00078093          	mv	ra,a5
    __asm__ volatile("ret");
    80003a0c:	00008067          	ret
}
    80003a10:	00813403          	ld	s0,8(sp)
    80003a14:	01010113          	addi	sp,sp,16
    80003a18:	00008067          	ret

0000000080003a1c <_ZN7_Thread4tickEv>:

void _Thread::tick() {
    80003a1c:	ff010113          	addi	sp,sp,-16
    80003a20:	00113423          	sd	ra,8(sp)
    80003a24:	00813023          	sd	s0,0(sp)
    80003a28:	01010413          	addi	s0,sp,16
    _Sleep::tick();
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	264080e7          	jalr	612(ra) # 80001c90 <_ZN6_Sleep4tickEv>
    time--;
    80003a34:	0000c717          	auipc	a4,0xc
    80003a38:	d0470713          	addi	a4,a4,-764 # 8000f738 <_ZN7_Thread4timeE>
    80003a3c:	00073783          	ld	a5,0(a4)
    80003a40:	fff78793          	addi	a5,a5,-1
    80003a44:	00f73023          	sd	a5,0(a4)
    clock++;
    80003a48:	0000c697          	auipc	a3,0xc
    80003a4c:	01068693          	addi	a3,a3,16 # 8000fa58 <_ZN7_Thread5cacheE>
    80003a50:	0186b703          	ld	a4,24(a3)
    80003a54:	00170713          	addi	a4,a4,1
    80003a58:	00e6bc23          	sd	a4,24(a3)
    if (time <= 0) {
    80003a5c:	00078a63          	beqz	a5,80003a70 <_ZN7_Thread4tickEv+0x54>
        _Scheduler::put(running); //stavljam _running u ready
        time = DEFAULT_TIME_SLICE;
        thread_dispatch();
    }
}
    80003a60:	00813083          	ld	ra,8(sp)
    80003a64:	00013403          	ld	s0,0(sp)
    80003a68:	01010113          	addi	sp,sp,16
    80003a6c:	00008067          	ret
        _Scheduler::put(running); //stavljam _running u ready
    80003a70:	0000c517          	auipc	a0,0xc
    80003a74:	ff053503          	ld	a0,-16(a0) # 8000fa60 <_ZN7_Thread7runningE>
    80003a78:	ffffe097          	auipc	ra,0xffffe
    80003a7c:	bf4080e7          	jalr	-1036(ra) # 8000166c <_ZN10_Scheduler3putEP7_Thread>
        time = DEFAULT_TIME_SLICE;
    80003a80:	00200793          	li	a5,2
    80003a84:	0000c717          	auipc	a4,0xc
    80003a88:	caf73a23          	sd	a5,-844(a4) # 8000f738 <_ZN7_Thread4timeE>
        thread_dispatch();
    80003a8c:	ffffd097          	auipc	ra,0xffffd
    80003a90:	64c080e7          	jalr	1612(ra) # 800010d8 <_ZN7_Thread15thread_dispatchEv>
}
    80003a94:	fcdff06f          	j	80003a60 <_ZN7_Thread4tickEv+0x44>

0000000080003a98 <_ZN7_Thread8dispatchEv>:
    }
    safeDispatch();
    return 0;
}

void _Thread::dispatch() {
    80003a98:	ff010113          	addi	sp,sp,-16
    80003a9c:	00113423          	sd	ra,8(sp)
    80003aa0:	00813023          	sd	s0,0(sp)
    80003aa4:	01010413          	addi	s0,sp,16
    _Scheduler::put(running);
    80003aa8:	0000c517          	auipc	a0,0xc
    80003aac:	fb853503          	ld	a0,-72(a0) # 8000fa60 <_ZN7_Thread7runningE>
    80003ab0:	ffffe097          	auipc	ra,0xffffe
    80003ab4:	bbc080e7          	jalr	-1092(ra) # 8000166c <_ZN10_Scheduler3putEP7_Thread>
    time = DEFAULT_TIME_SLICE;
    80003ab8:	00200793          	li	a5,2
    80003abc:	0000c717          	auipc	a4,0xc
    80003ac0:	c6f73e23          	sd	a5,-900(a4) # 8000f738 <_ZN7_Thread4timeE>
    thread_dispatch();
    80003ac4:	ffffd097          	auipc	ra,0xffffd
    80003ac8:	614080e7          	jalr	1556(ra) # 800010d8 <_ZN7_Thread15thread_dispatchEv>
}
    80003acc:	00813083          	ld	ra,8(sp)
    80003ad0:	00013403          	ld	s0,0(sp)
    80003ad4:	01010113          	addi	sp,sp,16
    80003ad8:	00008067          	ret

0000000080003adc <_ZN7_Thread6kickedEv>:

int _Thread::kicked() {
    80003adc:	ff010113          	addi	sp,sp,-16
    80003ae0:	00813423          	sd	s0,8(sp)
    80003ae4:	01010413          	addi	s0,sp,16
    if (flags & 1ul) {
    80003ae8:	02852783          	lw	a5,40(a0)
    80003aec:	0017f713          	andi	a4,a5,1
    80003af0:	00071a63          	bnez	a4,80003b04 <_ZN7_Thread6kickedEv+0x28>
        flags = flags & ~1ul;
        return 1;
    }
    return 0;
    80003af4:	00000513          	li	a0,0
}
    80003af8:	00813403          	ld	s0,8(sp)
    80003afc:	01010113          	addi	sp,sp,16
    80003b00:	00008067          	ret
        flags = flags & ~1ul;
    80003b04:	ffe7f793          	andi	a5,a5,-2
    80003b08:	02f52423          	sw	a5,40(a0)
        return 1;
    80003b0c:	00100513          	li	a0,1
    80003b10:	fe9ff06f          	j	80003af8 <_ZN7_Thread6kickedEv+0x1c>

0000000080003b14 <_ZN7_Thread4kickEv>:
void _Thread::kick() {
    80003b14:	ff010113          	addi	sp,sp,-16
    80003b18:	00813423          	sd	s0,8(sp)
    80003b1c:	01010413          	addi	s0,sp,16
    flags = flags | 1ul;
    80003b20:	02852783          	lw	a5,40(a0)
    80003b24:	0017e793          	ori	a5,a5,1
    80003b28:	02f52423          	sw	a5,40(a0)
}
    80003b2c:	00813403          	ld	s0,8(sp)
    80003b30:	01010113          	addi	sp,sp,16
    80003b34:	00008067          	ret

0000000080003b38 <_ZN7_Thread3topEv>:
int _Thread::top() {
    80003b38:	ff010113          	addi	sp,sp,-16
    80003b3c:	00813423          	sd	s0,8(sp)
    80003b40:	01010413          	addi	s0,sp,16
    return priority == TOP_PRIORITY;
    80003b44:	02c52503          	lw	a0,44(a0)
    80003b48:	c1850513          	addi	a0,a0,-1000
}
    80003b4c:	00153513          	seqz	a0,a0
    80003b50:	00813403          	ld	s0,8(sp)
    80003b54:	01010113          	addi	sp,sp,16
    80003b58:	00008067          	ret

0000000080003b5c <_ZN7_Thread7startedEv>:
    }
    total++;
    if (!daemon()) user++;
    return 0;
}
int _Thread::started() {
    80003b5c:	ff010113          	addi	sp,sp,-16
    80003b60:	00813423          	sd	s0,8(sp)
    80003b64:	01010413          	addi	s0,sp,16
    return (flags & 4u) != 0;
    80003b68:	02852503          	lw	a0,40(a0)
    80003b6c:	00457513          	andi	a0,a0,4
}
    80003b70:	00a03533          	snez	a0,a0
    80003b74:	00813403          	ld	s0,8(sp)
    80003b78:	01010113          	addi	sp,sp,16
    80003b7c:	00008067          	ret

0000000080003b80 <_ZN7_Thread6finishEv>:
void _Thread::finish() {
    80003b80:	ff010113          	addi	sp,sp,-16
    80003b84:	00813423          	sd	s0,8(sp)
    80003b88:	01010413          	addi	s0,sp,16
    flags = flags | 8u;
    80003b8c:	02852783          	lw	a5,40(a0)
    80003b90:	0087e793          	ori	a5,a5,8
    80003b94:	02f52423          	sw	a5,40(a0)
}
    80003b98:	00813403          	ld	s0,8(sp)
    80003b9c:	01010113          	addi	sp,sp,16
    80003ba0:	00008067          	ret

0000000080003ba4 <_ZN7_Thread8finishedEv>:
int _Thread::finished() {
    80003ba4:	ff010113          	addi	sp,sp,-16
    80003ba8:	00813423          	sd	s0,8(sp)
    80003bac:	01010413          	addi	s0,sp,16
    return (flags & 8u) != 0u;
    80003bb0:	02852503          	lw	a0,40(a0)
    80003bb4:	00857513          	andi	a0,a0,8
}
    80003bb8:	00a03533          	snez	a0,a0
    80003bbc:	00813403          	ld	s0,8(sp)
    80003bc0:	01010113          	addi	sp,sp,16
    80003bc4:	00008067          	ret

0000000080003bc8 <_ZN7_Thread10parentWaitEv>:
void _Thread::parentWait() {
    80003bc8:	ff010113          	addi	sp,sp,-16
    80003bcc:	00813423          	sd	s0,8(sp)
    80003bd0:	01010413          	addi	s0,sp,16
    flags = flags | 16u;
    80003bd4:	02852783          	lw	a5,40(a0)
    80003bd8:	0107e793          	ori	a5,a5,16
    80003bdc:	02f52423          	sw	a5,40(a0)
}
    80003be0:	00813403          	ld	s0,8(sp)
    80003be4:	01010113          	addi	sp,sp,16
    80003be8:	00008067          	ret

0000000080003bec <_ZN7_Thread13parentWaitingEv>:
int _Thread::parentWaiting() {
    80003bec:	ff010113          	addi	sp,sp,-16
    80003bf0:	00813423          	sd	s0,8(sp)
    80003bf4:	01010413          	addi	s0,sp,16
    return (flags & 16u) != 0u;
    80003bf8:	02852503          	lw	a0,40(a0)
    80003bfc:	01057513          	andi	a0,a0,16
}
    80003c00:	00a03533          	snez	a0,a0
    80003c04:	00813403          	ld	s0,8(sp)
    80003c08:	01010113          	addi	sp,sp,16
    80003c0c:	00008067          	ret

0000000080003c10 <_ZN7_Thread14parentWaitStopEv>:
void _Thread::parentWaitStop() {
    80003c10:	ff010113          	addi	sp,sp,-16
    80003c14:	00813423          	sd	s0,8(sp)
    80003c18:	01010413          	addi	s0,sp,16
    flags &= ~(16u);
    80003c1c:	02852783          	lw	a5,40(a0)
    80003c20:	fef7f793          	andi	a5,a5,-17
    80003c24:	02f52423          	sw	a5,40(a0)
}
    80003c28:	00813403          	ld	s0,8(sp)
    80003c2c:	01010113          	addi	sp,sp,16
    80003c30:	00008067          	ret

0000000080003c34 <_ZN7_Thread6daemonEv>:
int _Thread::daemon() {
    80003c34:	ff010113          	addi	sp,sp,-16
    80003c38:	00813423          	sd	s0,8(sp)
    80003c3c:	01010413          	addi	s0,sp,16
    return (flags & 32u) != 0u;
    80003c40:	02852503          	lw	a0,40(a0)
    80003c44:	02057513          	andi	a0,a0,32
}
    80003c48:	00a03533          	snez	a0,a0
    80003c4c:	00813403          	ld	s0,8(sp)
    80003c50:	01010113          	addi	sp,sp,16
    80003c54:	00008067          	ret

0000000080003c58 <_ZN7_Thread5startEv>:
int _Thread::start() {
    80003c58:	fe010113          	addi	sp,sp,-32
    80003c5c:	00113c23          	sd	ra,24(sp)
    80003c60:	00813823          	sd	s0,16(sp)
    80003c64:	00913423          	sd	s1,8(sp)
    80003c68:	01213023          	sd	s2,0(sp)
    80003c6c:	02010413          	addi	s0,sp,32
    80003c70:	00050913          	mv	s2,a0
    if (started()) return 1;
    80003c74:	00000097          	auipc	ra,0x0
    80003c78:	ee8080e7          	jalr	-280(ra) # 80003b5c <_ZN7_Thread7startedEv>
    80003c7c:	02050263          	beqz	a0,80003ca0 <_ZN7_Thread5startEv+0x48>
    80003c80:	00100493          	li	s1,1
}
    80003c84:	00048513          	mv	a0,s1
    80003c88:	01813083          	ld	ra,24(sp)
    80003c8c:	01013403          	ld	s0,16(sp)
    80003c90:	00813483          	ld	s1,8(sp)
    80003c94:	00013903          	ld	s2,0(sp)
    80003c98:	02010113          	addi	sp,sp,32
    80003c9c:	00008067          	ret
    80003ca0:	00050493          	mv	s1,a0
    flags = flags | 4u;
    80003ca4:	02892783          	lw	a5,40(s2)
    80003ca8:	0047e793          	ori	a5,a5,4
    80003cac:	02f92423          	sw	a5,40(s2)
    int ret = _Scheduler::put(this);
    80003cb0:	00090513          	mv	a0,s2
    80003cb4:	ffffe097          	auipc	ra,0xffffe
    80003cb8:	9b8080e7          	jalr	-1608(ra) # 8000166c <_ZN10_Scheduler3putEP7_Thread>
    if (ret < 0) {
    80003cbc:	04054263          	bltz	a0,80003d00 <_ZN7_Thread5startEv+0xa8>
    total++;
    80003cc0:	0000c717          	auipc	a4,0xc
    80003cc4:	d9870713          	addi	a4,a4,-616 # 8000fa58 <_ZN7_Thread5cacheE>
    80003cc8:	02072783          	lw	a5,32(a4)
    80003ccc:	0017879b          	addiw	a5,a5,1
    80003cd0:	02f72023          	sw	a5,32(a4)
    if (!daemon()) user++;
    80003cd4:	00090513          	mv	a0,s2
    80003cd8:	00000097          	auipc	ra,0x0
    80003cdc:	f5c080e7          	jalr	-164(ra) # 80003c34 <_ZN7_Thread6daemonEv>
    80003ce0:	fa0512e3          	bnez	a0,80003c84 <_ZN7_Thread5startEv+0x2c>
    80003ce4:	0000c717          	auipc	a4,0xc
    80003ce8:	d7470713          	addi	a4,a4,-652 # 8000fa58 <_ZN7_Thread5cacheE>
    80003cec:	02472783          	lw	a5,36(a4)
    80003cf0:	0017879b          	addiw	a5,a5,1
    80003cf4:	02f72223          	sw	a5,36(a4)
    return 0;
    80003cf8:	00050493          	mv	s1,a0
    80003cfc:	f89ff06f          	j	80003c84 <_ZN7_Thread5startEv+0x2c>
        return ret; //greska u put (alokacija)
    80003d00:	00050493          	mv	s1,a0
    80003d04:	f81ff06f          	j	80003c84 <_ZN7_Thread5startEv+0x2c>

0000000080003d08 <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii>:
int _Thread::create(thread_t* handle, void* (*startRoutine)(void*), void* arg, void* stackSpace, size_t stackSize, int priority, int options) {
    80003d08:	fa010113          	addi	sp,sp,-96
    80003d0c:	04113c23          	sd	ra,88(sp)
    80003d10:	04813823          	sd	s0,80(sp)
    80003d14:	04913423          	sd	s1,72(sp)
    80003d18:	05213023          	sd	s2,64(sp)
    80003d1c:	03313c23          	sd	s3,56(sp)
    80003d20:	03413823          	sd	s4,48(sp)
    80003d24:	03513423          	sd	s5,40(sp)
    80003d28:	03613023          	sd	s6,32(sp)
    80003d2c:	01713c23          	sd	s7,24(sp)
    80003d30:	01813823          	sd	s8,16(sp)
    80003d34:	01913423          	sd	s9,8(sp)
    80003d38:	06010413          	addi	s0,sp,96
    80003d3c:	00050993          	mv	s3,a0
    80003d40:	00058a13          	mv	s4,a1
    80003d44:	00060a93          	mv	s5,a2
    80003d48:	00068b13          	mv	s6,a3
    80003d4c:	00070b93          	mv	s7,a4
    80003d50:	00078c13          	mv	s8,a5
    80003d54:	00080913          	mv	s2,a6
    thread_t t = new _Thread(startRoutine, arg, stackSpace, stackSize, priority, (options & SET_DAEMON) || running->daemon());
    80003d58:	00287813          	andi	a6,a6,2
    80003d5c:	02081063          	bnez	a6,80003d7c <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii+0x74>
    80003d60:	0000c517          	auipc	a0,0xc
    80003d64:	d0053503          	ld	a0,-768(a0) # 8000fa60 <_ZN7_Thread7runningE>
    80003d68:	00000097          	auipc	ra,0x0
    80003d6c:	ecc080e7          	jalr	-308(ra) # 80003c34 <_ZN7_Thread6daemonEv>
    80003d70:	04051663          	bnez	a0,80003dbc <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii+0xb4>
    80003d74:	00000c93          	li	s9,0
    80003d78:	0080006f          	j	80003d80 <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii+0x78>
    80003d7c:	00100c93          	li	s9,1
    80003d80:	04800513          	li	a0,72
    80003d84:	00000097          	auipc	ra,0x0
    80003d88:	948080e7          	jalr	-1720(ra) # 800036cc <_ZN7_ThreadnwEm>
    80003d8c:	00050493          	mv	s1,a0
    80003d90:	02050a63          	beqz	a0,80003dc4 <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii+0xbc>
    80003d94:	00000893          	li	a7,0
    80003d98:	000c8813          	mv	a6,s9
    80003d9c:	000c0793          	mv	a5,s8
    80003da0:	000b8713          	mv	a4,s7
    80003da4:	000b0693          	mv	a3,s6
    80003da8:	000a8613          	mv	a2,s5
    80003dac:	000a0593          	mv	a1,s4
    80003db0:	00000097          	auipc	ra,0x0
    80003db4:	9cc080e7          	jalr	-1588(ra) # 8000377c <_ZN7_ThreadC1EPFPvS0_ES0_S0_mibb>
    80003db8:	00c0006f          	j	80003dc4 <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii+0xbc>
    80003dbc:	00100c93          	li	s9,1
    80003dc0:	fc1ff06f          	j	80003d80 <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii+0x78>
    if (!t || !t->ssptop) return -1; //greska u alokaciji
    80003dc4:	06048063          	beqz	s1,80003e24 <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii+0x11c>
    80003dc8:	0184b783          	ld	a5,24(s1)
    80003dcc:	06078063          	beqz	a5,80003e2c <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii+0x124>
    if (handle) *handle = t;
    80003dd0:	00098463          	beqz	s3,80003dd8 <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii+0xd0>
    80003dd4:	0099b023          	sd	s1,0(s3)
    if (options & SET_START) return t->start();
    80003dd8:	00197513          	andi	a0,s2,1
    80003ddc:	02051c63          	bnez	a0,80003e14 <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii+0x10c>
}
    80003de0:	05813083          	ld	ra,88(sp)
    80003de4:	05013403          	ld	s0,80(sp)
    80003de8:	04813483          	ld	s1,72(sp)
    80003dec:	04013903          	ld	s2,64(sp)
    80003df0:	03813983          	ld	s3,56(sp)
    80003df4:	03013a03          	ld	s4,48(sp)
    80003df8:	02813a83          	ld	s5,40(sp)
    80003dfc:	02013b03          	ld	s6,32(sp)
    80003e00:	01813b83          	ld	s7,24(sp)
    80003e04:	01013c03          	ld	s8,16(sp)
    80003e08:	00813c83          	ld	s9,8(sp)
    80003e0c:	06010113          	addi	sp,sp,96
    80003e10:	00008067          	ret
    if (options & SET_START) return t->start();
    80003e14:	00048513          	mv	a0,s1
    80003e18:	00000097          	auipc	ra,0x0
    80003e1c:	e40080e7          	jalr	-448(ra) # 80003c58 <_ZN7_Thread5startEv>
    80003e20:	fc1ff06f          	j	80003de0 <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii+0xd8>
    if (!t || !t->ssptop) return -1; //greska u alokaciji
    80003e24:	fff00513          	li	a0,-1
    80003e28:	fb9ff06f          	j	80003de0 <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii+0xd8>
    80003e2c:	fff00513          	li	a0,-1
    80003e30:	fb1ff06f          	j	80003de0 <_ZN7_Thread6createEPPS_PFPvS2_ES2_S2_mii+0xd8>
    80003e34:	00050913          	mv	s2,a0
    thread_t t = new _Thread(startRoutine, arg, stackSpace, stackSize, priority, (options & SET_DAEMON) || running->daemon());
    80003e38:	00048513          	mv	a0,s1
    80003e3c:	00000097          	auipc	ra,0x0
    80003e40:	8f4080e7          	jalr	-1804(ra) # 80003730 <_ZN7_ThreaddlEPv>
    80003e44:	00090513          	mv	a0,s2
    80003e48:	0000d097          	auipc	ra,0xd
    80003e4c:	da0080e7          	jalr	-608(ra) # 80010be8 <_Unwind_Resume>

0000000080003e50 <_ZN7_Thread6createEPPS_PFPvS2_ES2_mii>:
int _Thread::create(thread_t* handle, void* (*startRoutine)(void*), void* arg, size_t stackSize, int priority, int options) {
    80003e50:	fb010113          	addi	sp,sp,-80
    80003e54:	04113423          	sd	ra,72(sp)
    80003e58:	04813023          	sd	s0,64(sp)
    80003e5c:	02913c23          	sd	s1,56(sp)
    80003e60:	03213823          	sd	s2,48(sp)
    80003e64:	03313423          	sd	s3,40(sp)
    80003e68:	03413023          	sd	s4,32(sp)
    80003e6c:	01513c23          	sd	s5,24(sp)
    80003e70:	01613823          	sd	s6,16(sp)
    80003e74:	01713423          	sd	s7,8(sp)
    80003e78:	01813023          	sd	s8,0(sp)
    80003e7c:	05010413          	addi	s0,sp,80
    80003e80:	00050993          	mv	s3,a0
    80003e84:	00058a13          	mv	s4,a1
    80003e88:	00060a93          	mv	s5,a2
    80003e8c:	00068b93          	mv	s7,a3
    80003e90:	00070b13          	mv	s6,a4
    80003e94:	00078913          	mv	s2,a5
    thread_t t = new _Thread(startRoutine, arg, stackSize, priority, (options & SET_DAEMON) || running->daemon());
    80003e98:	0027f793          	andi	a5,a5,2
    80003e9c:	02079063          	bnez	a5,80003ebc <_ZN7_Thread6createEPPS_PFPvS2_ES2_mii+0x6c>
    80003ea0:	0000c517          	auipc	a0,0xc
    80003ea4:	bc053503          	ld	a0,-1088(a0) # 8000fa60 <_ZN7_Thread7runningE>
    80003ea8:	00000097          	auipc	ra,0x0
    80003eac:	d8c080e7          	jalr	-628(ra) # 80003c34 <_ZN7_Thread6daemonEv>
    80003eb0:	04051463          	bnez	a0,80003ef8 <_ZN7_Thread6createEPPS_PFPvS2_ES2_mii+0xa8>
    80003eb4:	00000c13          	li	s8,0
    80003eb8:	0080006f          	j	80003ec0 <_ZN7_Thread6createEPPS_PFPvS2_ES2_mii+0x70>
    80003ebc:	00100c13          	li	s8,1
    80003ec0:	04800513          	li	a0,72
    80003ec4:	00000097          	auipc	ra,0x0
    80003ec8:	808080e7          	jalr	-2040(ra) # 800036cc <_ZN7_ThreadnwEm>
    80003ecc:	00050493          	mv	s1,a0
    80003ed0:	02050863          	beqz	a0,80003f00 <_ZN7_Thread6createEPPS_PFPvS2_ES2_mii+0xb0>
    80003ed4:	00000813          	li	a6,0
    80003ed8:	000c0793          	mv	a5,s8
    80003edc:	000b0713          	mv	a4,s6
    80003ee0:	000b8693          	mv	a3,s7
    80003ee4:	000a8613          	mv	a2,s5
    80003ee8:	000a0593          	mv	a1,s4
    80003eec:	00000097          	auipc	ra,0x0
    80003ef0:	954080e7          	jalr	-1708(ra) # 80003840 <_ZN7_ThreadC1EPFPvS0_ES0_mibb>
    80003ef4:	00c0006f          	j	80003f00 <_ZN7_Thread6createEPPS_PFPvS2_ES2_mii+0xb0>
    80003ef8:	00100c13          	li	s8,1
    80003efc:	fc5ff06f          	j	80003ec0 <_ZN7_Thread6createEPPS_PFPvS2_ES2_mii+0x70>
    if (!t || !t->ssptop) return -1; //greska u alokaciji
    80003f00:	04048e63          	beqz	s1,80003f5c <_ZN7_Thread6createEPPS_PFPvS2_ES2_mii+0x10c>
    80003f04:	0184b783          	ld	a5,24(s1)
    80003f08:	04078e63          	beqz	a5,80003f64 <_ZN7_Thread6createEPPS_PFPvS2_ES2_mii+0x114>
    if (handle) *handle = t;
    80003f0c:	00098463          	beqz	s3,80003f14 <_ZN7_Thread6createEPPS_PFPvS2_ES2_mii+0xc4>
    80003f10:	0099b023          	sd	s1,0(s3)
    if (options & SET_START) return t->start();
    80003f14:	00197513          	andi	a0,s2,1
    80003f18:	02051a63          	bnez	a0,80003f4c <_ZN7_Thread6createEPPS_PFPvS2_ES2_mii+0xfc>
}
    80003f1c:	04813083          	ld	ra,72(sp)
    80003f20:	04013403          	ld	s0,64(sp)
    80003f24:	03813483          	ld	s1,56(sp)
    80003f28:	03013903          	ld	s2,48(sp)
    80003f2c:	02813983          	ld	s3,40(sp)
    80003f30:	02013a03          	ld	s4,32(sp)
    80003f34:	01813a83          	ld	s5,24(sp)
    80003f38:	01013b03          	ld	s6,16(sp)
    80003f3c:	00813b83          	ld	s7,8(sp)
    80003f40:	00013c03          	ld	s8,0(sp)
    80003f44:	05010113          	addi	sp,sp,80
    80003f48:	00008067          	ret
    if (options & SET_START) return t->start();
    80003f4c:	00048513          	mv	a0,s1
    80003f50:	00000097          	auipc	ra,0x0
    80003f54:	d08080e7          	jalr	-760(ra) # 80003c58 <_ZN7_Thread5startEv>
    80003f58:	fc5ff06f          	j	80003f1c <_ZN7_Thread6createEPPS_PFPvS2_ES2_mii+0xcc>
    if (!t || !t->ssptop) return -1; //greska u alokaciji
    80003f5c:	fff00513          	li	a0,-1
    80003f60:	fbdff06f          	j	80003f1c <_ZN7_Thread6createEPPS_PFPvS2_ES2_mii+0xcc>
    80003f64:	fff00513          	li	a0,-1
    80003f68:	fb5ff06f          	j	80003f1c <_ZN7_Thread6createEPPS_PFPvS2_ES2_mii+0xcc>
    80003f6c:	00050913          	mv	s2,a0
    thread_t t = new _Thread(startRoutine, arg, stackSize, priority, (options & SET_DAEMON) || running->daemon());
    80003f70:	00048513          	mv	a0,s1
    80003f74:	fffff097          	auipc	ra,0xfffff
    80003f78:	7bc080e7          	jalr	1980(ra) # 80003730 <_ZN7_ThreaddlEPv>
    80003f7c:	00090513          	mv	a0,s2
    80003f80:	0000d097          	auipc	ra,0xd
    80003f84:	c68080e7          	jalr	-920(ra) # 80010be8 <_Unwind_Resume>

0000000080003f88 <_ZN7_Thread6createEPPS_PFPvS2_ES2_ii>:
int _Thread::create(thread_t* handle, void* (*startRoutine)(void*), void* arg, int priority, int options) {
    80003f88:	fb010113          	addi	sp,sp,-80
    80003f8c:	04113423          	sd	ra,72(sp)
    80003f90:	04813023          	sd	s0,64(sp)
    80003f94:	02913c23          	sd	s1,56(sp)
    80003f98:	03213823          	sd	s2,48(sp)
    80003f9c:	03313423          	sd	s3,40(sp)
    80003fa0:	03413023          	sd	s4,32(sp)
    80003fa4:	01513c23          	sd	s5,24(sp)
    80003fa8:	01613823          	sd	s6,16(sp)
    80003fac:	01713423          	sd	s7,8(sp)
    80003fb0:	05010413          	addi	s0,sp,80
    80003fb4:	00050993          	mv	s3,a0
    80003fb8:	00058b13          	mv	s6,a1
    80003fbc:	00060a93          	mv	s5,a2
    80003fc0:	00068a13          	mv	s4,a3
    80003fc4:	00070493          	mv	s1,a4
    thread_t t = new _Thread(startRoutine, arg, priority, (options & SET_DAEMON) || running->daemon());
    80003fc8:	00277793          	andi	a5,a4,2
    80003fcc:	02079063          	bnez	a5,80003fec <_ZN7_Thread6createEPPS_PFPvS2_ES2_ii+0x64>
    80003fd0:	0000c517          	auipc	a0,0xc
    80003fd4:	a9053503          	ld	a0,-1392(a0) # 8000fa60 <_ZN7_Thread7runningE>
    80003fd8:	00000097          	auipc	ra,0x0
    80003fdc:	c5c080e7          	jalr	-932(ra) # 80003c34 <_ZN7_Thread6daemonEv>
    80003fe0:	04051263          	bnez	a0,80004024 <_ZN7_Thread6createEPPS_PFPvS2_ES2_ii+0x9c>
    80003fe4:	00000b93          	li	s7,0
    80003fe8:	0080006f          	j	80003ff0 <_ZN7_Thread6createEPPS_PFPvS2_ES2_ii+0x68>
    80003fec:	00100b93          	li	s7,1
    80003ff0:	04800513          	li	a0,72
    80003ff4:	fffff097          	auipc	ra,0xfffff
    80003ff8:	6d8080e7          	jalr	1752(ra) # 800036cc <_ZN7_ThreadnwEm>
    80003ffc:	00050913          	mv	s2,a0
    80004000:	02050663          	beqz	a0,8000402c <_ZN7_Thread6createEPPS_PFPvS2_ES2_ii+0xa4>
    80004004:	00000793          	li	a5,0
    80004008:	000b8713          	mv	a4,s7
    8000400c:	000a0693          	mv	a3,s4
    80004010:	000a8613          	mv	a2,s5
    80004014:	000b0593          	mv	a1,s6
    80004018:	00000097          	auipc	ra,0x0
    8000401c:	8d0080e7          	jalr	-1840(ra) # 800038e8 <_ZN7_ThreadC1EPFPvS0_ES0_ibb>
    80004020:	00c0006f          	j	8000402c <_ZN7_Thread6createEPPS_PFPvS2_ES2_ii+0xa4>
    80004024:	00100b93          	li	s7,1
    80004028:	fc9ff06f          	j	80003ff0 <_ZN7_Thread6createEPPS_PFPvS2_ES2_ii+0x68>
    if (!t || !t->ssptop) return -1; //greska u alokaciji
    8000402c:	04090c63          	beqz	s2,80004084 <_ZN7_Thread6createEPPS_PFPvS2_ES2_ii+0xfc>
    80004030:	01893783          	ld	a5,24(s2)
    80004034:	04078c63          	beqz	a5,8000408c <_ZN7_Thread6createEPPS_PFPvS2_ES2_ii+0x104>
    if (handle) *handle = t;
    80004038:	00098463          	beqz	s3,80004040 <_ZN7_Thread6createEPPS_PFPvS2_ES2_ii+0xb8>
    8000403c:	0129b023          	sd	s2,0(s3)
    if (options & SET_START) return t->start();
    80004040:	0014f513          	andi	a0,s1,1
    80004044:	02051863          	bnez	a0,80004074 <_ZN7_Thread6createEPPS_PFPvS2_ES2_ii+0xec>
}
    80004048:	04813083          	ld	ra,72(sp)
    8000404c:	04013403          	ld	s0,64(sp)
    80004050:	03813483          	ld	s1,56(sp)
    80004054:	03013903          	ld	s2,48(sp)
    80004058:	02813983          	ld	s3,40(sp)
    8000405c:	02013a03          	ld	s4,32(sp)
    80004060:	01813a83          	ld	s5,24(sp)
    80004064:	01013b03          	ld	s6,16(sp)
    80004068:	00813b83          	ld	s7,8(sp)
    8000406c:	05010113          	addi	sp,sp,80
    80004070:	00008067          	ret
    if (options & SET_START) return t->start();
    80004074:	00090513          	mv	a0,s2
    80004078:	00000097          	auipc	ra,0x0
    8000407c:	be0080e7          	jalr	-1056(ra) # 80003c58 <_ZN7_Thread5startEv>
    80004080:	fc9ff06f          	j	80004048 <_ZN7_Thread6createEPPS_PFPvS2_ES2_ii+0xc0>
    if (!t || !t->ssptop) return -1; //greska u alokaciji
    80004084:	fff00513          	li	a0,-1
    80004088:	fc1ff06f          	j	80004048 <_ZN7_Thread6createEPPS_PFPvS2_ES2_ii+0xc0>
    8000408c:	fff00513          	li	a0,-1
    80004090:	fb9ff06f          	j	80004048 <_ZN7_Thread6createEPPS_PFPvS2_ES2_ii+0xc0>
    80004094:	00050493          	mv	s1,a0
    thread_t t = new _Thread(startRoutine, arg, priority, (options & SET_DAEMON) || running->daemon());
    80004098:	00090513          	mv	a0,s2
    8000409c:	fffff097          	auipc	ra,0xfffff
    800040a0:	694080e7          	jalr	1684(ra) # 80003730 <_ZN7_ThreaddlEPv>
    800040a4:	00048513          	mv	a0,s1
    800040a8:	0000d097          	auipc	ra,0xd
    800040ac:	b40080e7          	jalr	-1216(ra) # 80010be8 <_Unwind_Resume>

00000000800040b0 <_ZN7_Thread6createEPPS_PFvPvES2_S2_mii>:
int _Thread::create(thread_t* handle, void (*startRoutine)(void*), void* arg, void* stackSpace, size_t stackSize, int priority, int options) {
    800040b0:	fa010113          	addi	sp,sp,-96
    800040b4:	04113c23          	sd	ra,88(sp)
    800040b8:	04813823          	sd	s0,80(sp)
    800040bc:	04913423          	sd	s1,72(sp)
    800040c0:	05213023          	sd	s2,64(sp)
    800040c4:	03313c23          	sd	s3,56(sp)
    800040c8:	03413823          	sd	s4,48(sp)
    800040cc:	03513423          	sd	s5,40(sp)
    800040d0:	03613023          	sd	s6,32(sp)
    800040d4:	01713c23          	sd	s7,24(sp)
    800040d8:	01813823          	sd	s8,16(sp)
    800040dc:	01913423          	sd	s9,8(sp)
    800040e0:	06010413          	addi	s0,sp,96
    800040e4:	00050993          	mv	s3,a0
    800040e8:	00058a13          	mv	s4,a1
    800040ec:	00060a93          	mv	s5,a2
    800040f0:	00068b13          	mv	s6,a3
    800040f4:	00070b93          	mv	s7,a4
    800040f8:	00078c13          	mv	s8,a5
    800040fc:	00080913          	mv	s2,a6
    thread_t t = new _Thread((void*(*)(void*))startRoutine, arg, stackSpace, stackSize, priority, (options & SET_DAEMON) || running->daemon(), true);
    80004100:	00287813          	andi	a6,a6,2
    80004104:	02081063          	bnez	a6,80004124 <_ZN7_Thread6createEPPS_PFvPvES2_S2_mii+0x74>
    80004108:	0000c517          	auipc	a0,0xc
    8000410c:	95853503          	ld	a0,-1704(a0) # 8000fa60 <_ZN7_Thread7runningE>
    80004110:	00000097          	auipc	ra,0x0
    80004114:	b24080e7          	jalr	-1244(ra) # 80003c34 <_ZN7_Thread6daemonEv>
    80004118:	04051663          	bnez	a0,80004164 <_ZN7_Thread6createEPPS_PFvPvES2_S2_mii+0xb4>
    8000411c:	00000c93          	li	s9,0
    80004120:	0080006f          	j	80004128 <_ZN7_Thread6createEPPS_PFvPvES2_S2_mii+0x78>
    80004124:	00100c93          	li	s9,1
    80004128:	04800513          	li	a0,72
    8000412c:	fffff097          	auipc	ra,0xfffff
    80004130:	5a0080e7          	jalr	1440(ra) # 800036cc <_ZN7_ThreadnwEm>
    80004134:	00050493          	mv	s1,a0
    80004138:	02050a63          	beqz	a0,8000416c <_ZN7_Thread6createEPPS_PFvPvES2_S2_mii+0xbc>
    8000413c:	00100893          	li	a7,1
    80004140:	000c8813          	mv	a6,s9
    80004144:	000c0793          	mv	a5,s8
    80004148:	000b8713          	mv	a4,s7
    8000414c:	000b0693          	mv	a3,s6
    80004150:	000a8613          	mv	a2,s5
    80004154:	000a0593          	mv	a1,s4
    80004158:	fffff097          	auipc	ra,0xfffff
    8000415c:	624080e7          	jalr	1572(ra) # 8000377c <_ZN7_ThreadC1EPFPvS0_ES0_S0_mibb>
    80004160:	00c0006f          	j	8000416c <_ZN7_Thread6createEPPS_PFvPvES2_S2_mii+0xbc>
    80004164:	00100c93          	li	s9,1
    80004168:	fc1ff06f          	j	80004128 <_ZN7_Thread6createEPPS_PFvPvES2_S2_mii+0x78>
    if (!t) return -1; //greska u alokaciji
    8000416c:	04048c63          	beqz	s1,800041c4 <_ZN7_Thread6createEPPS_PFvPvES2_S2_mii+0x114>
    if (handle) *handle = t;
    80004170:	00098463          	beqz	s3,80004178 <_ZN7_Thread6createEPPS_PFvPvES2_S2_mii+0xc8>
    80004174:	0099b023          	sd	s1,0(s3)
    if (options & SET_START) return t->start();
    80004178:	00197513          	andi	a0,s2,1
    8000417c:	02051c63          	bnez	a0,800041b4 <_ZN7_Thread6createEPPS_PFvPvES2_S2_mii+0x104>
}
    80004180:	05813083          	ld	ra,88(sp)
    80004184:	05013403          	ld	s0,80(sp)
    80004188:	04813483          	ld	s1,72(sp)
    8000418c:	04013903          	ld	s2,64(sp)
    80004190:	03813983          	ld	s3,56(sp)
    80004194:	03013a03          	ld	s4,48(sp)
    80004198:	02813a83          	ld	s5,40(sp)
    8000419c:	02013b03          	ld	s6,32(sp)
    800041a0:	01813b83          	ld	s7,24(sp)
    800041a4:	01013c03          	ld	s8,16(sp)
    800041a8:	00813c83          	ld	s9,8(sp)
    800041ac:	06010113          	addi	sp,sp,96
    800041b0:	00008067          	ret
    if (options & SET_START) return t->start();
    800041b4:	00048513          	mv	a0,s1
    800041b8:	00000097          	auipc	ra,0x0
    800041bc:	aa0080e7          	jalr	-1376(ra) # 80003c58 <_ZN7_Thread5startEv>
    800041c0:	fc1ff06f          	j	80004180 <_ZN7_Thread6createEPPS_PFvPvES2_S2_mii+0xd0>
    if (!t) return -1; //greska u alokaciji
    800041c4:	fff00513          	li	a0,-1
    800041c8:	fb9ff06f          	j	80004180 <_ZN7_Thread6createEPPS_PFvPvES2_S2_mii+0xd0>
    800041cc:	00050913          	mv	s2,a0
    thread_t t = new _Thread((void*(*)(void*))startRoutine, arg, stackSpace, stackSize, priority, (options & SET_DAEMON) || running->daemon(), true);
    800041d0:	00048513          	mv	a0,s1
    800041d4:	fffff097          	auipc	ra,0xfffff
    800041d8:	55c080e7          	jalr	1372(ra) # 80003730 <_ZN7_ThreaddlEPv>
    800041dc:	00090513          	mv	a0,s2
    800041e0:	0000d097          	auipc	ra,0xd
    800041e4:	a08080e7          	jalr	-1528(ra) # 80010be8 <_Unwind_Resume>

00000000800041e8 <_ZN7_Thread6createEPPS_PFvvEPvmii>:
int _Thread::create(thread_t* handle, void (*startRoutine)(void), void* stackSpace, size_t stackSize, int priority, int options) {
    800041e8:	ff010113          	addi	sp,sp,-16
    800041ec:	00113423          	sd	ra,8(sp)
    800041f0:	00813023          	sd	s0,0(sp)
    800041f4:	01010413          	addi	s0,sp,16
    return create(handle, (void(*)(void*))startRoutine, nullptr, stackSpace, stackSize, priority, options);
    800041f8:	00078813          	mv	a6,a5
    800041fc:	00070793          	mv	a5,a4
    80004200:	00068713          	mv	a4,a3
    80004204:	00060693          	mv	a3,a2
    80004208:	00000613          	li	a2,0
    8000420c:	00000097          	auipc	ra,0x0
    80004210:	ea4080e7          	jalr	-348(ra) # 800040b0 <_ZN7_Thread6createEPPS_PFvPvES2_S2_mii>
}
    80004214:	00813083          	ld	ra,8(sp)
    80004218:	00013403          	ld	s0,0(sp)
    8000421c:	01010113          	addi	sp,sp,16
    80004220:	00008067          	ret

0000000080004224 <_ZN7_Thread6createEPPS_PFvPvES2_mii>:
int _Thread::create(thread_t* handle, void (*startRoutine)(void*), void* arg, size_t stackSize, int priority, int options) {
    80004224:	fb010113          	addi	sp,sp,-80
    80004228:	04113423          	sd	ra,72(sp)
    8000422c:	04813023          	sd	s0,64(sp)
    80004230:	02913c23          	sd	s1,56(sp)
    80004234:	03213823          	sd	s2,48(sp)
    80004238:	03313423          	sd	s3,40(sp)
    8000423c:	03413023          	sd	s4,32(sp)
    80004240:	01513c23          	sd	s5,24(sp)
    80004244:	01613823          	sd	s6,16(sp)
    80004248:	01713423          	sd	s7,8(sp)
    8000424c:	01813023          	sd	s8,0(sp)
    80004250:	05010413          	addi	s0,sp,80
    80004254:	00050993          	mv	s3,a0
    80004258:	00058a13          	mv	s4,a1
    8000425c:	00060a93          	mv	s5,a2
    80004260:	00068b93          	mv	s7,a3
    80004264:	00070b13          	mv	s6,a4
    80004268:	00078493          	mv	s1,a5
    thread_t t = new _Thread((void*(*)(void*))startRoutine, arg, stackSize, priority, (options & SET_DAEMON) || running->daemon(), true);
    8000426c:	0027f793          	andi	a5,a5,2
    80004270:	02079063          	bnez	a5,80004290 <_ZN7_Thread6createEPPS_PFvPvES2_mii+0x6c>
    80004274:	0000b517          	auipc	a0,0xb
    80004278:	7ec53503          	ld	a0,2028(a0) # 8000fa60 <_ZN7_Thread7runningE>
    8000427c:	00000097          	auipc	ra,0x0
    80004280:	9b8080e7          	jalr	-1608(ra) # 80003c34 <_ZN7_Thread6daemonEv>
    80004284:	04051463          	bnez	a0,800042cc <_ZN7_Thread6createEPPS_PFvPvES2_mii+0xa8>
    80004288:	00000c13          	li	s8,0
    8000428c:	0080006f          	j	80004294 <_ZN7_Thread6createEPPS_PFvPvES2_mii+0x70>
    80004290:	00100c13          	li	s8,1
    80004294:	04800513          	li	a0,72
    80004298:	fffff097          	auipc	ra,0xfffff
    8000429c:	434080e7          	jalr	1076(ra) # 800036cc <_ZN7_ThreadnwEm>
    800042a0:	00050913          	mv	s2,a0
    800042a4:	02050863          	beqz	a0,800042d4 <_ZN7_Thread6createEPPS_PFvPvES2_mii+0xb0>
    800042a8:	00100813          	li	a6,1
    800042ac:	000c0793          	mv	a5,s8
    800042b0:	000b0713          	mv	a4,s6
    800042b4:	000b8693          	mv	a3,s7
    800042b8:	000a8613          	mv	a2,s5
    800042bc:	000a0593          	mv	a1,s4
    800042c0:	fffff097          	auipc	ra,0xfffff
    800042c4:	580080e7          	jalr	1408(ra) # 80003840 <_ZN7_ThreadC1EPFPvS0_ES0_mibb>
    800042c8:	00c0006f          	j	800042d4 <_ZN7_Thread6createEPPS_PFvPvES2_mii+0xb0>
    800042cc:	00100c13          	li	s8,1
    800042d0:	fc5ff06f          	j	80004294 <_ZN7_Thread6createEPPS_PFvPvES2_mii+0x70>
    if (!t) return -1; //greska u alokaciji
    800042d4:	04090a63          	beqz	s2,80004328 <_ZN7_Thread6createEPPS_PFvPvES2_mii+0x104>
    if (handle) *handle = t;
    800042d8:	00098463          	beqz	s3,800042e0 <_ZN7_Thread6createEPPS_PFvPvES2_mii+0xbc>
    800042dc:	0129b023          	sd	s2,0(s3)
    if (options & SET_START) return t->start();
    800042e0:	0014f513          	andi	a0,s1,1
    800042e4:	02051a63          	bnez	a0,80004318 <_ZN7_Thread6createEPPS_PFvPvES2_mii+0xf4>
}
    800042e8:	04813083          	ld	ra,72(sp)
    800042ec:	04013403          	ld	s0,64(sp)
    800042f0:	03813483          	ld	s1,56(sp)
    800042f4:	03013903          	ld	s2,48(sp)
    800042f8:	02813983          	ld	s3,40(sp)
    800042fc:	02013a03          	ld	s4,32(sp)
    80004300:	01813a83          	ld	s5,24(sp)
    80004304:	01013b03          	ld	s6,16(sp)
    80004308:	00813b83          	ld	s7,8(sp)
    8000430c:	00013c03          	ld	s8,0(sp)
    80004310:	05010113          	addi	sp,sp,80
    80004314:	00008067          	ret
    if (options & SET_START) return t->start();
    80004318:	00090513          	mv	a0,s2
    8000431c:	00000097          	auipc	ra,0x0
    80004320:	93c080e7          	jalr	-1732(ra) # 80003c58 <_ZN7_Thread5startEv>
    80004324:	fc5ff06f          	j	800042e8 <_ZN7_Thread6createEPPS_PFvPvES2_mii+0xc4>
    if (!t) return -1; //greska u alokaciji
    80004328:	fff00513          	li	a0,-1
    8000432c:	fbdff06f          	j	800042e8 <_ZN7_Thread6createEPPS_PFvPvES2_mii+0xc4>
    80004330:	00050493          	mv	s1,a0
    thread_t t = new _Thread((void*(*)(void*))startRoutine, arg, stackSize, priority, (options & SET_DAEMON) || running->daemon(), true);
    80004334:	00090513          	mv	a0,s2
    80004338:	fffff097          	auipc	ra,0xfffff
    8000433c:	3f8080e7          	jalr	1016(ra) # 80003730 <_ZN7_ThreaddlEPv>
    80004340:	00048513          	mv	a0,s1
    80004344:	0000d097          	auipc	ra,0xd
    80004348:	8a4080e7          	jalr	-1884(ra) # 80010be8 <_Unwind_Resume>

000000008000434c <_ZN7_Thread6createEPPS_PFvvEmii>:
int _Thread::create(thread_t* handle, void (*startRoutine)(void), size_t stackSize, int priority, int options) {
    8000434c:	ff010113          	addi	sp,sp,-16
    80004350:	00113423          	sd	ra,8(sp)
    80004354:	00813023          	sd	s0,0(sp)
    80004358:	01010413          	addi	s0,sp,16
    8000435c:	00070793          	mv	a5,a4
    return create(handle, (void(*)(void*))startRoutine, nullptr, stackSize, priority, options);
    80004360:	00068713          	mv	a4,a3
    80004364:	00060693          	mv	a3,a2
    80004368:	00000613          	li	a2,0
    8000436c:	00000097          	auipc	ra,0x0
    80004370:	eb8080e7          	jalr	-328(ra) # 80004224 <_ZN7_Thread6createEPPS_PFvPvES2_mii>
}
    80004374:	00813083          	ld	ra,8(sp)
    80004378:	00013403          	ld	s0,0(sp)
    8000437c:	01010113          	addi	sp,sp,16
    80004380:	00008067          	ret

0000000080004384 <_ZN7_Thread6createEPPS_PFvPvES2_ii>:
int _Thread::create(thread_t* handle, void (*startRoutine)(void*), void* arg, int priority, int options) {
    80004384:	fb010113          	addi	sp,sp,-80
    80004388:	04113423          	sd	ra,72(sp)
    8000438c:	04813023          	sd	s0,64(sp)
    80004390:	02913c23          	sd	s1,56(sp)
    80004394:	03213823          	sd	s2,48(sp)
    80004398:	03313423          	sd	s3,40(sp)
    8000439c:	03413023          	sd	s4,32(sp)
    800043a0:	01513c23          	sd	s5,24(sp)
    800043a4:	01613823          	sd	s6,16(sp)
    800043a8:	01713423          	sd	s7,8(sp)
    800043ac:	05010413          	addi	s0,sp,80
    800043b0:	00050993          	mv	s3,a0
    800043b4:	00058b13          	mv	s6,a1
    800043b8:	00060a93          	mv	s5,a2
    800043bc:	00068a13          	mv	s4,a3
    800043c0:	00070493          	mv	s1,a4
    thread_t t = new _Thread((void*(*)(void*))startRoutine, arg, priority, (options & SET_DAEMON) || running->daemon(), true);
    800043c4:	00277793          	andi	a5,a4,2
    800043c8:	02079063          	bnez	a5,800043e8 <_ZN7_Thread6createEPPS_PFvPvES2_ii+0x64>
    800043cc:	0000b517          	auipc	a0,0xb
    800043d0:	69453503          	ld	a0,1684(a0) # 8000fa60 <_ZN7_Thread7runningE>
    800043d4:	00000097          	auipc	ra,0x0
    800043d8:	860080e7          	jalr	-1952(ra) # 80003c34 <_ZN7_Thread6daemonEv>
    800043dc:	04051263          	bnez	a0,80004420 <_ZN7_Thread6createEPPS_PFvPvES2_ii+0x9c>
    800043e0:	00000b93          	li	s7,0
    800043e4:	0080006f          	j	800043ec <_ZN7_Thread6createEPPS_PFvPvES2_ii+0x68>
    800043e8:	00100b93          	li	s7,1
    800043ec:	04800513          	li	a0,72
    800043f0:	fffff097          	auipc	ra,0xfffff
    800043f4:	2dc080e7          	jalr	732(ra) # 800036cc <_ZN7_ThreadnwEm>
    800043f8:	00050913          	mv	s2,a0
    800043fc:	02050663          	beqz	a0,80004428 <_ZN7_Thread6createEPPS_PFvPvES2_ii+0xa4>
    80004400:	00100793          	li	a5,1
    80004404:	000b8713          	mv	a4,s7
    80004408:	000a0693          	mv	a3,s4
    8000440c:	000a8613          	mv	a2,s5
    80004410:	000b0593          	mv	a1,s6
    80004414:	fffff097          	auipc	ra,0xfffff
    80004418:	4d4080e7          	jalr	1236(ra) # 800038e8 <_ZN7_ThreadC1EPFPvS0_ES0_ibb>
    8000441c:	00c0006f          	j	80004428 <_ZN7_Thread6createEPPS_PFvPvES2_ii+0xa4>
    80004420:	00100b93          	li	s7,1
    80004424:	fc9ff06f          	j	800043ec <_ZN7_Thread6createEPPS_PFvPvES2_ii+0x68>
    if (!t || !t->ssptop) return -1; //greska u alokaciji
    80004428:	04090c63          	beqz	s2,80004480 <_ZN7_Thread6createEPPS_PFvPvES2_ii+0xfc>
    8000442c:	01893783          	ld	a5,24(s2)
    80004430:	04078c63          	beqz	a5,80004488 <_ZN7_Thread6createEPPS_PFvPvES2_ii+0x104>
    if (handle) *handle = t;
    80004434:	00098463          	beqz	s3,8000443c <_ZN7_Thread6createEPPS_PFvPvES2_ii+0xb8>
    80004438:	0129b023          	sd	s2,0(s3)
    if (options & SET_START) return t->start();
    8000443c:	0014f513          	andi	a0,s1,1
    80004440:	02051863          	bnez	a0,80004470 <_ZN7_Thread6createEPPS_PFvPvES2_ii+0xec>
}
    80004444:	04813083          	ld	ra,72(sp)
    80004448:	04013403          	ld	s0,64(sp)
    8000444c:	03813483          	ld	s1,56(sp)
    80004450:	03013903          	ld	s2,48(sp)
    80004454:	02813983          	ld	s3,40(sp)
    80004458:	02013a03          	ld	s4,32(sp)
    8000445c:	01813a83          	ld	s5,24(sp)
    80004460:	01013b03          	ld	s6,16(sp)
    80004464:	00813b83          	ld	s7,8(sp)
    80004468:	05010113          	addi	sp,sp,80
    8000446c:	00008067          	ret
    if (options & SET_START) return t->start();
    80004470:	00090513          	mv	a0,s2
    80004474:	fffff097          	auipc	ra,0xfffff
    80004478:	7e4080e7          	jalr	2020(ra) # 80003c58 <_ZN7_Thread5startEv>
    8000447c:	fc9ff06f          	j	80004444 <_ZN7_Thread6createEPPS_PFvPvES2_ii+0xc0>
    if (!t || !t->ssptop) return -1; //greska u alokaciji
    80004480:	fff00513          	li	a0,-1
    80004484:	fc1ff06f          	j	80004444 <_ZN7_Thread6createEPPS_PFvPvES2_ii+0xc0>
    80004488:	fff00513          	li	a0,-1
    8000448c:	fb9ff06f          	j	80004444 <_ZN7_Thread6createEPPS_PFvPvES2_ii+0xc0>
    80004490:	00050493          	mv	s1,a0
    thread_t t = new _Thread((void*(*)(void*))startRoutine, arg, priority, (options & SET_DAEMON) || running->daemon(), true);
    80004494:	00090513          	mv	a0,s2
    80004498:	fffff097          	auipc	ra,0xfffff
    8000449c:	298080e7          	jalr	664(ra) # 80003730 <_ZN7_ThreaddlEPv>
    800044a0:	00048513          	mv	a0,s1
    800044a4:	0000c097          	auipc	ra,0xc
    800044a8:	744080e7          	jalr	1860(ra) # 80010be8 <_Unwind_Resume>

00000000800044ac <_ZN7_Thread6createEPPS_PFvvEii>:
int _Thread::create(thread_t* handle, void (*startRoutine)(void), int priority, int options) {
    800044ac:	ff010113          	addi	sp,sp,-16
    800044b0:	00113423          	sd	ra,8(sp)
    800044b4:	00813023          	sd	s0,0(sp)
    800044b8:	01010413          	addi	s0,sp,16
    800044bc:	00068713          	mv	a4,a3
    return create(handle, (void(*)(void*))startRoutine, nullptr, priority, options);
    800044c0:	00060693          	mv	a3,a2
    800044c4:	00000613          	li	a2,0
    800044c8:	00000097          	auipc	ra,0x0
    800044cc:	ebc080e7          	jalr	-324(ra) # 80004384 <_ZN7_Thread6createEPPS_PFvPvES2_ii>
}
    800044d0:	00813083          	ld	ra,8(sp)
    800044d4:	00013403          	ld	s0,0(sp)
    800044d8:	01010113          	addi	sp,sp,16
    800044dc:	00008067          	ret

00000000800044e0 <_ZN7_Thread10limitReachEv>:
void _Thread::limitReach() {
    800044e0:	ff010113          	addi	sp,sp,-16
    800044e4:	00813423          	sd	s0,8(sp)
    800044e8:	01010413          	addi	s0,sp,16
    flags = flags | 64u;
    800044ec:	02852783          	lw	a5,40(a0)
    800044f0:	0407e793          	ori	a5,a5,64
    800044f4:	02f52423          	sw	a5,40(a0)
}
    800044f8:	00813403          	ld	s0,8(sp)
    800044fc:	01010113          	addi	sp,sp,16
    80004500:	00008067          	ret

0000000080004504 <_ZN7_Thread12limitReachedEv>:
int _Thread::limitReached() {
    80004504:	ff010113          	addi	sp,sp,-16
    80004508:	00813423          	sd	s0,8(sp)
    8000450c:	01010413          	addi	s0,sp,16
    int ret = flags & 64u ? 1 : 0;
    80004510:	02852783          	lw	a5,40(a0)
    80004514:	0067d71b          	srliw	a4,a5,0x6
    flags = flags & ~64u;
    80004518:	fbf7f793          	andi	a5,a5,-65
    8000451c:	02f52423          	sw	a5,40(a0)
    return ret;
}
    80004520:	00177513          	andi	a0,a4,1
    80004524:	00813403          	ld	s0,8(sp)
    80004528:	01010113          	addi	sp,sp,16
    8000452c:	00008067          	ret

0000000080004530 <_ZN7_Thread11interruptedEv>:
        int ret = waitManager->interrupt();
        return check_wait(ret);
    }
    return 0;
}
int _Thread::interrupted() {
    80004530:	ff010113          	addi	sp,sp,-16
    80004534:	00813423          	sd	s0,8(sp)
    80004538:	01010413          	addi	s0,sp,16
    int ret = flags & 128u ? 1 : 0;
    8000453c:	02852783          	lw	a5,40(a0)
    80004540:	0077d71b          	srliw	a4,a5,0x7
    flags &= ~128u;
    80004544:	f7f7f793          	andi	a5,a5,-129
    80004548:	02f52423          	sw	a5,40(a0)
    return ret;
}
    8000454c:	00177513          	andi	a0,a4,1
    80004550:	00813403          	ld	s0,8(sp)
    80004554:	01010113          	addi	sp,sp,16
    80004558:	00008067          	ret

000000008000455c <_ZN7_Thread13isInterruptedEv>:
int _Thread::isInterrupted() {
    8000455c:	ff010113          	addi	sp,sp,-16
    80004560:	00813423          	sd	s0,8(sp)
    80004564:	01010413          	addi	s0,sp,16
    return (flags & 128u ? 1 : 0);
    80004568:	02852503          	lw	a0,40(a0)
    8000456c:	0075551b          	srliw	a0,a0,0x7
}
    80004570:	00157513          	andi	a0,a0,1
    80004574:	00813403          	ld	s0,8(sp)
    80004578:	01010113          	addi	sp,sp,16
    8000457c:	00008067          	ret

0000000080004580 <_ZN7_Thread12safeDispatchEv>:
    }
    if (running->limitReached()) return 1;
    if (pret) *pret = returnValue;
    return 0;
}
void _Thread::safeDispatch() {
    80004580:	ff010113          	addi	sp,sp,-16
    80004584:	00113423          	sd	ra,8(sp)
    80004588:	00813023          	sd	s0,0(sp)
    8000458c:	01010413          	addi	s0,sp,16
    busyWait();
    80004590:	fffff097          	auipc	ra,0xfffff
    80004594:	3f4080e7          	jalr	1012(ra) # 80003984 <_ZN7_Thread8busyWaitEv>
    time = DEFAULT_TIME_SLICE;
    80004598:	00200793          	li	a5,2
    8000459c:	0000b717          	auipc	a4,0xb
    800045a0:	18f73e23          	sd	a5,412(a4) # 8000f738 <_ZN7_Thread4timeE>
    thread_dispatch();
    800045a4:	ffffd097          	auipc	ra,0xffffd
    800045a8:	b34080e7          	jalr	-1228(ra) # 800010d8 <_ZN7_Thread15thread_dispatchEv>
}
    800045ac:	00813083          	ld	ra,8(sp)
    800045b0:	00013403          	ld	s0,0(sp)
    800045b4:	01010113          	addi	sp,sp,16
    800045b8:	00008067          	ret

00000000800045bc <_ZN7_Thread4joinEPPv>:
int _Thread::join(void** pret) {
    800045bc:	fd010113          	addi	sp,sp,-48
    800045c0:	02113423          	sd	ra,40(sp)
    800045c4:	02813023          	sd	s0,32(sp)
    800045c8:	00913c23          	sd	s1,24(sp)
    800045cc:	01213823          	sd	s2,16(sp)
    800045d0:	01313423          	sd	s3,8(sp)
    800045d4:	01413023          	sd	s4,0(sp)
    800045d8:	03010413          	addi	s0,sp,48
    800045dc:	00050493          	mv	s1,a0
    if (running != parent) return -1; //join moze da pozove samo roditeljska nit
    800045e0:	03053783          	ld	a5,48(a0)
    800045e4:	0000b517          	auipc	a0,0xb
    800045e8:	47c53503          	ld	a0,1148(a0) # 8000fa60 <_ZN7_Thread7runningE>
    800045ec:	0ea79263          	bne	a5,a0,800046d0 <_ZN7_Thread4joinEPPv+0x114>
    800045f0:	00058993          	mv	s3,a1
    if (running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    800045f4:	00000097          	auipc	ra,0x0
    800045f8:	f68080e7          	jalr	-152(ra) # 8000455c <_ZN7_Thread13isInterruptedEv>
    800045fc:	00050913          	mv	s2,a0
    80004600:	0c051c63          	bnez	a0,800046d8 <_ZN7_Thread4joinEPPv+0x11c>
    if (!finished()) {
    80004604:	00048513          	mv	a0,s1
    80004608:	fffff097          	auipc	ra,0xfffff
    8000460c:	59c080e7          	jalr	1436(ra) # 80003ba4 <_ZN7_Thread8finishedEv>
    80004610:	02050a63          	beqz	a0,80004644 <_ZN7_Thread4joinEPPv+0x88>
    if (pret) *pret = returnValue;
    80004614:	00098663          	beqz	s3,80004620 <_ZN7_Thread4joinEPPv+0x64>
    80004618:	0384b783          	ld	a5,56(s1)
    8000461c:	00f9b023          	sd	a5,0(s3)
}
    80004620:	00090513          	mv	a0,s2
    80004624:	02813083          	ld	ra,40(sp)
    80004628:	02013403          	ld	s0,32(sp)
    8000462c:	01813483          	ld	s1,24(sp)
    80004630:	01013903          	ld	s2,16(sp)
    80004634:	00813983          	ld	s3,8(sp)
    80004638:	00013a03          	ld	s4,0(sp)
    8000463c:	03010113          	addi	sp,sp,48
    80004640:	00008067          	ret
class _JoinManager : public _WaitManager {
public:
    _JoinManager(thread_t my_thread, thread_t join_thread);
    static kmem_cache_t* cache;
    void*  operator new(size_t size) {
        if (!cache) cache = kmem_cache_create("Join_manager Cache", sizeof(_JoinManager), nullptr, nullptr);
    80004644:	0000d797          	auipc	a5,0xd
    80004648:	a147b783          	ld	a5,-1516(a5) # 80011058 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000464c:	0007b783          	ld	a5,0(a5)
    80004650:	02078c63          	beqz	a5,80004688 <_ZN7_Thread4joinEPPv+0xcc>
        return kmem_cache_alloc(cache);
    80004654:	0000d797          	auipc	a5,0xd
    80004658:	a047b783          	ld	a5,-1532(a5) # 80011058 <_GLOBAL_OFFSET_TABLE_+0x58>
    8000465c:	0007b503          	ld	a0,0(a5)
    80004660:	ffffd097          	auipc	ra,0xffffd
    80004664:	e14080e7          	jalr	-492(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
    80004668:	00050a13          	mv	s4,a0
        _WaitManager* manager = new _JoinManager(_Thread::running, this);
    8000466c:	04050463          	beqz	a0,800046b4 <_ZN7_Thread4joinEPPv+0xf8>
    80004670:	00048613          	mv	a2,s1
    80004674:	0000b597          	auipc	a1,0xb
    80004678:	3ec5b583          	ld	a1,1004(a1) # 8000fa60 <_ZN7_Thread7runningE>
    8000467c:	00003097          	auipc	ra,0x3
    80004680:	4e4080e7          	jalr	1252(ra) # 80007b60 <_ZN12_JoinManagerC1EP7_ThreadS1_>
    80004684:	0300006f          	j	800046b4 <_ZN7_Thread4joinEPPv+0xf8>
        if (!cache) cache = kmem_cache_create("Join_manager Cache", sizeof(_JoinManager), nullptr, nullptr);
    80004688:	00000693          	li	a3,0
    8000468c:	00000613          	li	a2,0
    80004690:	01800593          	li	a1,24
    80004694:	00007517          	auipc	a0,0x7
    80004698:	c8450513          	addi	a0,a0,-892 # 8000b318 <_ZN12kmem_cache_t3MAXE+0x54>
    8000469c:	ffffd097          	auipc	ra,0xffffd
    800046a0:	d88080e7          	jalr	-632(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800046a4:	0000d797          	auipc	a5,0xd
    800046a8:	9b47b783          	ld	a5,-1612(a5) # 80011058 <_GLOBAL_OFFSET_TABLE_+0x58>
    800046ac:	00a7b023          	sd	a0,0(a5)
    800046b0:	fa5ff06f          	j	80004654 <_ZN7_Thread4joinEPPv+0x98>
        if (!manager) return -1;
    800046b4:	020a0663          	beqz	s4,800046e0 <_ZN7_Thread4joinEPPv+0x124>
        parentWait();
    800046b8:	00048513          	mv	a0,s1
    800046bc:	fffff097          	auipc	ra,0xfffff
    800046c0:	50c080e7          	jalr	1292(ra) # 80003bc8 <_ZN7_Thread10parentWaitEv>
        safeDispatch();
    800046c4:	00000097          	auipc	ra,0x0
    800046c8:	ebc080e7          	jalr	-324(ra) # 80004580 <_ZN7_Thread12safeDispatchEv>
    800046cc:	f49ff06f          	j	80004614 <_ZN7_Thread4joinEPPv+0x58>
    if (running != parent) return -1; //join moze da pozove samo roditeljska nit
    800046d0:	fff00913          	li	s2,-1
    800046d4:	f4dff06f          	j	80004620 <_ZN7_Thread4joinEPPv+0x64>
    if (running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    800046d8:	00000913          	li	s2,0
    800046dc:	f45ff06f          	j	80004620 <_ZN7_Thread4joinEPPv+0x64>
        if (!manager) return -1;
    800046e0:	fff00913          	li	s2,-1
    800046e4:	f3dff06f          	j	80004620 <_ZN7_Thread4joinEPPv+0x64>
    800046e8:	00050493          	mv	s1,a0
    }
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    800046ec:	000a0593          	mv	a1,s4
    800046f0:	0000d797          	auipc	a5,0xd
    800046f4:	9687b783          	ld	a5,-1688(a5) # 80011058 <_GLOBAL_OFFSET_TABLE_+0x58>
    800046f8:	0007b503          	ld	a0,0(a5)
    800046fc:	ffffd097          	auipc	ra,0xffffd
    80004700:	da0080e7          	jalr	-608(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
    80004704:	00048513          	mv	a0,s1
    80004708:	0000c097          	auipc	ra,0xc
    8000470c:	4e0080e7          	jalr	1248(ra) # 80010be8 <_Unwind_Resume>

0000000080004710 <_ZN7_Thread9normalizeEi>:

int _Thread::normalize(int priority) {
    80004710:	ff010113          	addi	sp,sp,-16
    80004714:	00813423          	sd	s0,8(sp)
    80004718:	01010413          	addi	s0,sp,16
    if (priority > 100) priority = 100;
    8000471c:	06400793          	li	a5,100
    80004720:	00a7cc63          	blt	a5,a0,80004738 <_ZN7_Thread9normalizeEi+0x28>
    else if (priority < -100) priority = -100;
    80004724:	f9c00793          	li	a5,-100
    80004728:	00f54c63          	blt	a0,a5,80004740 <_ZN7_Thread9normalizeEi+0x30>
    return priority;
}
    8000472c:	00813403          	ld	s0,8(sp)
    80004730:	01010113          	addi	sp,sp,16
    80004734:	00008067          	ret
    if (priority > 100) priority = 100;
    80004738:	06400513          	li	a0,100
    8000473c:	ff1ff06f          	j	8000472c <_ZN7_Thread9normalizeEi+0x1c>
    else if (priority < -100) priority = -100;
    80004740:	f9c00513          	li	a0,-100
    80004744:	fe9ff06f          	j	8000472c <_ZN7_Thread9normalizeEi+0x1c>

0000000080004748 <_ZN7_Thread10setManagerEP12_WaitManager>:

void _Thread::setManager(_WaitManager* manager) {
    80004748:	ff010113          	addi	sp,sp,-16
    8000474c:	00813423          	sd	s0,8(sp)
    80004750:	01010413          	addi	s0,sp,16
    waitManager = manager;
    80004754:	04b53023          	sd	a1,64(a0)
}
    80004758:	00813403          	ld	s0,8(sp)
    8000475c:	01010113          	addi	sp,sp,16
    80004760:	00008067          	ret

0000000080004764 <_ZN7_Thread9timeSleepEm>:
int _Thread::timeSleep(time_t time) {
    80004764:	fd010113          	addi	sp,sp,-48
    80004768:	02113423          	sd	ra,40(sp)
    8000476c:	02813023          	sd	s0,32(sp)
    80004770:	00913c23          	sd	s1,24(sp)
    80004774:	01213823          	sd	s2,16(sp)
    80004778:	01313423          	sd	s3,8(sp)
    8000477c:	03010413          	addi	s0,sp,48
    80004780:	00050913          	mv	s2,a0
    if (_Thread::running->isInterrupted()) return 2; //prekinuta nit se automatski izbacuje
    80004784:	0000b997          	auipc	s3,0xb
    80004788:	2dc9b983          	ld	s3,732(s3) # 8000fa60 <_ZN7_Thread7runningE>
    8000478c:	00098513          	mv	a0,s3
    80004790:	00000097          	auipc	ra,0x0
    80004794:	dcc080e7          	jalr	-564(ra) # 8000455c <_ZN7_Thread13isInterruptedEv>
    80004798:	0e051463          	bnez	a0,80004880 <_ZN7_Thread9timeSleepEm+0x11c>
    8000479c:	00050493          	mv	s1,a0
    if (!time) {
    800047a0:	02091e63          	bnez	s2,800047dc <_ZN7_Thread9timeSleepEm+0x78>
        ret = _Scheduler::put(running);
    800047a4:	00098513          	mv	a0,s3
    800047a8:	ffffd097          	auipc	ra,0xffffd
    800047ac:	ec4080e7          	jalr	-316(ra) # 8000166c <_ZN10_Scheduler3putEP7_Thread>
        if (ret) return ret;
    800047b0:	0c051c63          	bnez	a0,80004888 <_ZN7_Thread9timeSleepEm+0x124>
    safeDispatch();
    800047b4:	00000097          	auipc	ra,0x0
    800047b8:	dcc080e7          	jalr	-564(ra) # 80004580 <_ZN7_Thread12safeDispatchEv>
}
    800047bc:	00048513          	mv	a0,s1
    800047c0:	02813083          	ld	ra,40(sp)
    800047c4:	02013403          	ld	s0,32(sp)
    800047c8:	01813483          	ld	s1,24(sp)
    800047cc:	01013903          	ld	s2,16(sp)
    800047d0:	00813983          	ld	s3,8(sp)
    800047d4:	03010113          	addi	sp,sp,48
    800047d8:	00008067          	ret
        ret = _Sleep::put(running, time);
    800047dc:	00090593          	mv	a1,s2
    800047e0:	00098513          	mv	a0,s3
    800047e4:	ffffd097          	auipc	ra,0xffffd
    800047e8:	3e0080e7          	jalr	992(ra) # 80001bc4 <_ZN6_Sleep3putEP7_Threadm>
        if (ret) return ret;
    800047ec:	00050663          	beqz	a0,800047f8 <_ZN7_Thread9timeSleepEm+0x94>
    800047f0:	00050493          	mv	s1,a0
    800047f4:	fc9ff06f          	j	800047bc <_ZN7_Thread9timeSleepEm+0x58>
        if (!cache) cache = kmem_cache_create("Sleep_manager Cache", sizeof(_SleepManager), nullptr, nullptr);
    800047f8:	0000d797          	auipc	a5,0xd
    800047fc:	8807b783          	ld	a5,-1920(a5) # 80011078 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004800:	0007b783          	ld	a5,0(a5)
    80004804:	02078a63          	beqz	a5,80004838 <_ZN7_Thread9timeSleepEm+0xd4>
        return kmem_cache_alloc(cache);
    80004808:	0000d797          	auipc	a5,0xd
    8000480c:	8707b783          	ld	a5,-1936(a5) # 80011078 <_GLOBAL_OFFSET_TABLE_+0x78>
    80004810:	0007b503          	ld	a0,0(a5)
    80004814:	ffffd097          	auipc	ra,0xffffd
    80004818:	c60080e7          	jalr	-928(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
    8000481c:	00050913          	mv	s2,a0
        _WaitManager* manager = new _SleepManager(_Thread::running);
    80004820:	04050263          	beqz	a0,80004864 <_ZN7_Thread9timeSleepEm+0x100>
    80004824:	0000b597          	auipc	a1,0xb
    80004828:	23c5b583          	ld	a1,572(a1) # 8000fa60 <_ZN7_Thread7runningE>
    8000482c:	00003097          	auipc	ra,0x3
    80004830:	2f4080e7          	jalr	756(ra) # 80007b20 <_ZN13_SleepManagerC1EP7_Thread>
    80004834:	0300006f          	j	80004864 <_ZN7_Thread9timeSleepEm+0x100>
        if (!cache) cache = kmem_cache_create("Sleep_manager Cache", sizeof(_SleepManager), nullptr, nullptr);
    80004838:	00000693          	li	a3,0
    8000483c:	00000613          	li	a2,0
    80004840:	01000593          	li	a1,16
    80004844:	00007517          	auipc	a0,0x7
    80004848:	aec50513          	addi	a0,a0,-1300 # 8000b330 <_ZN12kmem_cache_t3MAXE+0x6c>
    8000484c:	ffffd097          	auipc	ra,0xffffd
    80004850:	bd8080e7          	jalr	-1064(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80004854:	0000d797          	auipc	a5,0xd
    80004858:	8247b783          	ld	a5,-2012(a5) # 80011078 <_GLOBAL_OFFSET_TABLE_+0x78>
    8000485c:	00a7b023          	sd	a0,0(a5)
    80004860:	fa9ff06f          	j	80004808 <_ZN7_Thread9timeSleepEm+0xa4>
        if (!manager) return -1;
    80004864:	02090663          	beqz	s2,80004890 <_ZN7_Thread9timeSleepEm+0x12c>
        _Thread::running->setManager(manager);
    80004868:	00090593          	mv	a1,s2
    8000486c:	0000b517          	auipc	a0,0xb
    80004870:	1f453503          	ld	a0,500(a0) # 8000fa60 <_ZN7_Thread7runningE>
    80004874:	00000097          	auipc	ra,0x0
    80004878:	ed4080e7          	jalr	-300(ra) # 80004748 <_ZN7_Thread10setManagerEP12_WaitManager>
    8000487c:	f39ff06f          	j	800047b4 <_ZN7_Thread9timeSleepEm+0x50>
    if (_Thread::running->isInterrupted()) return 2; //prekinuta nit se automatski izbacuje
    80004880:	00200493          	li	s1,2
    80004884:	f39ff06f          	j	800047bc <_ZN7_Thread9timeSleepEm+0x58>
        if (ret) return ret;
    80004888:	00050493          	mv	s1,a0
    8000488c:	f31ff06f          	j	800047bc <_ZN7_Thread9timeSleepEm+0x58>
        if (!manager) return -1;
    80004890:	fff00493          	li	s1,-1
    80004894:	f29ff06f          	j	800047bc <_ZN7_Thread9timeSleepEm+0x58>
    80004898:	00050493          	mv	s1,a0
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    8000489c:	00090593          	mv	a1,s2
    800048a0:	0000c797          	auipc	a5,0xc
    800048a4:	7d87b783          	ld	a5,2008(a5) # 80011078 <_GLOBAL_OFFSET_TABLE_+0x78>
    800048a8:	0007b503          	ld	a0,0(a5)
    800048ac:	ffffd097          	auipc	ra,0xffffd
    800048b0:	bf0080e7          	jalr	-1040(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
    800048b4:	00048513          	mv	a0,s1
    800048b8:	0000c097          	auipc	ra,0xc
    800048bc:	330080e7          	jalr	816(ra) # 80010be8 <_Unwind_Resume>

00000000800048c0 <_ZN7_Thread13removeManagerEv>:
int _Thread::check_wait(int ret) {
    if (!ret) return 0;
    removeManager();
    return _Scheduler::put(this);
}
void _Thread::removeManager() {
    800048c0:	fe010113          	addi	sp,sp,-32
    800048c4:	00113c23          	sd	ra,24(sp)
    800048c8:	00813823          	sd	s0,16(sp)
    800048cc:	00913423          	sd	s1,8(sp)
    800048d0:	02010413          	addi	s0,sp,32
    800048d4:	00050493          	mv	s1,a0
    if (waitManager) {
    800048d8:	04053503          	ld	a0,64(a0)
    800048dc:	00050a63          	beqz	a0,800048f0 <_ZN7_Thread13removeManagerEv+0x30>
        delete waitManager;
    800048e0:	00053783          	ld	a5,0(a0)
    800048e4:	0287b783          	ld	a5,40(a5)
    800048e8:	000780e7          	jalr	a5
        waitManager = nullptr;
    800048ec:	0404b023          	sd	zero,64(s1)
    }
    800048f0:	01813083          	ld	ra,24(sp)
    800048f4:	01013403          	ld	s0,16(sp)
    800048f8:	00813483          	ld	s1,8(sp)
    800048fc:	02010113          	addi	sp,sp,32
    80004900:	00008067          	ret

0000000080004904 <_ZN7_Thread9joinLimitEPPvm>:
int _Thread::joinLimit(void** pret, time_t limit) {
    80004904:	fd010113          	addi	sp,sp,-48
    80004908:	02113423          	sd	ra,40(sp)
    8000490c:	02813023          	sd	s0,32(sp)
    80004910:	00913c23          	sd	s1,24(sp)
    80004914:	01213823          	sd	s2,16(sp)
    80004918:	01313423          	sd	s3,8(sp)
    8000491c:	01413023          	sd	s4,0(sp)
    80004920:	03010413          	addi	s0,sp,48
    80004924:	00050493          	mv	s1,a0
    if (running != parent) return -1;
    80004928:	03053783          	ld	a5,48(a0)
    8000492c:	0000b517          	auipc	a0,0xb
    80004930:	13453503          	ld	a0,308(a0) # 8000fa60 <_ZN7_Thread7runningE>
    80004934:	10a79a63          	bne	a5,a0,80004a48 <_ZN7_Thread9joinLimitEPPvm+0x144>
    80004938:	00058993          	mv	s3,a1
    8000493c:	00060913          	mv	s2,a2
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    80004940:	00000097          	auipc	ra,0x0
    80004944:	c1c080e7          	jalr	-996(ra) # 8000455c <_ZN7_Thread13isInterruptedEv>
    80004948:	10051463          	bnez	a0,80004a50 <_ZN7_Thread9joinLimitEPPvm+0x14c>
    if (!finished()) {
    8000494c:	00048513          	mv	a0,s1
    80004950:	fffff097          	auipc	ra,0xfffff
    80004954:	254080e7          	jalr	596(ra) # 80003ba4 <_ZN7_Thread8finishedEv>
    80004958:	0a051a63          	bnez	a0,80004a0c <_ZN7_Thread9joinLimitEPPvm+0x108>
        if (!limit) return 1;
    8000495c:	00091663          	bnez	s2,80004968 <_ZN7_Thread9joinLimitEPPvm+0x64>
    80004960:	00100913          	li	s2,1
    80004964:	0f00006f          	j	80004a54 <_ZN7_Thread9joinLimitEPPvm+0x150>
class _JoinSleepManager : public _WaitManager {
public:
    _JoinSleepManager(thread_t my_thread, thread_t join_thread);
    static kmem_cache_t* cache;
    void*  operator new(size_t size) {
        if (!cache) cache = kmem_cache_create("JoinSleep_manager Cache", sizeof(_JoinSleepManager), nullptr, nullptr);
    80004968:	0000c797          	auipc	a5,0xc
    8000496c:	6e07b783          	ld	a5,1760(a5) # 80011048 <_GLOBAL_OFFSET_TABLE_+0x48>
    80004970:	0007b783          	ld	a5,0(a5)
    80004974:	02078c63          	beqz	a5,800049ac <_ZN7_Thread9joinLimitEPPvm+0xa8>
        return kmem_cache_alloc(cache);
    80004978:	0000c797          	auipc	a5,0xc
    8000497c:	6d07b783          	ld	a5,1744(a5) # 80011048 <_GLOBAL_OFFSET_TABLE_+0x48>
    80004980:	0007b503          	ld	a0,0(a5)
    80004984:	ffffd097          	auipc	ra,0xffffd
    80004988:	af0080e7          	jalr	-1296(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
    8000498c:	00050a13          	mv	s4,a0
        _WaitManager* manager = new _JoinSleepManager(_Thread::running, this);
    80004990:	04050463          	beqz	a0,800049d8 <_ZN7_Thread9joinLimitEPPvm+0xd4>
    80004994:	00048613          	mv	a2,s1
    80004998:	0000b597          	auipc	a1,0xb
    8000499c:	0c85b583          	ld	a1,200(a1) # 8000fa60 <_ZN7_Thread7runningE>
    800049a0:	00003097          	auipc	ra,0x3
    800049a4:	320080e7          	jalr	800(ra) # 80007cc0 <_ZN17_JoinSleepManagerC1EP7_ThreadS1_>
    800049a8:	0300006f          	j	800049d8 <_ZN7_Thread9joinLimitEPPvm+0xd4>
        if (!cache) cache = kmem_cache_create("JoinSleep_manager Cache", sizeof(_JoinSleepManager), nullptr, nullptr);
    800049ac:	00000693          	li	a3,0
    800049b0:	00000613          	li	a2,0
    800049b4:	01800593          	li	a1,24
    800049b8:	00007517          	auipc	a0,0x7
    800049bc:	99050513          	addi	a0,a0,-1648 # 8000b348 <_ZN12kmem_cache_t3MAXE+0x84>
    800049c0:	ffffd097          	auipc	ra,0xffffd
    800049c4:	a64080e7          	jalr	-1436(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800049c8:	0000c797          	auipc	a5,0xc
    800049cc:	6807b783          	ld	a5,1664(a5) # 80011048 <_GLOBAL_OFFSET_TABLE_+0x48>
    800049d0:	00a7b023          	sd	a0,0(a5)
    800049d4:	fa5ff06f          	j	80004978 <_ZN7_Thread9joinLimitEPPvm+0x74>
        if (!manager) return -1;
    800049d8:	0a0a0063          	beqz	s4,80004a78 <_ZN7_Thread9joinLimitEPPvm+0x174>
        int ret = _Sleep::put(running, limit);
    800049dc:	00090593          	mv	a1,s2
    800049e0:	0000b517          	auipc	a0,0xb
    800049e4:	08053503          	ld	a0,128(a0) # 8000fa60 <_ZN7_Thread7runningE>
    800049e8:	ffffd097          	auipc	ra,0xffffd
    800049ec:	1dc080e7          	jalr	476(ra) # 80001bc4 <_ZN6_Sleep3putEP7_Threadm>
    800049f0:	00050913          	mv	s2,a0
        if (ret) { running->removeManager(); return ret;}
    800049f4:	04051063          	bnez	a0,80004a34 <_ZN7_Thread9joinLimitEPPvm+0x130>
        parentWait();
    800049f8:	00048513          	mv	a0,s1
    800049fc:	fffff097          	auipc	ra,0xfffff
    80004a00:	1cc080e7          	jalr	460(ra) # 80003bc8 <_ZN7_Thread10parentWaitEv>
        safeDispatch();
    80004a04:	00000097          	auipc	ra,0x0
    80004a08:	b7c080e7          	jalr	-1156(ra) # 80004580 <_ZN7_Thread12safeDispatchEv>
    if (running->limitReached()) return 1;
    80004a0c:	0000b517          	auipc	a0,0xb
    80004a10:	05453503          	ld	a0,84(a0) # 8000fa60 <_ZN7_Thread7runningE>
    80004a14:	00000097          	auipc	ra,0x0
    80004a18:	af0080e7          	jalr	-1296(ra) # 80004504 <_ZN7_Thread12limitReachedEv>
    80004a1c:	00050913          	mv	s2,a0
    80004a20:	06051063          	bnez	a0,80004a80 <_ZN7_Thread9joinLimitEPPvm+0x17c>
    if (pret) *pret = returnValue;
    80004a24:	02098863          	beqz	s3,80004a54 <_ZN7_Thread9joinLimitEPPvm+0x150>
    80004a28:	0384b783          	ld	a5,56(s1)
    80004a2c:	00f9b023          	sd	a5,0(s3)
    80004a30:	0240006f          	j	80004a54 <_ZN7_Thread9joinLimitEPPvm+0x150>
        if (ret) { running->removeManager(); return ret;}
    80004a34:	0000b517          	auipc	a0,0xb
    80004a38:	02c53503          	ld	a0,44(a0) # 8000fa60 <_ZN7_Thread7runningE>
    80004a3c:	00000097          	auipc	ra,0x0
    80004a40:	e84080e7          	jalr	-380(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    80004a44:	0100006f          	j	80004a54 <_ZN7_Thread9joinLimitEPPvm+0x150>
    if (running != parent) return -1;
    80004a48:	fff00913          	li	s2,-1
    80004a4c:	0080006f          	j	80004a54 <_ZN7_Thread9joinLimitEPPvm+0x150>
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    80004a50:	00000913          	li	s2,0
}
    80004a54:	00090513          	mv	a0,s2
    80004a58:	02813083          	ld	ra,40(sp)
    80004a5c:	02013403          	ld	s0,32(sp)
    80004a60:	01813483          	ld	s1,24(sp)
    80004a64:	01013903          	ld	s2,16(sp)
    80004a68:	00813983          	ld	s3,8(sp)
    80004a6c:	00013a03          	ld	s4,0(sp)
    80004a70:	03010113          	addi	sp,sp,48
    80004a74:	00008067          	ret
        if (!manager) return -1;
    80004a78:	fff00913          	li	s2,-1
    80004a7c:	fd9ff06f          	j	80004a54 <_ZN7_Thread9joinLimitEPPvm+0x150>
    if (running->limitReached()) return 1;
    80004a80:	00100913          	li	s2,1
    80004a84:	fd1ff06f          	j	80004a54 <_ZN7_Thread9joinLimitEPPvm+0x150>
    80004a88:	00050493          	mv	s1,a0
    }
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    80004a8c:	000a0593          	mv	a1,s4
    80004a90:	0000c797          	auipc	a5,0xc
    80004a94:	5b87b783          	ld	a5,1464(a5) # 80011048 <_GLOBAL_OFFSET_TABLE_+0x48>
    80004a98:	0007b503          	ld	a0,0(a5)
    80004a9c:	ffffd097          	auipc	ra,0xffffd
    80004aa0:	a00080e7          	jalr	-1536(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
    80004aa4:	00048513          	mv	a0,s1
    80004aa8:	0000c097          	auipc	ra,0xc
    80004aac:	140080e7          	jalr	320(ra) # 80010be8 <_Unwind_Resume>

0000000080004ab0 <_ZN7_Thread10check_waitEi>:
int _Thread::check_wait(int ret) {
    80004ab0:	fe010113          	addi	sp,sp,-32
    80004ab4:	00113c23          	sd	ra,24(sp)
    80004ab8:	00813823          	sd	s0,16(sp)
    80004abc:	00913423          	sd	s1,8(sp)
    80004ac0:	02010413          	addi	s0,sp,32
    80004ac4:	00050493          	mv	s1,a0
    80004ac8:	00058513          	mv	a0,a1
    if (!ret) return 0;
    80004acc:	00059c63          	bnez	a1,80004ae4 <_ZN7_Thread10check_waitEi+0x34>
}
    80004ad0:	01813083          	ld	ra,24(sp)
    80004ad4:	01013403          	ld	s0,16(sp)
    80004ad8:	00813483          	ld	s1,8(sp)
    80004adc:	02010113          	addi	sp,sp,32
    80004ae0:	00008067          	ret
    removeManager();
    80004ae4:	00048513          	mv	a0,s1
    80004ae8:	00000097          	auipc	ra,0x0
    80004aec:	dd8080e7          	jalr	-552(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    return _Scheduler::put(this);
    80004af0:	00048513          	mv	a0,s1
    80004af4:	ffffd097          	auipc	ra,0xffffd
    80004af8:	b78080e7          	jalr	-1160(ra) # 8000166c <_ZN10_Scheduler3putEP7_Thread>
    80004afc:	fd5ff06f          	j	80004ad0 <_ZN7_Thread10check_waitEi+0x20>

0000000080004b00 <_ZN7_Thread9interruptEv>:
int _Thread::interrupt() {
    80004b00:	fe010113          	addi	sp,sp,-32
    80004b04:	00113c23          	sd	ra,24(sp)
    80004b08:	00813823          	sd	s0,16(sp)
    80004b0c:	00913423          	sd	s1,8(sp)
    80004b10:	02010413          	addi	s0,sp,32
    80004b14:	00050493          	mv	s1,a0
    if (finished()) return 0;
    80004b18:	fffff097          	auipc	ra,0xfffff
    80004b1c:	08c080e7          	jalr	140(ra) # 80003ba4 <_ZN7_Thread8finishedEv>
    80004b20:	04051663          	bnez	a0,80004b6c <_ZN7_Thread9interruptEv+0x6c>
    flags |= 128u;
    80004b24:	0284a783          	lw	a5,40(s1)
    80004b28:	0807e793          	ori	a5,a5,128
    80004b2c:	02f4a423          	sw	a5,40(s1)
    if (waitManager) {
    80004b30:	0404b783          	ld	a5,64(s1)
    80004b34:	02078263          	beqz	a5,80004b58 <_ZN7_Thread9interruptEv+0x58>
        int ret = waitManager->interrupt();
    80004b38:	0007b703          	ld	a4,0(a5)
    80004b3c:	01873703          	ld	a4,24(a4)
    80004b40:	00078513          	mv	a0,a5
    80004b44:	000700e7          	jalr	a4
    80004b48:	00050593          	mv	a1,a0
        return check_wait(ret);
    80004b4c:	00048513          	mv	a0,s1
    80004b50:	00000097          	auipc	ra,0x0
    80004b54:	f60080e7          	jalr	-160(ra) # 80004ab0 <_ZN7_Thread10check_waitEi>
}
    80004b58:	01813083          	ld	ra,24(sp)
    80004b5c:	01013403          	ld	s0,16(sp)
    80004b60:	00813483          	ld	s1,8(sp)
    80004b64:	02010113          	addi	sp,sp,32
    80004b68:	00008067          	ret
    if (finished()) return 0;
    80004b6c:	00000513          	li	a0,0
    80004b70:	fe9ff06f          	j	80004b58 <_ZN7_Thread9interruptEv+0x58>

0000000080004b74 <_ZN7_Thread8sem_passEP4_Sem>:
int _Thread::sem_pass(sem_t s) {
    80004b74:	fe010113          	addi	sp,sp,-32
    80004b78:	00113c23          	sd	ra,24(sp)
    80004b7c:	00813823          	sd	s0,16(sp)
    80004b80:	00913423          	sd	s1,8(sp)
    80004b84:	02010413          	addi	s0,sp,32
    80004b88:	00050493          	mv	s1,a0
    int ret = waitManager->sem_pass(s);
    80004b8c:	04053503          	ld	a0,64(a0)
    80004b90:	00053783          	ld	a5,0(a0)
    80004b94:	0007b783          	ld	a5,0(a5)
    80004b98:	000780e7          	jalr	a5
    80004b9c:	00050593          	mv	a1,a0
    return check_wait(ret);
    80004ba0:	00048513          	mv	a0,s1
    80004ba4:	00000097          	auipc	ra,0x0
    80004ba8:	f0c080e7          	jalr	-244(ra) # 80004ab0 <_ZN7_Thread10check_waitEi>
}
    80004bac:	01813083          	ld	ra,24(sp)
    80004bb0:	01013403          	ld	s0,16(sp)
    80004bb4:	00813483          	ld	s1,8(sp)
    80004bb8:	02010113          	addi	sp,sp,32
    80004bbc:	00008067          	ret

0000000080004bc0 <_ZN7_Thread9sleepPassEv>:
int _Thread::sleepPass() {
    80004bc0:	fe010113          	addi	sp,sp,-32
    80004bc4:	00113c23          	sd	ra,24(sp)
    80004bc8:	00813823          	sd	s0,16(sp)
    80004bcc:	00913423          	sd	s1,8(sp)
    80004bd0:	02010413          	addi	s0,sp,32
    80004bd4:	00050493          	mv	s1,a0
    int ret = waitManager->sleep_pass();
    80004bd8:	04053503          	ld	a0,64(a0)
    80004bdc:	00053783          	ld	a5,0(a0)
    80004be0:	0087b783          	ld	a5,8(a5)
    80004be4:	000780e7          	jalr	a5
    80004be8:	00050593          	mv	a1,a0
    return check_wait(ret);
    80004bec:	00048513          	mv	a0,s1
    80004bf0:	00000097          	auipc	ra,0x0
    80004bf4:	ec0080e7          	jalr	-320(ra) # 80004ab0 <_ZN7_Thread10check_waitEi>
}
    80004bf8:	01813083          	ld	ra,24(sp)
    80004bfc:	01013403          	ld	s0,16(sp)
    80004c00:	00813483          	ld	s1,8(sp)
    80004c04:	02010113          	addi	sp,sp,32
    80004c08:	00008067          	ret

0000000080004c0c <_ZN7_Thread8joinPassEv>:
int _Thread::joinPass() {
    80004c0c:	fe010113          	addi	sp,sp,-32
    80004c10:	00113c23          	sd	ra,24(sp)
    80004c14:	00813823          	sd	s0,16(sp)
    80004c18:	00913423          	sd	s1,8(sp)
    80004c1c:	02010413          	addi	s0,sp,32
    80004c20:	00050493          	mv	s1,a0
    int ret = waitManager->join_pass();
    80004c24:	04053503          	ld	a0,64(a0)
    80004c28:	00053783          	ld	a5,0(a0)
    80004c2c:	0107b783          	ld	a5,16(a5)
    80004c30:	000780e7          	jalr	a5
    80004c34:	00050593          	mv	a1,a0
    return check_wait(ret);
    80004c38:	00048513          	mv	a0,s1
    80004c3c:	00000097          	auipc	ra,0x0
    80004c40:	e74080e7          	jalr	-396(ra) # 80004ab0 <_ZN7_Thread10check_waitEi>
}
    80004c44:	01813083          	ld	ra,24(sp)
    80004c48:	01013403          	ld	s0,16(sp)
    80004c4c:	00813483          	ld	s1,8(sp)
    80004c50:	02010113          	addi	sp,sp,32
    80004c54:	00008067          	ret

0000000080004c58 <_ZN7_Thread4exitEPv>:
int _Thread::exit(void* ret) {
    80004c58:	fe010113          	addi	sp,sp,-32
    80004c5c:	00113c23          	sd	ra,24(sp)
    80004c60:	00813823          	sd	s0,16(sp)
    80004c64:	00913423          	sd	s1,8(sp)
    80004c68:	01213023          	sd	s2,0(sp)
    80004c6c:	02010413          	addi	s0,sp,32
    80004c70:	00050913          	mv	s2,a0
    _SBIT::SIEdisable();
    80004c74:	ffffc097          	auipc	ra,0xffffc
    80004c78:	394080e7          	jalr	916(ra) # 80001008 <_ZN5_SBIT10SIEdisableEv>
    total--; if (!running->daemon()) user--;
    80004c7c:	0000b797          	auipc	a5,0xb
    80004c80:	ddc78793          	addi	a5,a5,-548 # 8000fa58 <_ZN7_Thread5cacheE>
    80004c84:	0207a703          	lw	a4,32(a5)
    80004c88:	fff7071b          	addiw	a4,a4,-1
    80004c8c:	02e7a023          	sw	a4,32(a5)
    80004c90:	0087b483          	ld	s1,8(a5)
    80004c94:	00048513          	mv	a0,s1
    80004c98:	fffff097          	auipc	ra,0xfffff
    80004c9c:	f9c080e7          	jalr	-100(ra) # 80003c34 <_ZN7_Thread6daemonEv>
    80004ca0:	00051c63          	bnez	a0,80004cb8 <_ZN7_Thread4exitEPv+0x60>
    80004ca4:	0000b717          	auipc	a4,0xb
    80004ca8:	db470713          	addi	a4,a4,-588 # 8000fa58 <_ZN7_Thread5cacheE>
    80004cac:	02472783          	lw	a5,36(a4)
    80004cb0:	fff7879b          	addiw	a5,a5,-1
    80004cb4:	02f72223          	sw	a5,36(a4)
    if (running->returnValue) running->returnValue = ret;
    80004cb8:	0384b783          	ld	a5,56(s1)
    80004cbc:	00078463          	beqz	a5,80004cc4 <_ZN7_Thread4exitEPv+0x6c>
    80004cc0:	0324bc23          	sd	s2,56(s1)
    running->finish();
    80004cc4:	00048513          	mv	a0,s1
    80004cc8:	fffff097          	auipc	ra,0xfffff
    80004ccc:	eb8080e7          	jalr	-328(ra) # 80003b80 <_ZN7_Thread6finishEv>
    if (running->parentWaiting()) running->parent->joinPass();//_Scheduler::put(running->parent);
    80004cd0:	0000b497          	auipc	s1,0xb
    80004cd4:	d904b483          	ld	s1,-624(s1) # 8000fa60 <_ZN7_Thread7runningE>
    80004cd8:	00048513          	mv	a0,s1
    80004cdc:	fffff097          	auipc	ra,0xfffff
    80004ce0:	f10080e7          	jalr	-240(ra) # 80003bec <_ZN7_Thread13parentWaitingEv>
    80004ce4:	08051463          	bnez	a0,80004d6c <_ZN7_Thread4exitEPv+0x114>
    if (user == 1) _Console::go->signal(); //signalizira se putter niti da su sve korisnicke niti zavrsile
    80004ce8:	0000b717          	auipc	a4,0xb
    80004cec:	d9472703          	lw	a4,-620(a4) # 8000fa7c <_ZN7_Thread4userE>
    80004cf0:	00100793          	li	a5,1
    80004cf4:	08f70463          	beq	a4,a5,80004d7c <_ZN7_Thread4exitEPv+0x124>
    if (user > 0) busyWait();
    80004cf8:	0000b797          	auipc	a5,0xb
    80004cfc:	d847a783          	lw	a5,-636(a5) # 8000fa7c <_ZN7_Thread4userE>
    80004d00:	08f04a63          	bgtz	a5,80004d94 <_ZN7_Thread4exitEPv+0x13c>
    _Mem::free(running->sptop); _Mem::free(running->ssptop);
    80004d04:	0000b497          	auipc	s1,0xb
    80004d08:	d5448493          	addi	s1,s1,-684 # 8000fa58 <_ZN7_Thread5cacheE>
    80004d0c:	0084b783          	ld	a5,8(s1)
    80004d10:	0107b503          	ld	a0,16(a5)
    80004d14:	00000097          	auipc	ra,0x0
    80004d18:	1bc080e7          	jalr	444(ra) # 80004ed0 <_ZN4_Mem4freeEPv>
    80004d1c:	0084b783          	ld	a5,8(s1)
    80004d20:	0187b503          	ld	a0,24(a5)
    80004d24:	00000097          	auipc	ra,0x0
    80004d28:	1ac080e7          	jalr	428(ra) # 80004ed0 <_ZN4_Mem4freeEPv>
    if (!user) {
    80004d2c:	0244a783          	lw	a5,36(s1)
    80004d30:	06079863          	bnez	a5,80004da0 <_ZN7_Thread4exitEPv+0x148>
        running = main;
    80004d34:	0104b703          	ld	a4,16(s1)
    80004d38:	00e4b423          	sd	a4,8(s1)
    __asm__ volatile("mv ra, %0" : : "r"(running->pc));
    80004d3c:	0000b797          	auipc	a5,0xb
    80004d40:	d247b783          	ld	a5,-732(a5) # 8000fa60 <_ZN7_Thread7runningE>
    80004d44:	0207b783          	ld	a5,32(a5)
    80004d48:	00078093          	mv	ra,a5
    __asm__ volatile("ret");
    80004d4c:	00008067          	ret
}
    80004d50:	00000513          	li	a0,0
    80004d54:	01813083          	ld	ra,24(sp)
    80004d58:	01013403          	ld	s0,16(sp)
    80004d5c:	00813483          	ld	s1,8(sp)
    80004d60:	00013903          	ld	s2,0(sp)
    80004d64:	02010113          	addi	sp,sp,32
    80004d68:	00008067          	ret
    if (running->parentWaiting()) running->parent->joinPass();//_Scheduler::put(running->parent);
    80004d6c:	0304b503          	ld	a0,48(s1)
    80004d70:	00000097          	auipc	ra,0x0
    80004d74:	e9c080e7          	jalr	-356(ra) # 80004c0c <_ZN7_Thread8joinPassEv>
    80004d78:	f71ff06f          	j	80004ce8 <_ZN7_Thread4exitEPv+0x90>
    if (user == 1) _Console::go->signal(); //signalizira se putter niti da su sve korisnicke niti zavrsile
    80004d7c:	0000c797          	auipc	a5,0xc
    80004d80:	2b47b783          	ld	a5,692(a5) # 80011030 <_GLOBAL_OFFSET_TABLE_+0x30>
    80004d84:	0007b503          	ld	a0,0(a5)
    80004d88:	00000097          	auipc	ra,0x0
    80004d8c:	578080e7          	jalr	1400(ra) # 80005300 <_ZN4_Sem6signalEv>
    80004d90:	f69ff06f          	j	80004cf8 <_ZN7_Thread4exitEPv+0xa0>
    if (user > 0) busyWait();
    80004d94:	fffff097          	auipc	ra,0xfffff
    80004d98:	bf0080e7          	jalr	-1040(ra) # 80003984 <_ZN7_Thread8busyWaitEv>
    80004d9c:	f69ff06f          	j	80004d04 <_ZN7_Thread4exitEPv+0xac>
    else _Scheduler::get(); //siguran sam da ce moci jer readyFirst != 0
    80004da0:	ffffd097          	auipc	ra,0xffffd
    80004da4:	900080e7          	jalr	-1792(ra) # 800016a0 <_ZN10_Scheduler3getEv>
    80004da8:	f95ff06f          	j	80004d3c <_ZN7_Thread4exitEPv+0xe4>

0000000080004dac <_ZN7_Thread8sem_kickEP4_Sem>:
int _Thread::sem_kick(sem_t sem) {
    80004dac:	fe010113          	addi	sp,sp,-32
    80004db0:	00113c23          	sd	ra,24(sp)
    80004db4:	00813823          	sd	s0,16(sp)
    80004db8:	00913423          	sd	s1,8(sp)
    80004dbc:	01213023          	sd	s2,0(sp)
    80004dc0:	02010413          	addi	s0,sp,32
    80004dc4:	00050493          	mv	s1,a0
    80004dc8:	00058913          	mv	s2,a1
    kick();
    80004dcc:	fffff097          	auipc	ra,0xfffff
    80004dd0:	d48080e7          	jalr	-696(ra) # 80003b14 <_ZN7_Thread4kickEv>
    int ret = waitManager->sem_pass(sem);
    80004dd4:	0404b503          	ld	a0,64(s1)
    80004dd8:	00053783          	ld	a5,0(a0)
    80004ddc:	0007b783          	ld	a5,0(a5)
    80004de0:	00090593          	mv	a1,s2
    80004de4:	000780e7          	jalr	a5
    80004de8:	00050593          	mv	a1,a0
    return check_wait(ret);
    80004dec:	00048513          	mv	a0,s1
    80004df0:	00000097          	auipc	ra,0x0
    80004df4:	cc0080e7          	jalr	-832(ra) # 80004ab0 <_ZN7_Thread10check_waitEi>
}
    80004df8:	01813083          	ld	ra,24(sp)
    80004dfc:	01013403          	ld	s0,16(sp)
    80004e00:	00813483          	ld	s1,8(sp)
    80004e04:	00013903          	ld	s2,0(sp)
    80004e08:	02010113          	addi	sp,sp,32
    80004e0c:	00008067          	ret

0000000080004e10 <_ZN4_Mem4initEPKvS1_>:


const size_t _Mem::header_size = sizeof(size_t); //kada se alocira neki segment, prvih header_size bajtova sluzi da se
//zapamti broj alociranih blokova, zbog cega ce C API funkcija zapravo da alocira header_size bajtova vise
_Mem::Descriptor* _Mem::head;
void _Mem::init(const void* heap_start, const void* heap_end) {
    80004e10:	ff010113          	addi	sp,sp,-16
    80004e14:	00813423          	sd	s0,8(sp)
    80004e18:	01010413          	addi	s0,sp,16
    head = (_Mem::Descriptor*)heap_start;
    80004e1c:	0000b797          	auipc	a5,0xb
    80004e20:	c6478793          	addi	a5,a5,-924 # 8000fa80 <_ZN4_Mem4headE>
    80004e24:	00a7b023          	sd	a0,0(a5)
    head->blocknum = (size_t)((char*)heap_end - (char*)heap_start) / MEM_BLOCK_SIZE; //visak memorije koji je manji od
    80004e28:	40a585b3          	sub	a1,a1,a0
    80004e2c:	0065d593          	srli	a1,a1,0x6
    80004e30:	00b53023          	sd	a1,0(a0)
    //MEM_BLOCK_SIZE se ignorise i ne alocira
    head->next = 0;
    80004e34:	0007b783          	ld	a5,0(a5)
    80004e38:	0007b423          	sd	zero,8(a5)
}
    80004e3c:	00813403          	ld	s0,8(sp)
    80004e40:	01010113          	addi	sp,sp,16
    80004e44:	00008067          	ret

0000000080004e48 <_ZN4_Mem5allocEm>:

void* _Mem::alloc(size_t size) {
    80004e48:	ff010113          	addi	sp,sp,-16
    80004e4c:	00813423          	sd	s0,8(sp)
    80004e50:	01010413          	addi	s0,sp,16
    80004e54:	00050713          	mv	a4,a0
    _Mem::Descriptor* cur = head, *prev = 0;
    80004e58:	0000b517          	auipc	a0,0xb
    80004e5c:	c2853503          	ld	a0,-984(a0) # 8000fa80 <_ZN4_Mem4headE>
    80004e60:	00000693          	li	a3,0
    while (cur && cur->blocknum < size) prev = cur, cur = cur->next; //first-fit
    80004e64:	00050c63          	beqz	a0,80004e7c <_ZN4_Mem5allocEm+0x34>
    80004e68:	00053783          	ld	a5,0(a0)
    80004e6c:	00e7f863          	bgeu	a5,a4,80004e7c <_ZN4_Mem5allocEm+0x34>
    80004e70:	00050693          	mv	a3,a0
    80004e74:	00853503          	ld	a0,8(a0)
    80004e78:	fedff06f          	j	80004e64 <_ZN4_Mem5allocEm+0x1c>
    if (!cur) return 0;//nema mesta;
    80004e7c:	02050a63          	beqz	a0,80004eb0 <_ZN4_Mem5allocEm+0x68>
    _Mem::Descriptor* next;
    if (cur->blocknum == size) next = cur->next;
    80004e80:	00053603          	ld	a2,0(a0)
    80004e84:	02e60c63          	beq	a2,a4,80004ebc <_ZN4_Mem5allocEm+0x74>
    else {//nealocirani deo segmenta postaje novi segment
        next = (_Mem::Descriptor*)((char*)cur + size * MEM_BLOCK_SIZE);
    80004e88:	00671793          	slli	a5,a4,0x6
    80004e8c:	00f507b3          	add	a5,a0,a5
        next->blocknum = cur->blocknum - size;
    80004e90:	40e60633          	sub	a2,a2,a4
    80004e94:	00c7b023          	sd	a2,0(a5)
        next->next = cur->next;
    80004e98:	00853603          	ld	a2,8(a0)
    80004e9c:	00c7b423          	sd	a2,8(a5)
        cur->blocknum = size;
    80004ea0:	00e53023          	sd	a4,0(a0)
    }
    if (prev) prev->next = next;
    80004ea4:	02068063          	beqz	a3,80004ec4 <_ZN4_Mem5allocEm+0x7c>
    80004ea8:	00f6b423          	sd	a5,8(a3)
    else head = next;
    return (void*)((char*)cur + header_size);//vraca se pokazivac koji pokazuje IZA header-a
    80004eac:	00850513          	addi	a0,a0,8
}
    80004eb0:	00813403          	ld	s0,8(sp)
    80004eb4:	01010113          	addi	sp,sp,16
    80004eb8:	00008067          	ret
    if (cur->blocknum == size) next = cur->next;
    80004ebc:	00853783          	ld	a5,8(a0)
    80004ec0:	fe5ff06f          	j	80004ea4 <_ZN4_Mem5allocEm+0x5c>
    else head = next;
    80004ec4:	0000b717          	auipc	a4,0xb
    80004ec8:	baf73e23          	sd	a5,-1092(a4) # 8000fa80 <_ZN4_Mem4headE>
    80004ecc:	fe1ff06f          	j	80004eac <_ZN4_Mem5allocEm+0x64>

0000000080004ed0 <_ZN4_Mem4freeEPv>:
void* _Mem::allocate(size_t size) {
    return _Mem::alloc(_Mem::getBlockNum(size));
}
int _Mem::free(void* addr) {
    80004ed0:	ff010113          	addi	sp,sp,-16
    80004ed4:	00813423          	sd	s0,8(sp)
    80004ed8:	01010413          	addi	s0,sp,16
    if (!addr) return 0;
    80004edc:	04050e63          	beqz	a0,80004f38 <_ZN4_Mem4freeEPv+0x68>
    _Mem::Descriptor* cur = (_Mem::Descriptor*)((char*)addr - header_size);
    80004ee0:	ff850713          	addi	a4,a0,-8
    void* end = (void*)((char*)cur + cur->blocknum * MEM_BLOCK_SIZE);
    80004ee4:	ff853503          	ld	a0,-8(a0)
    80004ee8:	00651793          	slli	a5,a0,0x6
    80004eec:	00f70633          	add	a2,a4,a5
    _Mem::Descriptor* next = head, *prev = 0;
    80004ef0:	0000b797          	auipc	a5,0xb
    80004ef4:	b907b783          	ld	a5,-1136(a5) # 8000fa80 <_ZN4_Mem4headE>
    80004ef8:	00000693          	li	a3,0
    while (next && next < cur) prev = next, next = next->next;//u lancu slobodnih segmenata, trazimo prvi segment
    80004efc:	00078a63          	beqz	a5,80004f10 <_ZN4_Mem4freeEPv+0x40>
    80004f00:	00e7f863          	bgeu	a5,a4,80004f10 <_ZN4_Mem4freeEPv+0x40>
    80004f04:	00078693          	mv	a3,a5
    80004f08:	0087b783          	ld	a5,8(a5)
    80004f0c:	ff1ff06f          	j	80004efc <_ZN4_Mem4freeEPv+0x2c>
    //iza segemnta koji se dealocira (to ce biti next, a prev ce biti prvi prethodni)
    if (prev && (char*)prev + prev->blocknum * MEM_BLOCK_SIZE == (char*)cur) {//ako su prev i cur spojeni
    80004f10:	00068a63          	beqz	a3,80004f24 <_ZN4_Mem4freeEPv+0x54>
    80004f14:	0006b803          	ld	a6,0(a3)
    80004f18:	00681593          	slli	a1,a6,0x6
    80004f1c:	00b685b3          	add	a1,a3,a1
    80004f20:	02e58463          	beq	a1,a4,80004f48 <_ZN4_Mem4freeEPv+0x78>
        prev->blocknum +=  cur->blocknum;
        cur = prev;
    }
    else if (prev) prev->next = cur;
    80004f24:	02068a63          	beqz	a3,80004f58 <_ZN4_Mem4freeEPv+0x88>
    80004f28:	00e6b423          	sd	a4,8(a3)
    else head = cur;
    if (next && (void*)next == end) {//ako su spojeni next i cur
    80004f2c:	00078463          	beqz	a5,80004f34 <_ZN4_Mem4freeEPv+0x64>
    80004f30:	02c78a63          	beq	a5,a2,80004f64 <_ZN4_Mem4freeEPv+0x94>
        cur->blocknum += next->blocknum;
        cur->next = next->next;
    }
    else cur->next = next;
    80004f34:	00f73423          	sd	a5,8(a4)
    return 0;
}
    80004f38:	00000513          	li	a0,0
    80004f3c:	00813403          	ld	s0,8(sp)
    80004f40:	01010113          	addi	sp,sp,16
    80004f44:	00008067          	ret
        prev->blocknum +=  cur->blocknum;
    80004f48:	01050533          	add	a0,a0,a6
    80004f4c:	00a6b023          	sd	a0,0(a3)
        cur = prev;
    80004f50:	00068713          	mv	a4,a3
    80004f54:	fd9ff06f          	j	80004f2c <_ZN4_Mem4freeEPv+0x5c>
    else head = cur;
    80004f58:	0000b697          	auipc	a3,0xb
    80004f5c:	b2e6b423          	sd	a4,-1240(a3) # 8000fa80 <_ZN4_Mem4headE>
    80004f60:	fcdff06f          	j	80004f2c <_ZN4_Mem4freeEPv+0x5c>
        cur->blocknum += next->blocknum;
    80004f64:	0007b603          	ld	a2,0(a5)
    80004f68:	00073683          	ld	a3,0(a4)
    80004f6c:	00c686b3          	add	a3,a3,a2
    80004f70:	00d73023          	sd	a3,0(a4)
        cur->next = next->next;
    80004f74:	0087b783          	ld	a5,8(a5)
    80004f78:	00f73423          	sd	a5,8(a4)
    80004f7c:	fbdff06f          	j	80004f38 <_ZN4_Mem4freeEPv+0x68>

0000000080004f80 <_ZN4_Mem11getBlockNumEm>:

size_t _Mem::getBlockNum(size_t size) {
    80004f80:	ff010113          	addi	sp,sp,-16
    80004f84:	00813423          	sd	s0,8(sp)
    80004f88:	01010413          	addi	s0,sp,16
    return (size + header_size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80004f8c:	04750513          	addi	a0,a0,71
}
    80004f90:	00655513          	srli	a0,a0,0x6
    80004f94:	00813403          	ld	s0,8(sp)
    80004f98:	01010113          	addi	sp,sp,16
    80004f9c:	00008067          	ret

0000000080004fa0 <_ZN4_Mem8allocateEm>:
void* _Mem::allocate(size_t size) {
    80004fa0:	ff010113          	addi	sp,sp,-16
    80004fa4:	00113423          	sd	ra,8(sp)
    80004fa8:	00813023          	sd	s0,0(sp)
    80004fac:	01010413          	addi	s0,sp,16
    return _Mem::alloc(_Mem::getBlockNum(size));
    80004fb0:	00000097          	auipc	ra,0x0
    80004fb4:	fd0080e7          	jalr	-48(ra) # 80004f80 <_ZN4_Mem11getBlockNumEm>
    80004fb8:	00000097          	auipc	ra,0x0
    80004fbc:	e90080e7          	jalr	-368(ra) # 80004e48 <_ZN4_Mem5allocEm>
}
    80004fc0:	00813083          	ld	ra,8(sp)
    80004fc4:	00013403          	ld	s0,0(sp)
    80004fc8:	01010113          	addi	sp,sp,16
    80004fcc:	00008067          	ret

0000000080004fd0 <_ZN4_SemnwEm>:
#include "../h/_Sleep.h"
#include "../h/_WaitManager.h"

kmem_cache_t* _Sem::cache = nullptr;

void* _Sem::operator new(size_t) {
    80004fd0:	ff010113          	addi	sp,sp,-16
    80004fd4:	00113423          	sd	ra,8(sp)
    80004fd8:	00813023          	sd	s0,0(sp)
    80004fdc:	01010413          	addi	s0,sp,16
    if (!cache) cache = kmem_cache_create("Sem Cache", sizeof(_Sem), nullptr, nullptr);
    80004fe0:	0000b797          	auipc	a5,0xb
    80004fe4:	aa87b783          	ld	a5,-1368(a5) # 8000fa88 <_ZN4_Sem5cacheE>
    80004fe8:	02078263          	beqz	a5,8000500c <_ZN4_SemnwEm+0x3c>
    return kmem_cache_alloc(cache);
    80004fec:	0000b517          	auipc	a0,0xb
    80004ff0:	a9c53503          	ld	a0,-1380(a0) # 8000fa88 <_ZN4_Sem5cacheE>
    80004ff4:	ffffc097          	auipc	ra,0xffffc
    80004ff8:	480080e7          	jalr	1152(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
}
    80004ffc:	00813083          	ld	ra,8(sp)
    80005000:	00013403          	ld	s0,0(sp)
    80005004:	01010113          	addi	sp,sp,16
    80005008:	00008067          	ret
    if (!cache) cache = kmem_cache_create("Sem Cache", sizeof(_Sem), nullptr, nullptr);
    8000500c:	00000693          	li	a3,0
    80005010:	00000613          	li	a2,0
    80005014:	01800593          	li	a1,24
    80005018:	00006517          	auipc	a0,0x6
    8000501c:	35850513          	addi	a0,a0,856 # 8000b370 <_ZN4_Mem11header_sizeE+0x8>
    80005020:	ffffc097          	auipc	ra,0xffffc
    80005024:	404080e7          	jalr	1028(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005028:	0000b797          	auipc	a5,0xb
    8000502c:	a6a7b023          	sd	a0,-1440(a5) # 8000fa88 <_ZN4_Sem5cacheE>
    80005030:	fbdff06f          	j	80004fec <_ZN4_SemnwEm+0x1c>

0000000080005034 <_ZN4_SemdlEPv>:
void _Sem::operator delete(void* addr) {
    80005034:	ff010113          	addi	sp,sp,-16
    80005038:	00113423          	sd	ra,8(sp)
    8000503c:	00813023          	sd	s0,0(sp)
    80005040:	01010413          	addi	s0,sp,16
    80005044:	00050593          	mv	a1,a0
    kmem_cache_free(cache, addr);
    80005048:	0000b517          	auipc	a0,0xb
    8000504c:	a4053503          	ld	a0,-1472(a0) # 8000fa88 <_ZN4_Sem5cacheE>
    80005050:	ffffc097          	auipc	ra,0xffffc
    80005054:	44c080e7          	jalr	1100(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
}
    80005058:	00813083          	ld	ra,8(sp)
    8000505c:	00013403          	ld	s0,0(sp)
    80005060:	01010113          	addi	sp,sp,16
    80005064:	00008067          	ret

0000000080005068 <_ZN4_SemC1Ej>:
_Sem::_Sem(unsigned v) {
    80005068:	ff010113          	addi	sp,sp,-16
    8000506c:	00813423          	sd	s0,8(sp)
    80005070:	01010413          	addi	s0,sp,16

#ifndef PROJECT_BASE__THREAD_LIST_H
#define PROJECT_BASE__THREAD_LIST_H
#include "types.h"
#include "_slab.h"
class _ThreadList {
    80005074:	00053023          	sd	zero,0(a0)
    80005078:	00053423          	sd	zero,8(a0)
    val = v;
    8000507c:	00b52823          	sw	a1,16(a0)
}
    80005080:	00813403          	ld	s0,8(sp)
    80005084:	01010113          	addi	sp,sp,16
    80005088:	00008067          	ret

000000008000508c <_ZN4_Sem4openEPPS_j>:

int _Sem::open(sem_t* handle, unsigned init) {
    if (!handle) return -3; //mora negde da se zapamti semafor. To je odgovornost pozivaoca.
    8000508c:	06050863          	beqz	a0,800050fc <_ZN4_Sem4openEPPS_j+0x70>
int _Sem::open(sem_t* handle, unsigned init) {
    80005090:	fd010113          	addi	sp,sp,-48
    80005094:	02113423          	sd	ra,40(sp)
    80005098:	02813023          	sd	s0,32(sp)
    8000509c:	00913c23          	sd	s1,24(sp)
    800050a0:	01213823          	sd	s2,16(sp)
    800050a4:	01313423          	sd	s3,8(sp)
    800050a8:	03010413          	addi	s0,sp,48
    800050ac:	00050913          	mv	s2,a0
    800050b0:	00058993          	mv	s3,a1
    sem_t sem = new _Sem(init);
    800050b4:	01800513          	li	a0,24
    800050b8:	00000097          	auipc	ra,0x0
    800050bc:	f18080e7          	jalr	-232(ra) # 80004fd0 <_ZN4_SemnwEm>
    800050c0:	00050493          	mv	s1,a0
    800050c4:	00050863          	beqz	a0,800050d4 <_ZN4_Sem4openEPPS_j+0x48>
    800050c8:	00098593          	mv	a1,s3
    800050cc:	00000097          	auipc	ra,0x0
    800050d0:	f9c080e7          	jalr	-100(ra) # 80005068 <_ZN4_SemC1Ej>
    if (!sem) return -1; //greska u alokaciji
    800050d4:	02048863          	beqz	s1,80005104 <_ZN4_Sem4openEPPS_j+0x78>
    *handle = sem;
    800050d8:	00993023          	sd	s1,0(s2)
    return 0;
    800050dc:	00000513          	li	a0,0
}
    800050e0:	02813083          	ld	ra,40(sp)
    800050e4:	02013403          	ld	s0,32(sp)
    800050e8:	01813483          	ld	s1,24(sp)
    800050ec:	01013903          	ld	s2,16(sp)
    800050f0:	00813983          	ld	s3,8(sp)
    800050f4:	03010113          	addi	sp,sp,48
    800050f8:	00008067          	ret
    if (!handle) return -3; //mora negde da se zapamti semafor. To je odgovornost pozivaoca.
    800050fc:	ffd00513          	li	a0,-3
}
    80005100:	00008067          	ret
    if (!sem) return -1; //greska u alokaciji
    80005104:	fff00513          	li	a0,-1
    80005108:	fd9ff06f          	j	800050e0 <_ZN4_Sem4openEPPS_j+0x54>

000000008000510c <_ZN4_Sem5closeEPS_>:
int _Sem::close(sem_t handle) {
    8000510c:	fe010113          	addi	sp,sp,-32
    80005110:	00113c23          	sd	ra,24(sp)
    80005114:	00813823          	sd	s0,16(sp)
    80005118:	00913423          	sd	s1,8(sp)
    8000511c:	02010413          	addi	s0,sp,32
    80005120:	00050493          	mv	s1,a0
    thread_t thread;
    while (!handle->list.empty()) {
    80005124:	00048513          	mv	a0,s1
    80005128:	00002097          	auipc	ra,0x2
    8000512c:	d68080e7          	jalr	-664(ra) # 80006e90 <_ZN11_ThreadList5emptyEv>
    80005130:	02051063          	bnez	a0,80005150 <_ZN4_Sem5closeEPS_+0x44>
        thread = handle->list.remove();
    80005134:	00048513          	mv	a0,s1
    80005138:	00002097          	auipc	ra,0x2
    8000513c:	cf8080e7          	jalr	-776(ra) # 80006e30 <_ZN11_ThreadList6removeEv>
        thread->sem_kick(handle);
    80005140:	00048593          	mv	a1,s1
    80005144:	00000097          	auipc	ra,0x0
    80005148:	c68080e7          	jalr	-920(ra) # 80004dac <_ZN7_Thread8sem_kickEP4_Sem>
    while (!handle->list.empty()) {
    8000514c:	fd9ff06f          	j	80005124 <_ZN4_Sem5closeEPS_+0x18>
    }
    delete handle;
    80005150:	00048863          	beqz	s1,80005160 <_ZN4_Sem5closeEPS_+0x54>
    80005154:	00048513          	mv	a0,s1
    80005158:	00000097          	auipc	ra,0x0
    8000515c:	edc080e7          	jalr	-292(ra) # 80005034 <_ZN4_SemdlEPv>
    return 0;
}
    80005160:	00000513          	li	a0,0
    80005164:	01813083          	ld	ra,24(sp)
    80005168:	01013403          	ld	s0,16(sp)
    8000516c:	00813483          	ld	s1,8(sp)
    80005170:	02010113          	addi	sp,sp,32
    80005174:	00008067          	ret

0000000080005178 <_ZN4_Sem4waitEv>:

int _Sem::wait() {
    80005178:	fd010113          	addi	sp,sp,-48
    8000517c:	02113423          	sd	ra,40(sp)
    80005180:	02813023          	sd	s0,32(sp)
    80005184:	00913c23          	sd	s1,24(sp)
    80005188:	01213823          	sd	s2,16(sp)
    8000518c:	01313423          	sd	s3,8(sp)
    80005190:	03010413          	addi	s0,sp,48
    80005194:	00050913          	mv	s2,a0
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    80005198:	0000c797          	auipc	a5,0xc
    8000519c:	ea07b783          	ld	a5,-352(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    800051a0:	0007b503          	ld	a0,0(a5)
    800051a4:	fffff097          	auipc	ra,0xfffff
    800051a8:	3b8080e7          	jalr	952(ra) # 8000455c <_ZN7_Thread13isInterruptedEv>
    800051ac:	10051063          	bnez	a0,800052ac <_ZN4_Sem4waitEv+0x134>
    800051b0:	00050493          	mv	s1,a0
    if (val > 0) {
    800051b4:	01092783          	lw	a5,16(s2)
    800051b8:	00078863          	beqz	a5,800051c8 <_ZN4_Sem4waitEv+0x50>
        val--;
    800051bc:	fff7879b          	addiw	a5,a5,-1
    800051c0:	00f92823          	sw	a5,16(s2)
        return 0;
    800051c4:	0ec0006f          	j	800052b0 <_ZN4_Sem4waitEv+0x138>
        if (!cache) cache = kmem_cache_create("Sem_manager Cache", sizeof(_SemManager), nullptr, nullptr);
    800051c8:	0000c797          	auipc	a5,0xc
    800051cc:	ec87b783          	ld	a5,-312(a5) # 80011090 <_GLOBAL_OFFSET_TABLE_+0x90>
    800051d0:	0007b783          	ld	a5,0(a5)
    800051d4:	02078e63          	beqz	a5,80005210 <_ZN4_Sem4waitEv+0x98>
        return kmem_cache_alloc(cache);
    800051d8:	0000c797          	auipc	a5,0xc
    800051dc:	eb87b783          	ld	a5,-328(a5) # 80011090 <_GLOBAL_OFFSET_TABLE_+0x90>
    800051e0:	0007b503          	ld	a0,0(a5)
    800051e4:	ffffc097          	auipc	ra,0xffffc
    800051e8:	290080e7          	jalr	656(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
    800051ec:	00050493          	mv	s1,a0
    }
    _WaitManager* manager = new _SemManager(_Thread::running, this);
    800051f0:	04050663          	beqz	a0,8000523c <_ZN4_Sem4waitEv+0xc4>
    800051f4:	00090613          	mv	a2,s2
    800051f8:	0000c797          	auipc	a5,0xc
    800051fc:	e407b783          	ld	a5,-448(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005200:	0007b583          	ld	a1,0(a5)
    80005204:	00003097          	auipc	ra,0x3
    80005208:	8cc080e7          	jalr	-1844(ra) # 80007ad0 <_ZN11_SemManagerC1EP7_ThreadP4_Sem>
    8000520c:	0300006f          	j	8000523c <_ZN4_Sem4waitEv+0xc4>
        if (!cache) cache = kmem_cache_create("Sem_manager Cache", sizeof(_SemManager), nullptr, nullptr);
    80005210:	00000693          	li	a3,0
    80005214:	00000613          	li	a2,0
    80005218:	01800593          	li	a1,24
    8000521c:	00006517          	auipc	a0,0x6
    80005220:	16450513          	addi	a0,a0,356 # 8000b380 <_ZN4_Mem11header_sizeE+0x18>
    80005224:	ffffc097          	auipc	ra,0xffffc
    80005228:	200080e7          	jalr	512(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    8000522c:	0000c797          	auipc	a5,0xc
    80005230:	e647b783          	ld	a5,-412(a5) # 80011090 <_GLOBAL_OFFSET_TABLE_+0x90>
    80005234:	00a7b023          	sd	a0,0(a5)
    80005238:	fa1ff06f          	j	800051d8 <_ZN4_Sem4waitEv+0x60>
    if (!manager) return -1;
    8000523c:	08048a63          	beqz	s1,800052d0 <_ZN4_Sem4waitEv+0x158>
    _Thread::running->setManager(manager);
    80005240:	0000c997          	auipc	s3,0xc
    80005244:	df89b983          	ld	s3,-520(s3) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005248:	00048593          	mv	a1,s1
    8000524c:	0009b503          	ld	a0,0(s3)
    80005250:	fffff097          	auipc	ra,0xfffff
    80005254:	4f8080e7          	jalr	1272(ra) # 80004748 <_ZN7_Thread10setManagerEP12_WaitManager>
    int ret = list.add(_Thread::running);
    80005258:	0009b583          	ld	a1,0(s3)
    8000525c:	00090513          	mv	a0,s2
    80005260:	00002097          	auipc	ra,0x2
    80005264:	b54080e7          	jalr	-1196(ra) # 80006db4 <_ZN11_ThreadList3addEP7_Thread>
    80005268:	00050493          	mv	s1,a0
    if (ret) { _Thread::running->removeManager(); return ret; }
    8000526c:	02051863          	bnez	a0,8000529c <_ZN4_Sem4waitEv+0x124>
    _Thread::safeDispatch();
    80005270:	fffff097          	auipc	ra,0xfffff
    80005274:	310080e7          	jalr	784(ra) # 80004580 <_ZN7_Thread12safeDispatchEv>
    if (_Thread::running->kicked()) return 3;
    80005278:	0000c797          	auipc	a5,0xc
    8000527c:	dc07b783          	ld	a5,-576(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005280:	0007b503          	ld	a0,0(a5)
    80005284:	fffff097          	auipc	ra,0xfffff
    80005288:	858080e7          	jalr	-1960(ra) # 80003adc <_ZN7_Thread6kickedEv>
    8000528c:	00050493          	mv	s1,a0
    80005290:	02050063          	beqz	a0,800052b0 <_ZN4_Sem4waitEv+0x138>
    80005294:	00300493          	li	s1,3
    80005298:	0180006f          	j	800052b0 <_ZN4_Sem4waitEv+0x138>
    if (ret) { _Thread::running->removeManager(); return ret; }
    8000529c:	0009b503          	ld	a0,0(s3)
    800052a0:	fffff097          	auipc	ra,0xfffff
    800052a4:	620080e7          	jalr	1568(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    800052a8:	0080006f          	j	800052b0 <_ZN4_Sem4waitEv+0x138>
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    800052ac:	00000493          	li	s1,0
    return 0;
}
    800052b0:	00048513          	mv	a0,s1
    800052b4:	02813083          	ld	ra,40(sp)
    800052b8:	02013403          	ld	s0,32(sp)
    800052bc:	01813483          	ld	s1,24(sp)
    800052c0:	01013903          	ld	s2,16(sp)
    800052c4:	00813983          	ld	s3,8(sp)
    800052c8:	03010113          	addi	sp,sp,48
    800052cc:	00008067          	ret
    if (!manager) return -1;
    800052d0:	fff00493          	li	s1,-1
    800052d4:	fddff06f          	j	800052b0 <_ZN4_Sem4waitEv+0x138>
    800052d8:	00050913          	mv	s2,a0
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    800052dc:	00048593          	mv	a1,s1
    800052e0:	0000c797          	auipc	a5,0xc
    800052e4:	db07b783          	ld	a5,-592(a5) # 80011090 <_GLOBAL_OFFSET_TABLE_+0x90>
    800052e8:	0007b503          	ld	a0,0(a5)
    800052ec:	ffffc097          	auipc	ra,0xffffc
    800052f0:	1b0080e7          	jalr	432(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
    800052f4:	00090513          	mv	a0,s2
    800052f8:	0000c097          	auipc	ra,0xc
    800052fc:	8f0080e7          	jalr	-1808(ra) # 80010be8 <_Unwind_Resume>

0000000080005300 <_ZN4_Sem6signalEv>:
int _Sem::signal() {
    80005300:	fe010113          	addi	sp,sp,-32
    80005304:	00113c23          	sd	ra,24(sp)
    80005308:	00813823          	sd	s0,16(sp)
    8000530c:	00913423          	sd	s1,8(sp)
    80005310:	02010413          	addi	s0,sp,32
    80005314:	00050493          	mv	s1,a0
    if (!list.empty()) {
    80005318:	00002097          	auipc	ra,0x2
    8000531c:	b78080e7          	jalr	-1160(ra) # 80006e90 <_ZN11_ThreadList5emptyEv>
    80005320:	02050463          	beqz	a0,80005348 <_ZN4_Sem6signalEv+0x48>
        thread_t thread = list.remove();
        return thread->sem_pass(this);
    }
    else {
        val++;
    80005324:	0104a783          	lw	a5,16(s1)
    80005328:	0017879b          	addiw	a5,a5,1
    8000532c:	00f4a823          	sw	a5,16(s1)
        return 0;
    80005330:	00000513          	li	a0,0
    }
}
    80005334:	01813083          	ld	ra,24(sp)
    80005338:	01013403          	ld	s0,16(sp)
    8000533c:	00813483          	ld	s1,8(sp)
    80005340:	02010113          	addi	sp,sp,32
    80005344:	00008067          	ret
        thread_t thread = list.remove();
    80005348:	00048513          	mv	a0,s1
    8000534c:	00002097          	auipc	ra,0x2
    80005350:	ae4080e7          	jalr	-1308(ra) # 80006e30 <_ZN11_ThreadList6removeEv>
        return thread->sem_pass(this);
    80005354:	00048593          	mv	a1,s1
    80005358:	00000097          	auipc	ra,0x0
    8000535c:	81c080e7          	jalr	-2020(ra) # 80004b74 <_ZN7_Thread8sem_passEP4_Sem>
    80005360:	fd5ff06f          	j	80005334 <_ZN4_Sem6signalEv+0x34>

0000000080005364 <_ZN4_Sem11signalEventEv>:
int _Sem::signalEvent() {
    if (val >= 1) return 0;
    80005364:	01052783          	lw	a5,16(a0)
    80005368:	00078663          	beqz	a5,80005374 <_ZN4_Sem11signalEventEv+0x10>
    8000536c:	00000513          	li	a0,0
    return signal();
}
    80005370:	00008067          	ret
int _Sem::signalEvent() {
    80005374:	ff010113          	addi	sp,sp,-16
    80005378:	00113423          	sd	ra,8(sp)
    8000537c:	00813023          	sd	s0,0(sp)
    80005380:	01010413          	addi	s0,sp,16
    return signal();
    80005384:	00000097          	auipc	ra,0x0
    80005388:	f7c080e7          	jalr	-132(ra) # 80005300 <_ZN4_Sem6signalEv>
}
    8000538c:	00813083          	ld	ra,8(sp)
    80005390:	00013403          	ld	s0,0(sp)
    80005394:	01010113          	addi	sp,sp,16
    80005398:	00008067          	ret

000000008000539c <_ZN4_Sem9signalAllEv>:
int _Sem::signalAll() {
    8000539c:	fe010113          	addi	sp,sp,-32
    800053a0:	00113c23          	sd	ra,24(sp)
    800053a4:	00813823          	sd	s0,16(sp)
    800053a8:	00913423          	sd	s1,8(sp)
    800053ac:	02010413          	addi	s0,sp,32
    800053b0:	00050493          	mv	s1,a0
    while (!list.empty()) {
    800053b4:	00048513          	mv	a0,s1
    800053b8:	00002097          	auipc	ra,0x2
    800053bc:	ad8080e7          	jalr	-1320(ra) # 80006e90 <_ZN11_ThreadList5emptyEv>
    800053c0:	00051c63          	bnez	a0,800053d8 <_ZN4_Sem9signalAllEv+0x3c>
        int ret = signal();
    800053c4:	00048513          	mv	a0,s1
    800053c8:	00000097          	auipc	ra,0x0
    800053cc:	f38080e7          	jalr	-200(ra) # 80005300 <_ZN4_Sem6signalEv>
        if (ret < 0) return ret;
    800053d0:	fe0552e3          	bgez	a0,800053b4 <_ZN4_Sem9signalAllEv+0x18>
    800053d4:	0080006f          	j	800053dc <_ZN4_Sem9signalAllEv+0x40>
    }
    return 0;
    800053d8:	00000513          	li	a0,0
}
    800053dc:	01813083          	ld	ra,24(sp)
    800053e0:	01013403          	ld	s0,16(sp)
    800053e4:	00813483          	ld	s1,8(sp)
    800053e8:	02010113          	addi	sp,sp,32
    800053ec:	00008067          	ret

00000000800053f0 <_ZN4_Sem6removeEP7_Thread>:

int _Sem::remove(thread_t thread) {
    800053f0:	ff010113          	addi	sp,sp,-16
    800053f4:	00113423          	sd	ra,8(sp)
    800053f8:	00813023          	sd	s0,0(sp)
    800053fc:	01010413          	addi	s0,sp,16
    return list.remove(thread);
    80005400:	00002097          	auipc	ra,0x2
    80005404:	ab0080e7          	jalr	-1360(ra) # 80006eb0 <_ZN11_ThreadList6removeEP7_Thread>
}
    80005408:	00813083          	ld	ra,8(sp)
    8000540c:	00013403          	ld	s0,0(sp)
    80005410:	01010113          	addi	sp,sp,16
    80005414:	00008067          	ret

0000000080005418 <_ZN4_Sem4waitEm>:
int _Sem::wait(time_t limit) {
    80005418:	fd010113          	addi	sp,sp,-48
    8000541c:	02113423          	sd	ra,40(sp)
    80005420:	02813023          	sd	s0,32(sp)
    80005424:	00913c23          	sd	s1,24(sp)
    80005428:	01213823          	sd	s2,16(sp)
    8000542c:	01313423          	sd	s3,8(sp)
    80005430:	03010413          	addi	s0,sp,48
    80005434:	00050913          	mv	s2,a0
    80005438:	00058993          	mv	s3,a1
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    8000543c:	0000c797          	auipc	a5,0xc
    80005440:	bfc7b783          	ld	a5,-1028(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005444:	0007b503          	ld	a0,0(a5)
    80005448:	fffff097          	auipc	ra,0xfffff
    8000544c:	114080e7          	jalr	276(ra) # 8000455c <_ZN7_Thread13isInterruptedEv>
    80005450:	16051663          	bnez	a0,800055bc <_ZN4_Sem4waitEm+0x1a4>
    80005454:	00050493          	mv	s1,a0
    if (val > 0) {
    80005458:	01092783          	lw	a5,16(s2)
    8000545c:	00079863          	bnez	a5,8000546c <_ZN4_Sem4waitEm+0x54>
        val--;
        return 0;
    }
    if (!limit) return 1;
    80005460:	00099c63          	bnez	s3,80005478 <_ZN4_Sem4waitEm+0x60>
    80005464:	00100493          	li	s1,1
    80005468:	1580006f          	j	800055c0 <_ZN4_Sem4waitEm+0x1a8>
        val--;
    8000546c:	fff7879b          	addiw	a5,a5,-1
    80005470:	00f92823          	sw	a5,16(s2)
        return 0;
    80005474:	14c0006f          	j	800055c0 <_ZN4_Sem4waitEm+0x1a8>
        if (!cache) cache = kmem_cache_create("SemSleep_manager Cache", sizeof(_SemSleepManager), nullptr, nullptr);
    80005478:	0000c797          	auipc	a5,0xc
    8000547c:	be87b783          	ld	a5,-1048(a5) # 80011060 <_GLOBAL_OFFSET_TABLE_+0x60>
    80005480:	0007b783          	ld	a5,0(a5)
    80005484:	02078e63          	beqz	a5,800054c0 <_ZN4_Sem4waitEm+0xa8>
        return kmem_cache_alloc(cache);
    80005488:	0000c797          	auipc	a5,0xc
    8000548c:	bd87b783          	ld	a5,-1064(a5) # 80011060 <_GLOBAL_OFFSET_TABLE_+0x60>
    80005490:	0007b503          	ld	a0,0(a5)
    80005494:	ffffc097          	auipc	ra,0xffffc
    80005498:	fe0080e7          	jalr	-32(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
    8000549c:	00050493          	mv	s1,a0
    _WaitManager* manager = new _SemSleepManager(_Thread::running, this);
    800054a0:	04050663          	beqz	a0,800054ec <_ZN4_Sem4waitEm+0xd4>
    800054a4:	00090613          	mv	a2,s2
    800054a8:	0000c797          	auipc	a5,0xc
    800054ac:	b907b783          	ld	a5,-1136(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    800054b0:	0007b583          	ld	a1,0(a5)
    800054b4:	00002097          	auipc	ra,0x2
    800054b8:	7bc080e7          	jalr	1980(ra) # 80007c70 <_ZN16_SemSleepManagerC1EP7_ThreadP4_Sem>
    800054bc:	0300006f          	j	800054ec <_ZN4_Sem4waitEm+0xd4>
        if (!cache) cache = kmem_cache_create("SemSleep_manager Cache", sizeof(_SemSleepManager), nullptr, nullptr);
    800054c0:	00000693          	li	a3,0
    800054c4:	00000613          	li	a2,0
    800054c8:	01800593          	li	a1,24
    800054cc:	00006517          	auipc	a0,0x6
    800054d0:	ecc50513          	addi	a0,a0,-308 # 8000b398 <_ZN4_Mem11header_sizeE+0x30>
    800054d4:	ffffc097          	auipc	ra,0xffffc
    800054d8:	f50080e7          	jalr	-176(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800054dc:	0000c797          	auipc	a5,0xc
    800054e0:	b847b783          	ld	a5,-1148(a5) # 80011060 <_GLOBAL_OFFSET_TABLE_+0x60>
    800054e4:	00a7b023          	sd	a0,0(a5)
    800054e8:	fa1ff06f          	j	80005488 <_ZN4_Sem4waitEm+0x70>
    if (!manager) return -1;
    800054ec:	0e048a63          	beqz	s1,800055e0 <_ZN4_Sem4waitEm+0x1c8>
    int ret = list.add(_Thread::running);
    800054f0:	0000c797          	auipc	a5,0xc
    800054f4:	b487b783          	ld	a5,-1208(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    800054f8:	0007b583          	ld	a1,0(a5)
    800054fc:	00090513          	mv	a0,s2
    80005500:	00002097          	auipc	ra,0x2
    80005504:	8b4080e7          	jalr	-1868(ra) # 80006db4 <_ZN11_ThreadList3addEP7_Thread>
    80005508:	00050493          	mv	s1,a0
    if (ret) { _Thread::running->removeManager(); return ret; }
    8000550c:	04051663          	bnez	a0,80005558 <_ZN4_Sem4waitEm+0x140>
    ret = _Sleep::put(_Thread::running, limit);
    80005510:	00098593          	mv	a1,s3
    80005514:	0000c797          	auipc	a5,0xc
    80005518:	b247b783          	ld	a5,-1244(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000551c:	0007b503          	ld	a0,0(a5)
    80005520:	ffffc097          	auipc	ra,0xffffc
    80005524:	6a4080e7          	jalr	1700(ra) # 80001bc4 <_ZN6_Sleep3putEP7_Threadm>
    80005528:	00050493          	mv	s1,a0
    if (ret) { remove(_Thread::running);
    8000552c:	04051263          	bnez	a0,80005570 <_ZN4_Sem4waitEm+0x158>
        _Thread::running->removeManager(); return ret; }
    _Thread::safeDispatch();
    80005530:	fffff097          	auipc	ra,0xfffff
    80005534:	050080e7          	jalr	80(ra) # 80004580 <_ZN7_Thread12safeDispatchEv>
    if (_Thread::running->limitReached()) return 1;
    80005538:	0000c797          	auipc	a5,0xc
    8000553c:	b007b783          	ld	a5,-1280(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005540:	0007b503          	ld	a0,0(a5)
    80005544:	fffff097          	auipc	ra,0xfffff
    80005548:	fc0080e7          	jalr	-64(ra) # 80004504 <_ZN7_Thread12limitReachedEv>
    8000554c:	04050663          	beqz	a0,80005598 <_ZN4_Sem4waitEm+0x180>
    80005550:	00100493          	li	s1,1
    80005554:	06c0006f          	j	800055c0 <_ZN4_Sem4waitEm+0x1a8>
    if (ret) { _Thread::running->removeManager(); return ret; }
    80005558:	0000c797          	auipc	a5,0xc
    8000555c:	ae07b783          	ld	a5,-1312(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005560:	0007b503          	ld	a0,0(a5)
    80005564:	fffff097          	auipc	ra,0xfffff
    80005568:	35c080e7          	jalr	860(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    8000556c:	0540006f          	j	800055c0 <_ZN4_Sem4waitEm+0x1a8>
    if (ret) { remove(_Thread::running);
    80005570:	0000c997          	auipc	s3,0xc
    80005574:	ac89b983          	ld	s3,-1336(s3) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005578:	0009b583          	ld	a1,0(s3)
    8000557c:	00090513          	mv	a0,s2
    80005580:	00000097          	auipc	ra,0x0
    80005584:	e70080e7          	jalr	-400(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
        _Thread::running->removeManager(); return ret; }
    80005588:	0009b503          	ld	a0,0(s3)
    8000558c:	fffff097          	auipc	ra,0xfffff
    80005590:	334080e7          	jalr	820(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    80005594:	02c0006f          	j	800055c0 <_ZN4_Sem4waitEm+0x1a8>
    if (_Thread::running->kicked()) return 3;
    80005598:	0000c797          	auipc	a5,0xc
    8000559c:	aa07b783          	ld	a5,-1376(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    800055a0:	0007b503          	ld	a0,0(a5)
    800055a4:	ffffe097          	auipc	ra,0xffffe
    800055a8:	538080e7          	jalr	1336(ra) # 80003adc <_ZN7_Thread6kickedEv>
    800055ac:	00050493          	mv	s1,a0
    800055b0:	00050863          	beqz	a0,800055c0 <_ZN4_Sem4waitEm+0x1a8>
    800055b4:	00300493          	li	s1,3
    800055b8:	0080006f          	j	800055c0 <_ZN4_Sem4waitEm+0x1a8>
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    800055bc:	00000493          	li	s1,0
    return 0;
}
    800055c0:	00048513          	mv	a0,s1
    800055c4:	02813083          	ld	ra,40(sp)
    800055c8:	02013403          	ld	s0,32(sp)
    800055cc:	01813483          	ld	s1,24(sp)
    800055d0:	01013903          	ld	s2,16(sp)
    800055d4:	00813983          	ld	s3,8(sp)
    800055d8:	03010113          	addi	sp,sp,48
    800055dc:	00008067          	ret
    if (!manager) return -1;
    800055e0:	fff00493          	li	s1,-1
    800055e4:	fddff06f          	j	800055c0 <_ZN4_Sem4waitEm+0x1a8>
    800055e8:	00050913          	mv	s2,a0
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    800055ec:	00048593          	mv	a1,s1
    800055f0:	0000c797          	auipc	a5,0xc
    800055f4:	a707b783          	ld	a5,-1424(a5) # 80011060 <_GLOBAL_OFFSET_TABLE_+0x60>
    800055f8:	0007b503          	ld	a0,0(a5)
    800055fc:	ffffc097          	auipc	ra,0xffffc
    80005600:	ea0080e7          	jalr	-352(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
    80005604:	00090513          	mv	a0,s2
    80005608:	0000b097          	auipc	ra,0xb
    8000560c:	5e0080e7          	jalr	1504(ra) # 80010be8 <_Unwind_Resume>

0000000080005610 <_ZN4_Sem6waitOREPS_S0_>:
//dodatne funkcije
int _Sem::waitOR(sem_t sem1, sem_t sem2) {
    80005610:	fd010113          	addi	sp,sp,-48
    80005614:	02113423          	sd	ra,40(sp)
    80005618:	02813023          	sd	s0,32(sp)
    8000561c:	00913c23          	sd	s1,24(sp)
    80005620:	01213823          	sd	s2,16(sp)
    80005624:	01313423          	sd	s3,8(sp)
    80005628:	03010413          	addi	s0,sp,48
    8000562c:	00050913          	mv	s2,a0
    80005630:	00058993          	mv	s3,a1
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    80005634:	0000c797          	auipc	a5,0xc
    80005638:	a047b783          	ld	a5,-1532(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000563c:	0007b503          	ld	a0,0(a5)
    80005640:	fffff097          	auipc	ra,0xfffff
    80005644:	f1c080e7          	jalr	-228(ra) # 8000455c <_ZN7_Thread13isInterruptedEv>
    80005648:	14051c63          	bnez	a0,800057a0 <_ZN4_Sem6waitOREPS_S0_+0x190>
    8000564c:	00050493          	mv	s1,a0
    if (sem1->val > 0) { sem1->val--; return 0; }
    80005650:	01092783          	lw	a5,16(s2)
    80005654:	00079c63          	bnez	a5,8000566c <_ZN4_Sem6waitOREPS_S0_+0x5c>
    else if (sem2->val > 0) { sem2->val--; return 0; }
    80005658:	0109a783          	lw	a5,16(s3)
    8000565c:	00078e63          	beqz	a5,80005678 <_ZN4_Sem6waitOREPS_S0_+0x68>
    80005660:	fff7879b          	addiw	a5,a5,-1
    80005664:	00f9a823          	sw	a5,16(s3)
    80005668:	13c0006f          	j	800057a4 <_ZN4_Sem6waitOREPS_S0_+0x194>
    if (sem1->val > 0) { sem1->val--; return 0; }
    8000566c:	fff7879b          	addiw	a5,a5,-1
    80005670:	00f92823          	sw	a5,16(s2)
    80005674:	1300006f          	j	800057a4 <_ZN4_Sem6waitOREPS_S0_+0x194>
        if (!cache) cache = kmem_cache_create("SemOR_manager Cache", sizeof(_SemORManager), nullptr, nullptr);
    80005678:	0000c797          	auipc	a5,0xc
    8000567c:	a507b783          	ld	a5,-1456(a5) # 800110c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
    80005680:	0007b783          	ld	a5,0(a5)
    80005684:	04078063          	beqz	a5,800056c4 <_ZN4_Sem6waitOREPS_S0_+0xb4>
        return kmem_cache_alloc(cache);
    80005688:	0000c797          	auipc	a5,0xc
    8000568c:	a407b783          	ld	a5,-1472(a5) # 800110c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
    80005690:	0007b503          	ld	a0,0(a5)
    80005694:	ffffc097          	auipc	ra,0xffffc
    80005698:	de0080e7          	jalr	-544(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
    8000569c:	00050493          	mv	s1,a0
    _WaitManager* manager = new _SemORManager(_Thread::running, sem1, sem2);
    800056a0:	04050863          	beqz	a0,800056f0 <_ZN4_Sem6waitOREPS_S0_+0xe0>
    800056a4:	00098693          	mv	a3,s3
    800056a8:	00090613          	mv	a2,s2
    800056ac:	0000c797          	auipc	a5,0xc
    800056b0:	98c7b783          	ld	a5,-1652(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    800056b4:	0007b583          	ld	a1,0(a5)
    800056b8:	00002097          	auipc	ra,0x2
    800056bc:	4f8080e7          	jalr	1272(ra) # 80007bb0 <_ZN13_SemORManagerC1EP7_ThreadP4_SemS3_>
    800056c0:	0300006f          	j	800056f0 <_ZN4_Sem6waitOREPS_S0_+0xe0>
        if (!cache) cache = kmem_cache_create("SemOR_manager Cache", sizeof(_SemORManager), nullptr, nullptr);
    800056c4:	00000693          	li	a3,0
    800056c8:	00000613          	li	a2,0
    800056cc:	02000593          	li	a1,32
    800056d0:	00006517          	auipc	a0,0x6
    800056d4:	ce050513          	addi	a0,a0,-800 # 8000b3b0 <_ZN4_Mem11header_sizeE+0x48>
    800056d8:	ffffc097          	auipc	ra,0xffffc
    800056dc:	d4c080e7          	jalr	-692(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800056e0:	0000c797          	auipc	a5,0xc
    800056e4:	9e87b783          	ld	a5,-1560(a5) # 800110c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
    800056e8:	00a7b023          	sd	a0,0(a5)
    800056ec:	f9dff06f          	j	80005688 <_ZN4_Sem6waitOREPS_S0_+0x78>
    if (!manager) return -1;
    800056f0:	0c048a63          	beqz	s1,800057c4 <_ZN4_Sem6waitOREPS_S0_+0x1b4>
    int ret = sem1->list.add(_Thread::running);
    800056f4:	0000c797          	auipc	a5,0xc
    800056f8:	9447b783          	ld	a5,-1724(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    800056fc:	0007b583          	ld	a1,0(a5)
    80005700:	00090513          	mv	a0,s2
    80005704:	00001097          	auipc	ra,0x1
    80005708:	6b0080e7          	jalr	1712(ra) # 80006db4 <_ZN11_ThreadList3addEP7_Thread>
    8000570c:	00050493          	mv	s1,a0
    if (ret) { _Thread::running->removeManager(); return ret;}
    80005710:	04051863          	bnez	a0,80005760 <_ZN4_Sem6waitOREPS_S0_+0x150>
    ret = sem2->list.add(_Thread::running);
    80005714:	0000c797          	auipc	a5,0xc
    80005718:	9247b783          	ld	a5,-1756(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000571c:	0007b583          	ld	a1,0(a5)
    80005720:	00098513          	mv	a0,s3
    80005724:	00001097          	auipc	ra,0x1
    80005728:	690080e7          	jalr	1680(ra) # 80006db4 <_ZN11_ThreadList3addEP7_Thread>
    8000572c:	00050493          	mv	s1,a0
    if (ret) { sem1->remove(_Thread::running);
    80005730:	04051463          	bnez	a0,80005778 <_ZN4_Sem6waitOREPS_S0_+0x168>
        _Thread::running->removeManager(); return ret;}
    _Thread::safeDispatch();
    80005734:	fffff097          	auipc	ra,0xfffff
    80005738:	e4c080e7          	jalr	-436(ra) # 80004580 <_ZN7_Thread12safeDispatchEv>
    if (_Thread::running->kicked()) return 3;
    8000573c:	0000c797          	auipc	a5,0xc
    80005740:	8fc7b783          	ld	a5,-1796(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005744:	0007b503          	ld	a0,0(a5)
    80005748:	ffffe097          	auipc	ra,0xffffe
    8000574c:	394080e7          	jalr	916(ra) # 80003adc <_ZN7_Thread6kickedEv>
    80005750:	00050493          	mv	s1,a0
    80005754:	04050863          	beqz	a0,800057a4 <_ZN4_Sem6waitOREPS_S0_+0x194>
    80005758:	00300493          	li	s1,3
    8000575c:	0480006f          	j	800057a4 <_ZN4_Sem6waitOREPS_S0_+0x194>
    if (ret) { _Thread::running->removeManager(); return ret;}
    80005760:	0000c797          	auipc	a5,0xc
    80005764:	8d87b783          	ld	a5,-1832(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005768:	0007b503          	ld	a0,0(a5)
    8000576c:	fffff097          	auipc	ra,0xfffff
    80005770:	154080e7          	jalr	340(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    80005774:	0300006f          	j	800057a4 <_ZN4_Sem6waitOREPS_S0_+0x194>
    if (ret) { sem1->remove(_Thread::running);
    80005778:	0000c997          	auipc	s3,0xc
    8000577c:	8c09b983          	ld	s3,-1856(s3) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005780:	0009b583          	ld	a1,0(s3)
    80005784:	00090513          	mv	a0,s2
    80005788:	00000097          	auipc	ra,0x0
    8000578c:	c68080e7          	jalr	-920(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
        _Thread::running->removeManager(); return ret;}
    80005790:	0009b503          	ld	a0,0(s3)
    80005794:	fffff097          	auipc	ra,0xfffff
    80005798:	12c080e7          	jalr	300(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    8000579c:	0080006f          	j	800057a4 <_ZN4_Sem6waitOREPS_S0_+0x194>
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    800057a0:	00000493          	li	s1,0
    return 0;
}
    800057a4:	00048513          	mv	a0,s1
    800057a8:	02813083          	ld	ra,40(sp)
    800057ac:	02013403          	ld	s0,32(sp)
    800057b0:	01813483          	ld	s1,24(sp)
    800057b4:	01013903          	ld	s2,16(sp)
    800057b8:	00813983          	ld	s3,8(sp)
    800057bc:	03010113          	addi	sp,sp,48
    800057c0:	00008067          	ret
    if (!manager) return -1;
    800057c4:	fff00493          	li	s1,-1
    800057c8:	fddff06f          	j	800057a4 <_ZN4_Sem6waitOREPS_S0_+0x194>
    800057cc:	00050913          	mv	s2,a0
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    800057d0:	00048593          	mv	a1,s1
    800057d4:	0000c797          	auipc	a5,0xc
    800057d8:	8f47b783          	ld	a5,-1804(a5) # 800110c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
    800057dc:	0007b503          	ld	a0,0(a5)
    800057e0:	ffffc097          	auipc	ra,0xffffc
    800057e4:	cbc080e7          	jalr	-836(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
    800057e8:	00090513          	mv	a0,s2
    800057ec:	0000b097          	auipc	ra,0xb
    800057f0:	3fc080e7          	jalr	1020(ra) # 80010be8 <_Unwind_Resume>

00000000800057f4 <_ZN4_Sem10semWaitANDEPS_S0_>:
int _Sem::semWaitAND(sem_t sem1, sem_t sem2) {
    800057f4:	fd010113          	addi	sp,sp,-48
    800057f8:	02113423          	sd	ra,40(sp)
    800057fc:	02813023          	sd	s0,32(sp)
    80005800:	00913c23          	sd	s1,24(sp)
    80005804:	01213823          	sd	s2,16(sp)
    80005808:	01313423          	sd	s3,8(sp)
    8000580c:	01413023          	sd	s4,0(sp)
    80005810:	03010413          	addi	s0,sp,48
    80005814:	00050993          	mv	s3,a0
    80005818:	00058a13          	mv	s4,a1
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    8000581c:	0000c797          	auipc	a5,0xc
    80005820:	81c7b783          	ld	a5,-2020(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005824:	0007b503          	ld	a0,0(a5)
    80005828:	fffff097          	auipc	ra,0xfffff
    8000582c:	d34080e7          	jalr	-716(ra) # 8000455c <_ZN7_Thread13isInterruptedEv>
    80005830:	18051863          	bnez	a0,800059c0 <_ZN4_Sem10semWaitANDEPS_S0_+0x1cc>
    80005834:	00050493          	mv	s1,a0
    if (sem1->val > 0) { sem1->val--; sem1 = nullptr; }
    80005838:	0109a783          	lw	a5,16(s3)
    8000583c:	00078863          	beqz	a5,8000584c <_ZN4_Sem10semWaitANDEPS_S0_+0x58>
    80005840:	fff7879b          	addiw	a5,a5,-1
    80005844:	00f9a823          	sw	a5,16(s3)
    80005848:	00000993          	li	s3,0
    if (sem2->val > 0) { sem2->val--; sem2 = nullptr; }
    8000584c:	010a2783          	lw	a5,16(s4)
    80005850:	00078863          	beqz	a5,80005860 <_ZN4_Sem10semWaitANDEPS_S0_+0x6c>
    80005854:	fff7879b          	addiw	a5,a5,-1
    80005858:	00fa2823          	sw	a5,16(s4)
    8000585c:	00000a13          	li	s4,0
    if (!sem1 && !sem2) return 0;
    80005860:	04098863          	beqz	s3,800058b0 <_ZN4_Sem10semWaitANDEPS_S0_+0xbc>
        if (!cache) cache = kmem_cache_create("SemAND_manager Cache", sizeof(_SemANDManager), nullptr, nullptr);
    80005864:	0000c797          	auipc	a5,0xc
    80005868:	8747b783          	ld	a5,-1932(a5) # 800110d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
    8000586c:	0007b783          	ld	a5,0(a5)
    80005870:	04078463          	beqz	a5,800058b8 <_ZN4_Sem10semWaitANDEPS_S0_+0xc4>
        return kmem_cache_alloc(cache);
    80005874:	0000c797          	auipc	a5,0xc
    80005878:	8647b783          	ld	a5,-1948(a5) # 800110d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
    8000587c:	0007b503          	ld	a0,0(a5)
    80005880:	ffffc097          	auipc	ra,0xffffc
    80005884:	bf4080e7          	jalr	-1036(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
    80005888:	00050913          	mv	s2,a0
    _WaitManager* manager = new _SemANDManager(_Thread::running, sem1, sem2);
    8000588c:	04050c63          	beqz	a0,800058e4 <_ZN4_Sem10semWaitANDEPS_S0_+0xf0>
    80005890:	000a0693          	mv	a3,s4
    80005894:	00098613          	mv	a2,s3
    80005898:	0000b797          	auipc	a5,0xb
    8000589c:	7a07b783          	ld	a5,1952(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    800058a0:	0007b583          	ld	a1,0(a5)
    800058a4:	00002097          	auipc	ra,0x2
    800058a8:	36c080e7          	jalr	876(ra) # 80007c10 <_ZN14_SemANDManagerC1EP7_ThreadP4_SemS3_>
    800058ac:	0380006f          	j	800058e4 <_ZN4_Sem10semWaitANDEPS_S0_+0xf0>
    if (!sem1 && !sem2) return 0;
    800058b0:	fa0a1ae3          	bnez	s4,80005864 <_ZN4_Sem10semWaitANDEPS_S0_+0x70>
    800058b4:	1100006f          	j	800059c4 <_ZN4_Sem10semWaitANDEPS_S0_+0x1d0>
        if (!cache) cache = kmem_cache_create("SemAND_manager Cache", sizeof(_SemANDManager), nullptr, nullptr);
    800058b8:	00000693          	li	a3,0
    800058bc:	00000613          	li	a2,0
    800058c0:	02000593          	li	a1,32
    800058c4:	00006517          	auipc	a0,0x6
    800058c8:	b0450513          	addi	a0,a0,-1276 # 8000b3c8 <_ZN4_Mem11header_sizeE+0x60>
    800058cc:	ffffc097          	auipc	ra,0xffffc
    800058d0:	b58080e7          	jalr	-1192(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800058d4:	0000c797          	auipc	a5,0xc
    800058d8:	8047b783          	ld	a5,-2044(a5) # 800110d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
    800058dc:	00a7b023          	sd	a0,0(a5)
    800058e0:	f95ff06f          	j	80005874 <_ZN4_Sem10semWaitANDEPS_S0_+0x80>
    if (!manager) return -1;
    800058e4:	10090263          	beqz	s2,800059e8 <_ZN4_Sem10semWaitANDEPS_S0_+0x1f4>
    _Thread::running->setManager(manager);
    800058e8:	00090593          	mv	a1,s2
    800058ec:	0000b797          	auipc	a5,0xb
    800058f0:	74c7b783          	ld	a5,1868(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    800058f4:	0007b503          	ld	a0,0(a5)
    800058f8:	fffff097          	auipc	ra,0xfffff
    800058fc:	e50080e7          	jalr	-432(ra) # 80004748 <_ZN7_Thread10setManagerEP12_WaitManager>
    int ret = 0;
    if (sem1) ret = sem1->list.add(_Thread::running);
    80005900:	02098263          	beqz	s3,80005924 <_ZN4_Sem10semWaitANDEPS_S0_+0x130>
    80005904:	0000b797          	auipc	a5,0xb
    80005908:	7347b783          	ld	a5,1844(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000590c:	0007b583          	ld	a1,0(a5)
    80005910:	00098513          	mv	a0,s3
    80005914:	00001097          	auipc	ra,0x1
    80005918:	4a0080e7          	jalr	1184(ra) # 80006db4 <_ZN11_ThreadList3addEP7_Thread>
    8000591c:	00050493          	mv	s1,a0
    if (ret) { _Thread::running->removeManager(); return ret;}
    80005920:	04051e63          	bnez	a0,8000597c <_ZN4_Sem10semWaitANDEPS_S0_+0x188>
    if (sem2) ret = sem2->list.add(_Thread::running);
    80005924:	020a0063          	beqz	s4,80005944 <_ZN4_Sem10semWaitANDEPS_S0_+0x150>
    80005928:	0000b797          	auipc	a5,0xb
    8000592c:	7107b783          	ld	a5,1808(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005930:	0007b583          	ld	a1,0(a5)
    80005934:	000a0513          	mv	a0,s4
    80005938:	00001097          	auipc	ra,0x1
    8000593c:	47c080e7          	jalr	1148(ra) # 80006db4 <_ZN11_ThreadList3addEP7_Thread>
    80005940:	00050493          	mv	s1,a0
    if (ret) { if (sem1) sem1->remove(_Thread::running);
    80005944:	04048863          	beqz	s1,80005994 <_ZN4_Sem10semWaitANDEPS_S0_+0x1a0>
    80005948:	00098e63          	beqz	s3,80005964 <_ZN4_Sem10semWaitANDEPS_S0_+0x170>
    8000594c:	0000b797          	auipc	a5,0xb
    80005950:	6ec7b783          	ld	a5,1772(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005954:	0007b583          	ld	a1,0(a5)
    80005958:	00098513          	mv	a0,s3
    8000595c:	00000097          	auipc	ra,0x0
    80005960:	a94080e7          	jalr	-1388(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
        _Thread::running->removeManager(); return ret;}
    80005964:	0000b797          	auipc	a5,0xb
    80005968:	6d47b783          	ld	a5,1748(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000596c:	0007b503          	ld	a0,0(a5)
    80005970:	fffff097          	auipc	ra,0xfffff
    80005974:	f50080e7          	jalr	-176(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    80005978:	04c0006f          	j	800059c4 <_ZN4_Sem10semWaitANDEPS_S0_+0x1d0>
    if (ret) { _Thread::running->removeManager(); return ret;}
    8000597c:	0000b797          	auipc	a5,0xb
    80005980:	6bc7b783          	ld	a5,1724(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005984:	0007b503          	ld	a0,0(a5)
    80005988:	fffff097          	auipc	ra,0xfffff
    8000598c:	f38080e7          	jalr	-200(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    80005990:	0340006f          	j	800059c4 <_ZN4_Sem10semWaitANDEPS_S0_+0x1d0>
    _Thread::safeDispatch();
    80005994:	fffff097          	auipc	ra,0xfffff
    80005998:	bec080e7          	jalr	-1044(ra) # 80004580 <_ZN7_Thread12safeDispatchEv>
    if (_Thread::running->kicked()) return 3;
    8000599c:	0000b797          	auipc	a5,0xb
    800059a0:	69c7b783          	ld	a5,1692(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    800059a4:	0007b503          	ld	a0,0(a5)
    800059a8:	ffffe097          	auipc	ra,0xffffe
    800059ac:	134080e7          	jalr	308(ra) # 80003adc <_ZN7_Thread6kickedEv>
    800059b0:	00050493          	mv	s1,a0
    800059b4:	00050863          	beqz	a0,800059c4 <_ZN4_Sem10semWaitANDEPS_S0_+0x1d0>
    800059b8:	00300493          	li	s1,3
    800059bc:	0080006f          	j	800059c4 <_ZN4_Sem10semWaitANDEPS_S0_+0x1d0>
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    800059c0:	00000493          	li	s1,0
    return 0;
}
    800059c4:	00048513          	mv	a0,s1
    800059c8:	02813083          	ld	ra,40(sp)
    800059cc:	02013403          	ld	s0,32(sp)
    800059d0:	01813483          	ld	s1,24(sp)
    800059d4:	01013903          	ld	s2,16(sp)
    800059d8:	00813983          	ld	s3,8(sp)
    800059dc:	00013a03          	ld	s4,0(sp)
    800059e0:	03010113          	addi	sp,sp,48
    800059e4:	00008067          	ret
    if (!manager) return -1;
    800059e8:	fff00493          	li	s1,-1
    800059ec:	fd9ff06f          	j	800059c4 <_ZN4_Sem10semWaitANDEPS_S0_+0x1d0>
    800059f0:	00050493          	mv	s1,a0
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    800059f4:	00090593          	mv	a1,s2
    800059f8:	0000b797          	auipc	a5,0xb
    800059fc:	6e07b783          	ld	a5,1760(a5) # 800110d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
    80005a00:	0007b503          	ld	a0,0(a5)
    80005a04:	ffffc097          	auipc	ra,0xffffc
    80005a08:	a98080e7          	jalr	-1384(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
    80005a0c:	00048513          	mv	a0,s1
    80005a10:	0000b097          	auipc	ra,0xb
    80005a14:	1d8080e7          	jalr	472(ra) # 80010be8 <_Unwind_Resume>

0000000080005a18 <_ZN4_Sem14semWaitORLimitEPS_S0_m>:
int _Sem::semWaitORLimit(sem_t sem1, sem_t sem2, time_t limit) {
    80005a18:	fd010113          	addi	sp,sp,-48
    80005a1c:	02113423          	sd	ra,40(sp)
    80005a20:	02813023          	sd	s0,32(sp)
    80005a24:	00913c23          	sd	s1,24(sp)
    80005a28:	01213823          	sd	s2,16(sp)
    80005a2c:	01313423          	sd	s3,8(sp)
    80005a30:	01413023          	sd	s4,0(sp)
    80005a34:	03010413          	addi	s0,sp,48
    80005a38:	00050913          	mv	s2,a0
    80005a3c:	00058a13          	mv	s4,a1
    80005a40:	00060993          	mv	s3,a2
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    80005a44:	0000b797          	auipc	a5,0xb
    80005a48:	5f47b783          	ld	a5,1524(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005a4c:	0007b503          	ld	a0,0(a5)
    80005a50:	fffff097          	auipc	ra,0xfffff
    80005a54:	b0c080e7          	jalr	-1268(ra) # 8000455c <_ZN7_Thread13isInterruptedEv>
    80005a58:	1c051e63          	bnez	a0,80005c34 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x21c>
    80005a5c:	00050493          	mv	s1,a0
    if (sem1->val > 0) {sem1->val--; return 0;}
    80005a60:	01092783          	lw	a5,16(s2)
    80005a64:	00079c63          	bnez	a5,80005a7c <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x64>
    else if (sem2->val > 0) { sem2->val--; return 0;}
    80005a68:	010a2783          	lw	a5,16(s4)
    80005a6c:	00079e63          	bnez	a5,80005a88 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x70>
    if (!limit) return 1;
    80005a70:	02099263          	bnez	s3,80005a94 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x7c>
    80005a74:	00100493          	li	s1,1
    80005a78:	1c00006f          	j	80005c38 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x220>
    if (sem1->val > 0) {sem1->val--; return 0;}
    80005a7c:	fff7879b          	addiw	a5,a5,-1
    80005a80:	00f92823          	sw	a5,16(s2)
    80005a84:	1b40006f          	j	80005c38 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x220>
    else if (sem2->val > 0) { sem2->val--; return 0;}
    80005a88:	fff7879b          	addiw	a5,a5,-1
    80005a8c:	00fa2823          	sw	a5,16(s4)
    80005a90:	1a80006f          	j	80005c38 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x220>
class _SemORSleepManager : public _WaitManager {
public:
    _SemORSleepManager(thread_t my_thread, sem_t sem1, sem_t sem2);
    static kmem_cache_t* cache;
    void*  operator new(size_t size) {
        if (!cache) cache = kmem_cache_create("SemORSleep_manager Cache", sizeof(_SemORSleepManager), nullptr, nullptr);
    80005a94:	0000b797          	auipc	a5,0xb
    80005a98:	5ec7b783          	ld	a5,1516(a5) # 80011080 <_GLOBAL_OFFSET_TABLE_+0x80>
    80005a9c:	0007b783          	ld	a5,0(a5)
    80005aa0:	04078063          	beqz	a5,80005ae0 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0xc8>
        return kmem_cache_alloc(cache);
    80005aa4:	0000b797          	auipc	a5,0xb
    80005aa8:	5dc7b783          	ld	a5,1500(a5) # 80011080 <_GLOBAL_OFFSET_TABLE_+0x80>
    80005aac:	0007b503          	ld	a0,0(a5)
    80005ab0:	ffffc097          	auipc	ra,0xffffc
    80005ab4:	9c4080e7          	jalr	-1596(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
    80005ab8:	00050493          	mv	s1,a0
    _WaitManager* manager = new _SemORSleepManager(_Thread::running, sem1, sem2);
    80005abc:	04050863          	beqz	a0,80005b0c <_ZN4_Sem14semWaitORLimitEPS_S0_m+0xf4>
    80005ac0:	000a0693          	mv	a3,s4
    80005ac4:	00090613          	mv	a2,s2
    80005ac8:	0000b797          	auipc	a5,0xb
    80005acc:	5707b783          	ld	a5,1392(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005ad0:	0007b583          	ld	a1,0(a5)
    80005ad4:	00002097          	auipc	ra,0x2
    80005ad8:	23c080e7          	jalr	572(ra) # 80007d10 <_ZN18_SemORSleepManagerC1EP7_ThreadP4_SemS3_>
    80005adc:	0300006f          	j	80005b0c <_ZN4_Sem14semWaitORLimitEPS_S0_m+0xf4>
        if (!cache) cache = kmem_cache_create("SemORSleep_manager Cache", sizeof(_SemORSleepManager), nullptr, nullptr);
    80005ae0:	00000693          	li	a3,0
    80005ae4:	00000613          	li	a2,0
    80005ae8:	02000593          	li	a1,32
    80005aec:	00006517          	auipc	a0,0x6
    80005af0:	8f450513          	addi	a0,a0,-1804 # 8000b3e0 <_ZN4_Mem11header_sizeE+0x78>
    80005af4:	ffffc097          	auipc	ra,0xffffc
    80005af8:	930080e7          	jalr	-1744(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005afc:	0000b797          	auipc	a5,0xb
    80005b00:	5847b783          	ld	a5,1412(a5) # 80011080 <_GLOBAL_OFFSET_TABLE_+0x80>
    80005b04:	00a7b023          	sd	a0,0(a5)
    80005b08:	f9dff06f          	j	80005aa4 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x8c>
    if (!manager) return -1;
    80005b0c:	14048863          	beqz	s1,80005c5c <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x244>
    int ret = sem1->list.add(_Thread::running);
    80005b10:	0000b797          	auipc	a5,0xb
    80005b14:	5287b783          	ld	a5,1320(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005b18:	0007b583          	ld	a1,0(a5)
    80005b1c:	00090513          	mv	a0,s2
    80005b20:	00001097          	auipc	ra,0x1
    80005b24:	294080e7          	jalr	660(ra) # 80006db4 <_ZN11_ThreadList3addEP7_Thread>
    80005b28:	00050493          	mv	s1,a0
    if (ret) { _Thread::running->removeManager(); return ret;}
    80005b2c:	06051663          	bnez	a0,80005b98 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x180>
    ret = sem2->list.add(_Thread::running);
    80005b30:	0000b797          	auipc	a5,0xb
    80005b34:	5087b783          	ld	a5,1288(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005b38:	0007b583          	ld	a1,0(a5)
    80005b3c:	000a0513          	mv	a0,s4
    80005b40:	00001097          	auipc	ra,0x1
    80005b44:	274080e7          	jalr	628(ra) # 80006db4 <_ZN11_ThreadList3addEP7_Thread>
    80005b48:	00050493          	mv	s1,a0
    if (ret) { sem1->remove(_Thread::running);
    80005b4c:	06051263          	bnez	a0,80005bb0 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x198>
        _Thread::running->removeManager(); return ret;}
    ret = _Sleep::put(_Thread::running, limit);
    80005b50:	00098593          	mv	a1,s3
    80005b54:	0000b797          	auipc	a5,0xb
    80005b58:	4e47b783          	ld	a5,1252(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005b5c:	0007b503          	ld	a0,0(a5)
    80005b60:	ffffc097          	auipc	ra,0xffffc
    80005b64:	064080e7          	jalr	100(ra) # 80001bc4 <_ZN6_Sleep3putEP7_Threadm>
    80005b68:	00050493          	mv	s1,a0
    if (ret) {sem1->remove(_Thread::running); sem2->remove(_Thread::running);
    80005b6c:	06051663          	bnez	a0,80005bd8 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x1c0>
        _Thread::running->removeManager(); return ret;}
    _Thread::safeDispatch();
    80005b70:	fffff097          	auipc	ra,0xfffff
    80005b74:	a10080e7          	jalr	-1520(ra) # 80004580 <_ZN7_Thread12safeDispatchEv>
    if (_Thread::running->limitReached()) return 1;
    80005b78:	0000b797          	auipc	a5,0xb
    80005b7c:	4c07b783          	ld	a5,1216(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005b80:	0007b503          	ld	a0,0(a5)
    80005b84:	fffff097          	auipc	ra,0xfffff
    80005b88:	980080e7          	jalr	-1664(ra) # 80004504 <_ZN7_Thread12limitReachedEv>
    80005b8c:	08050263          	beqz	a0,80005c10 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x1f8>
    80005b90:	00100493          	li	s1,1
    80005b94:	0a40006f          	j	80005c38 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x220>
    if (ret) { _Thread::running->removeManager(); return ret;}
    80005b98:	0000b797          	auipc	a5,0xb
    80005b9c:	4a07b783          	ld	a5,1184(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005ba0:	0007b503          	ld	a0,0(a5)
    80005ba4:	fffff097          	auipc	ra,0xfffff
    80005ba8:	d1c080e7          	jalr	-740(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    80005bac:	08c0006f          	j	80005c38 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x220>
    if (ret) { sem1->remove(_Thread::running);
    80005bb0:	0000b997          	auipc	s3,0xb
    80005bb4:	4889b983          	ld	s3,1160(s3) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005bb8:	0009b583          	ld	a1,0(s3)
    80005bbc:	00090513          	mv	a0,s2
    80005bc0:	00000097          	auipc	ra,0x0
    80005bc4:	830080e7          	jalr	-2000(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
        _Thread::running->removeManager(); return ret;}
    80005bc8:	0009b503          	ld	a0,0(s3)
    80005bcc:	fffff097          	auipc	ra,0xfffff
    80005bd0:	cf4080e7          	jalr	-780(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    80005bd4:	0640006f          	j	80005c38 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x220>
    if (ret) {sem1->remove(_Thread::running); sem2->remove(_Thread::running);
    80005bd8:	0000b997          	auipc	s3,0xb
    80005bdc:	4609b983          	ld	s3,1120(s3) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005be0:	0009b583          	ld	a1,0(s3)
    80005be4:	00090513          	mv	a0,s2
    80005be8:	00000097          	auipc	ra,0x0
    80005bec:	808080e7          	jalr	-2040(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    80005bf0:	0009b583          	ld	a1,0(s3)
    80005bf4:	000a0513          	mv	a0,s4
    80005bf8:	fffff097          	auipc	ra,0xfffff
    80005bfc:	7f8080e7          	jalr	2040(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
        _Thread::running->removeManager(); return ret;}
    80005c00:	0009b503          	ld	a0,0(s3)
    80005c04:	fffff097          	auipc	ra,0xfffff
    80005c08:	cbc080e7          	jalr	-836(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    80005c0c:	02c0006f          	j	80005c38 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x220>
    if (_Thread::running->kicked()) return -3;
    80005c10:	0000b797          	auipc	a5,0xb
    80005c14:	4287b783          	ld	a5,1064(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005c18:	0007b503          	ld	a0,0(a5)
    80005c1c:	ffffe097          	auipc	ra,0xffffe
    80005c20:	ec0080e7          	jalr	-320(ra) # 80003adc <_ZN7_Thread6kickedEv>
    80005c24:	00050493          	mv	s1,a0
    80005c28:	00050863          	beqz	a0,80005c38 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x220>
    80005c2c:	ffd00493          	li	s1,-3
    80005c30:	0080006f          	j	80005c38 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x220>
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    80005c34:	00000493          	li	s1,0
    return 0;
}
    80005c38:	00048513          	mv	a0,s1
    80005c3c:	02813083          	ld	ra,40(sp)
    80005c40:	02013403          	ld	s0,32(sp)
    80005c44:	01813483          	ld	s1,24(sp)
    80005c48:	01013903          	ld	s2,16(sp)
    80005c4c:	00813983          	ld	s3,8(sp)
    80005c50:	00013a03          	ld	s4,0(sp)
    80005c54:	03010113          	addi	sp,sp,48
    80005c58:	00008067          	ret
    if (!manager) return -1;
    80005c5c:	fff00493          	li	s1,-1
    80005c60:	fd9ff06f          	j	80005c38 <_ZN4_Sem14semWaitORLimitEPS_S0_m+0x220>
    80005c64:	00050913          	mv	s2,a0
    }
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    80005c68:	00048593          	mv	a1,s1
    80005c6c:	0000b797          	auipc	a5,0xb
    80005c70:	4147b783          	ld	a5,1044(a5) # 80011080 <_GLOBAL_OFFSET_TABLE_+0x80>
    80005c74:	0007b503          	ld	a0,0(a5)
    80005c78:	ffffc097          	auipc	ra,0xffffc
    80005c7c:	824080e7          	jalr	-2012(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
    80005c80:	00090513          	mv	a0,s2
    80005c84:	0000b097          	auipc	ra,0xb
    80005c88:	f64080e7          	jalr	-156(ra) # 80010be8 <_Unwind_Resume>

0000000080005c8c <_ZN4_Sem15semWaitANDLimitEPS_S0_m>:
int _Sem::semWaitANDLimit(sem_t sem1, sem_t sem2, time_t limit) {
    80005c8c:	fc010113          	addi	sp,sp,-64
    80005c90:	02113c23          	sd	ra,56(sp)
    80005c94:	02813823          	sd	s0,48(sp)
    80005c98:	02913423          	sd	s1,40(sp)
    80005c9c:	03213023          	sd	s2,32(sp)
    80005ca0:	01313c23          	sd	s3,24(sp)
    80005ca4:	01413823          	sd	s4,16(sp)
    80005ca8:	01513423          	sd	s5,8(sp)
    80005cac:	04010413          	addi	s0,sp,64
    80005cb0:	00050913          	mv	s2,a0
    80005cb4:	00058993          	mv	s3,a1
    80005cb8:	00060a13          	mv	s4,a2
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    80005cbc:	0000b797          	auipc	a5,0xb
    80005cc0:	37c7b783          	ld	a5,892(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005cc4:	0007b503          	ld	a0,0(a5)
    80005cc8:	fffff097          	auipc	ra,0xfffff
    80005ccc:	894080e7          	jalr	-1900(ra) # 8000455c <_ZN7_Thread13isInterruptedEv>
    80005cd0:	20051a63          	bnez	a0,80005ee4 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x258>
    80005cd4:	00050493          	mv	s1,a0
    if (sem1->val > 0) { sem1->val--; sem1 = nullptr; }
    80005cd8:	01092783          	lw	a5,16(s2)
    80005cdc:	00078863          	beqz	a5,80005cec <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x60>
    80005ce0:	fff7879b          	addiw	a5,a5,-1
    80005ce4:	00f92823          	sw	a5,16(s2)
    80005ce8:	00000913          	li	s2,0
    if (sem2->val > 0) { sem2->val--; sem2 = nullptr; }
    80005cec:	0109a783          	lw	a5,16(s3)
    80005cf0:	00078863          	beqz	a5,80005d00 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x74>
    80005cf4:	fff7879b          	addiw	a5,a5,-1
    80005cf8:	00f9a823          	sw	a5,16(s3)
    80005cfc:	00000993          	li	s3,0
    if (!sem1 && !sem2) return 0;
    80005d00:	00090863          	beqz	s2,80005d10 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x84>
    if (!limit) return 1;
    80005d04:	000a1a63          	bnez	s4,80005d18 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x8c>
    80005d08:	00100493          	li	s1,1
    80005d0c:	1dc0006f          	j	80005ee8 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x25c>
    if (!sem1 && !sem2) return 0;
    80005d10:	fe099ae3          	bnez	s3,80005d04 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x78>
    80005d14:	1d40006f          	j	80005ee8 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x25c>
class _SemANDSleepManager : public _WaitManager {
public:
    _SemANDSleepManager(thread_t my_thread, sem_t sem1, sem_t sem2);
    static kmem_cache_t* cache;
    void*  operator new(size_t size) {
        if (!cache) cache = kmem_cache_create("SemANDSleep_manager Cache", sizeof(_SemANDSleepManager), nullptr, nullptr);
    80005d18:	0000b797          	auipc	a5,0xb
    80005d1c:	3987b783          	ld	a5,920(a5) # 800110b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80005d20:	0007b783          	ld	a5,0(a5)
    80005d24:	04078063          	beqz	a5,80005d64 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0xd8>
        return kmem_cache_alloc(cache);
    80005d28:	0000b797          	auipc	a5,0xb
    80005d2c:	3887b783          	ld	a5,904(a5) # 800110b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80005d30:	0007b503          	ld	a0,0(a5)
    80005d34:	ffffb097          	auipc	ra,0xffffb
    80005d38:	740080e7          	jalr	1856(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
    80005d3c:	00050a93          	mv	s5,a0
    _WaitManager* manager = new _SemANDSleepManager(_Thread::running, sem1, sem2);
    80005d40:	04050863          	beqz	a0,80005d90 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x104>
    80005d44:	00098693          	mv	a3,s3
    80005d48:	00090613          	mv	a2,s2
    80005d4c:	0000b797          	auipc	a5,0xb
    80005d50:	2ec7b783          	ld	a5,748(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005d54:	0007b583          	ld	a1,0(a5)
    80005d58:	00002097          	auipc	ra,0x2
    80005d5c:	018080e7          	jalr	24(ra) # 80007d70 <_ZN19_SemANDSleepManagerC1EP7_ThreadP4_SemS3_>
    80005d60:	0300006f          	j	80005d90 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x104>
        if (!cache) cache = kmem_cache_create("SemANDSleep_manager Cache", sizeof(_SemANDSleepManager), nullptr, nullptr);
    80005d64:	00000693          	li	a3,0
    80005d68:	00000613          	li	a2,0
    80005d6c:	02000593          	li	a1,32
    80005d70:	00005517          	auipc	a0,0x5
    80005d74:	69050513          	addi	a0,a0,1680 # 8000b400 <_ZN4_Mem11header_sizeE+0x98>
    80005d78:	ffffb097          	auipc	ra,0xffffb
    80005d7c:	6ac080e7          	jalr	1708(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80005d80:	0000b797          	auipc	a5,0xb
    80005d84:	3307b783          	ld	a5,816(a5) # 800110b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80005d88:	00a7b023          	sd	a0,0(a5)
    80005d8c:	f9dff06f          	j	80005d28 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x9c>
    if (!manager) return -1;
    80005d90:	180a8063          	beqz	s5,80005f10 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x284>
    int ret = 0;
    if (sem1) ret = sem1->list.add(_Thread::running);
    80005d94:	02090263          	beqz	s2,80005db8 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x12c>
    80005d98:	0000b797          	auipc	a5,0xb
    80005d9c:	2a07b783          	ld	a5,672(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005da0:	0007b583          	ld	a1,0(a5)
    80005da4:	00090513          	mv	a0,s2
    80005da8:	00001097          	auipc	ra,0x1
    80005dac:	00c080e7          	jalr	12(ra) # 80006db4 <_ZN11_ThreadList3addEP7_Thread>
    80005db0:	00050493          	mv	s1,a0
    if (ret) { _Thread::running->removeManager(); return ret;}
    80005db4:	04051e63          	bnez	a0,80005e10 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x184>
    if (sem2) ret = sem2->list.add(_Thread::running);
    80005db8:	02098063          	beqz	s3,80005dd8 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x14c>
    80005dbc:	0000b797          	auipc	a5,0xb
    80005dc0:	27c7b783          	ld	a5,636(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005dc4:	0007b583          	ld	a1,0(a5)
    80005dc8:	00098513          	mv	a0,s3
    80005dcc:	00001097          	auipc	ra,0x1
    80005dd0:	fe8080e7          	jalr	-24(ra) # 80006db4 <_ZN11_ThreadList3addEP7_Thread>
    80005dd4:	00050493          	mv	s1,a0
    if (ret) { if (sem1) sem1->remove(_Thread::running);
    80005dd8:	04048863          	beqz	s1,80005e28 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x19c>
    80005ddc:	00090e63          	beqz	s2,80005df8 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x16c>
    80005de0:	0000b797          	auipc	a5,0xb
    80005de4:	2587b783          	ld	a5,600(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005de8:	0007b583          	ld	a1,0(a5)
    80005dec:	00090513          	mv	a0,s2
    80005df0:	fffff097          	auipc	ra,0xfffff
    80005df4:	600080e7          	jalr	1536(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
        _Thread::running->removeManager(); return ret;}
    80005df8:	0000b797          	auipc	a5,0xb
    80005dfc:	2407b783          	ld	a5,576(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005e00:	0007b503          	ld	a0,0(a5)
    80005e04:	fffff097          	auipc	ra,0xfffff
    80005e08:	abc080e7          	jalr	-1348(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    80005e0c:	0dc0006f          	j	80005ee8 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x25c>
    if (ret) { _Thread::running->removeManager(); return ret;}
    80005e10:	0000b797          	auipc	a5,0xb
    80005e14:	2287b783          	ld	a5,552(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005e18:	0007b503          	ld	a0,0(a5)
    80005e1c:	fffff097          	auipc	ra,0xfffff
    80005e20:	aa4080e7          	jalr	-1372(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    80005e24:	0c40006f          	j	80005ee8 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x25c>
    ret = _Sleep::put(_Thread::running, limit);
    80005e28:	000a0593          	mv	a1,s4
    80005e2c:	0000b797          	auipc	a5,0xb
    80005e30:	20c7b783          	ld	a5,524(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005e34:	0007b503          	ld	a0,0(a5)
    80005e38:	ffffc097          	auipc	ra,0xffffc
    80005e3c:	d8c080e7          	jalr	-628(ra) # 80001bc4 <_ZN6_Sleep3putEP7_Threadm>
    80005e40:	00050493          	mv	s1,a0
    if (ret) { if (sem1) sem1->remove(_Thread::running); if (sem2) sem2->remove(_Thread::running);
    80005e44:	04050a63          	beqz	a0,80005e98 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x20c>
    80005e48:	00090e63          	beqz	s2,80005e64 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x1d8>
    80005e4c:	0000b797          	auipc	a5,0xb
    80005e50:	1ec7b783          	ld	a5,492(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005e54:	0007b583          	ld	a1,0(a5)
    80005e58:	00090513          	mv	a0,s2
    80005e5c:	fffff097          	auipc	ra,0xfffff
    80005e60:	594080e7          	jalr	1428(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    80005e64:	00098e63          	beqz	s3,80005e80 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x1f4>
    80005e68:	0000b797          	auipc	a5,0xb
    80005e6c:	1d07b783          	ld	a5,464(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005e70:	0007b583          	ld	a1,0(a5)
    80005e74:	00098513          	mv	a0,s3
    80005e78:	fffff097          	auipc	ra,0xfffff
    80005e7c:	578080e7          	jalr	1400(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
        _Thread::running->removeManager(); return ret;}
    80005e80:	0000b797          	auipc	a5,0xb
    80005e84:	1b87b783          	ld	a5,440(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005e88:	0007b503          	ld	a0,0(a5)
    80005e8c:	fffff097          	auipc	ra,0xfffff
    80005e90:	a34080e7          	jalr	-1484(ra) # 800048c0 <_ZN7_Thread13removeManagerEv>
    80005e94:	0540006f          	j	80005ee8 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x25c>
    _Thread::safeDispatch();
    80005e98:	ffffe097          	auipc	ra,0xffffe
    80005e9c:	6e8080e7          	jalr	1768(ra) # 80004580 <_ZN7_Thread12safeDispatchEv>
    if (_Thread::running->limitReached()) return 1;
    80005ea0:	0000b797          	auipc	a5,0xb
    80005ea4:	1987b783          	ld	a5,408(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005ea8:	0007b503          	ld	a0,0(a5)
    80005eac:	ffffe097          	auipc	ra,0xffffe
    80005eb0:	658080e7          	jalr	1624(ra) # 80004504 <_ZN7_Thread12limitReachedEv>
    80005eb4:	00050663          	beqz	a0,80005ec0 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x234>
    80005eb8:	00100493          	li	s1,1
    80005ebc:	02c0006f          	j	80005ee8 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x25c>
    if (_Thread::running->kicked()) return -3;
    80005ec0:	0000b797          	auipc	a5,0xb
    80005ec4:	1787b783          	ld	a5,376(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80005ec8:	0007b503          	ld	a0,0(a5)
    80005ecc:	ffffe097          	auipc	ra,0xffffe
    80005ed0:	c10080e7          	jalr	-1008(ra) # 80003adc <_ZN7_Thread6kickedEv>
    80005ed4:	00050493          	mv	s1,a0
    80005ed8:	00050863          	beqz	a0,80005ee8 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x25c>
    80005edc:	ffd00493          	li	s1,-3
    80005ee0:	0080006f          	j	80005ee8 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x25c>
    if (_Thread::running->isInterrupted()) return 0; //prekinuta nit se automatski izbacuje
    80005ee4:	00000493          	li	s1,0
    return 0;
    80005ee8:	00048513          	mv	a0,s1
    80005eec:	03813083          	ld	ra,56(sp)
    80005ef0:	03013403          	ld	s0,48(sp)
    80005ef4:	02813483          	ld	s1,40(sp)
    80005ef8:	02013903          	ld	s2,32(sp)
    80005efc:	01813983          	ld	s3,24(sp)
    80005f00:	01013a03          	ld	s4,16(sp)
    80005f04:	00813a83          	ld	s5,8(sp)
    80005f08:	04010113          	addi	sp,sp,64
    80005f0c:	00008067          	ret
    if (!manager) return -1;
    80005f10:	fff00493          	li	s1,-1
    80005f14:	fd5ff06f          	j	80005ee8 <_ZN4_Sem15semWaitANDLimitEPS_S0_m+0x25c>
    80005f18:	00050493          	mv	s1,a0
    }
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    80005f1c:	000a8593          	mv	a1,s5
    80005f20:	0000b797          	auipc	a5,0xb
    80005f24:	1907b783          	ld	a5,400(a5) # 800110b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
    80005f28:	0007b503          	ld	a0,0(a5)
    80005f2c:	ffffb097          	auipc	ra,0xffffb
    80005f30:	570080e7          	jalr	1392(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
    80005f34:	00048513          	mv	a0,s1
    80005f38:	0000b097          	auipc	ra,0xb
    80005f3c:	cb0080e7          	jalr	-848(ra) # 80010be8 <_Unwind_Resume>

0000000080005f40 <_ZN8_Console6putterEv>:
    }
    plic_complete(10);
    return;
}

void _Console::putter() {
    80005f40:	fe010113          	addi	sp,sp,-32
    80005f44:	00113c23          	sd	ra,24(sp)
    80005f48:	00813823          	sd	s0,16(sp)
    80005f4c:	00913423          	sd	s1,8(sp)
    80005f50:	02010413          	addi	s0,sp,32
    _SBIT::SIEdisable();
    80005f54:	ffffb097          	auipc	ra,0xffffb
    80005f58:	0b4080e7          	jalr	180(ra) # 80001008 <_ZN5_SBIT10SIEdisableEv>
    80005f5c:	0140006f          	j	80005f70 <_ZN8_Console6putterEv+0x30>

        while (true) {
            ready->wait();
            char status = *(char*)CONSOLE_STATUS;
            if (status & CONSOLE_TX_STATUS_BIT) {
                *(char *) CONSOLE_TX_DATA = c;
    80005f60:	0000b797          	auipc	a5,0xb
    80005f64:	0e07b783          	ld	a5,224(a5) # 80011040 <_GLOBAL_OFFSET_TABLE_+0x40>
    80005f68:	0007b783          	ld	a5,0(a5)
    80005f6c:	00978023          	sb	s1,0(a5)
        go->wait();
    80005f70:	0000a497          	auipc	s1,0xa
    80005f74:	b2048493          	addi	s1,s1,-1248 # 8000fa90 <_ZN8_Console2goE>
    80005f78:	0004b503          	ld	a0,0(s1)
    80005f7c:	fffff097          	auipc	ra,0xfffff
    80005f80:	1fc080e7          	jalr	508(ra) # 80005178 <_ZN4_Sem4waitEv>
        if (buffout->empty()) break;
    80005f84:	0084b503          	ld	a0,8(s1)
    80005f88:	00001097          	auipc	ra,0x1
    80005f8c:	3bc080e7          	jalr	956(ra) # 80007344 <_ZN7_Buffer5emptyEv>
    80005f90:	04051263          	bnez	a0,80005fd4 <_ZN8_Console6putterEv+0x94>
        char c = buffout->get();
    80005f94:	0000a517          	auipc	a0,0xa
    80005f98:	b0453503          	ld	a0,-1276(a0) # 8000fa98 <_ZN8_Console7buffoutE>
    80005f9c:	00001097          	auipc	ra,0x1
    80005fa0:	30c080e7          	jalr	780(ra) # 800072a8 <_ZN7_Buffer3getEv>
    80005fa4:	00050493          	mv	s1,a0
            ready->wait();
    80005fa8:	0000a517          	auipc	a0,0xa
    80005fac:	af853503          	ld	a0,-1288(a0) # 8000faa0 <_ZN8_Console5readyE>
    80005fb0:	fffff097          	auipc	ra,0xfffff
    80005fb4:	1c8080e7          	jalr	456(ra) # 80005178 <_ZN4_Sem4waitEv>
            char status = *(char*)CONSOLE_STATUS;
    80005fb8:	0000b797          	auipc	a5,0xb
    80005fbc:	0607b783          	ld	a5,96(a5) # 80011018 <_GLOBAL_OFFSET_TABLE_+0x18>
    80005fc0:	0007b783          	ld	a5,0(a5)
    80005fc4:	0007c783          	lbu	a5,0(a5)
            if (status & CONSOLE_TX_STATUS_BIT) {
    80005fc8:	0207f793          	andi	a5,a5,32
    80005fcc:	fc078ee3          	beqz	a5,80005fa8 <_ZN8_Console6putterEv+0x68>
    80005fd0:	f91ff06f          	j	80005f60 <_ZN8_Console6putterEv+0x20>
        for (int i = 0; i < 10; i++);
        _SBIT::SIEdisable();
        _SBIT::SSIEenable();*/
        //
    }
}
    80005fd4:	01813083          	ld	ra,24(sp)
    80005fd8:	01013403          	ld	s0,16(sp)
    80005fdc:	00813483          	ld	s1,8(sp)
    80005fe0:	02010113          	addi	sp,sp,32
    80005fe4:	00008067          	ret

0000000080005fe8 <_ZN8_Console4initEv>:
void _Console::init() {
    80005fe8:	fe010113          	addi	sp,sp,-32
    80005fec:	00113c23          	sd	ra,24(sp)
    80005ff0:	00813823          	sd	s0,16(sp)
    80005ff4:	00913423          	sd	s1,8(sp)
    80005ff8:	01213023          	sd	s2,0(sp)
    80005ffc:	02010413          	addi	s0,sp,32
    buffin = new _Buffer(INPUT_BUFFER_SIZE);
    80006000:	02800513          	li	a0,40
    80006004:	00001097          	auipc	ra,0x1
    80006008:	124080e7          	jalr	292(ra) # 80007128 <_ZN7_BuffernwEm>
    8000600c:	00050493          	mv	s1,a0
    80006010:	00050863          	beqz	a0,80006020 <_ZN8_Console4initEv+0x38>
    80006014:	3e800593          	li	a1,1000
    80006018:	00001097          	auipc	ra,0x1
    8000601c:	1a8080e7          	jalr	424(ra) # 800071c0 <_ZN7_BufferC1Ej>
    80006020:	0000a797          	auipc	a5,0xa
    80006024:	a897b423          	sd	s1,-1400(a5) # 8000faa8 <_ZN8_Console6buffinE>
    buffout = new _Buffer(OUTPUT_BUFFER_SIZE);
    80006028:	02800513          	li	a0,40
    8000602c:	00001097          	auipc	ra,0x1
    80006030:	0fc080e7          	jalr	252(ra) # 80007128 <_ZN7_BuffernwEm>
    80006034:	00050493          	mv	s1,a0
    80006038:	00050863          	beqz	a0,80006048 <_ZN8_Console4initEv+0x60>
    8000603c:	3e800593          	li	a1,1000
    80006040:	00001097          	auipc	ra,0x1
    80006044:	180080e7          	jalr	384(ra) # 800071c0 <_ZN7_BufferC1Ej>
    80006048:	0000a797          	auipc	a5,0xa
    8000604c:	a497b823          	sd	s1,-1456(a5) # 8000fa98 <_ZN8_Console7buffoutE>
    ready = new _Sem(0);
    80006050:	01800513          	li	a0,24
    80006054:	fffff097          	auipc	ra,0xfffff
    80006058:	f7c080e7          	jalr	-132(ra) # 80004fd0 <_ZN4_SemnwEm>
    8000605c:	00050493          	mv	s1,a0
    80006060:	00050863          	beqz	a0,80006070 <_ZN8_Console4initEv+0x88>
    80006064:	00000593          	li	a1,0
    80006068:	fffff097          	auipc	ra,0xfffff
    8000606c:	000080e7          	jalr	ra # 80005068 <_ZN4_SemC1Ej>
    80006070:	0000a797          	auipc	a5,0xa
    80006074:	a297b823          	sd	s1,-1488(a5) # 8000faa0 <_ZN8_Console5readyE>
    go = new _Sem(0);
    80006078:	01800513          	li	a0,24
    8000607c:	fffff097          	auipc	ra,0xfffff
    80006080:	f54080e7          	jalr	-172(ra) # 80004fd0 <_ZN4_SemnwEm>
    80006084:	00050493          	mv	s1,a0
    80006088:	00050863          	beqz	a0,80006098 <_ZN8_Console4initEv+0xb0>
    8000608c:	00000593          	li	a1,0
    80006090:	fffff097          	auipc	ra,0xfffff
    80006094:	fd8080e7          	jalr	-40(ra) # 80005068 <_ZN4_SemC1Ej>
    80006098:	0000a797          	auipc	a5,0xa
    8000609c:	9e97bc23          	sd	s1,-1544(a5) # 8000fa90 <_ZN8_Console2goE>
    _Thread::create(nullptr, &putter, _Thread::TOP_PRIORITY, _Thread::SET_START);
    800060a0:	00100693          	li	a3,1
    800060a4:	3e800613          	li	a2,1000
    800060a8:	00000597          	auipc	a1,0x0
    800060ac:	e9858593          	addi	a1,a1,-360 # 80005f40 <_ZN8_Console6putterEv>
    800060b0:	00000513          	li	a0,0
    800060b4:	ffffe097          	auipc	ra,0xffffe
    800060b8:	3f8080e7          	jalr	1016(ra) # 800044ac <_ZN7_Thread6createEPPS_PFvvEii>
}
    800060bc:	01813083          	ld	ra,24(sp)
    800060c0:	01013403          	ld	s0,16(sp)
    800060c4:	00813483          	ld	s1,8(sp)
    800060c8:	00013903          	ld	s2,0(sp)
    800060cc:	02010113          	addi	sp,sp,32
    800060d0:	00008067          	ret
    800060d4:	00050913          	mv	s2,a0
    buffin = new _Buffer(INPUT_BUFFER_SIZE);
    800060d8:	00048513          	mv	a0,s1
    800060dc:	00001097          	auipc	ra,0x1
    800060e0:	0b0080e7          	jalr	176(ra) # 8000718c <_ZN7_BufferdlEPv>
    800060e4:	00090513          	mv	a0,s2
    800060e8:	0000b097          	auipc	ra,0xb
    800060ec:	b00080e7          	jalr	-1280(ra) # 80010be8 <_Unwind_Resume>
    800060f0:	00050913          	mv	s2,a0
    buffout = new _Buffer(OUTPUT_BUFFER_SIZE);
    800060f4:	00048513          	mv	a0,s1
    800060f8:	00001097          	auipc	ra,0x1
    800060fc:	094080e7          	jalr	148(ra) # 8000718c <_ZN7_BufferdlEPv>
    80006100:	00090513          	mv	a0,s2
    80006104:	0000b097          	auipc	ra,0xb
    80006108:	ae4080e7          	jalr	-1308(ra) # 80010be8 <_Unwind_Resume>
    8000610c:	00050913          	mv	s2,a0
    ready = new _Sem(0);
    80006110:	00048513          	mv	a0,s1
    80006114:	fffff097          	auipc	ra,0xfffff
    80006118:	f20080e7          	jalr	-224(ra) # 80005034 <_ZN4_SemdlEPv>
    8000611c:	00090513          	mv	a0,s2
    80006120:	0000b097          	auipc	ra,0xb
    80006124:	ac8080e7          	jalr	-1336(ra) # 80010be8 <_Unwind_Resume>
    80006128:	00050913          	mv	s2,a0
    go = new _Sem(0);
    8000612c:	00048513          	mv	a0,s1
    80006130:	fffff097          	auipc	ra,0xfffff
    80006134:	f04080e7          	jalr	-252(ra) # 80005034 <_ZN4_SemdlEPv>
    80006138:	00090513          	mv	a0,s2
    8000613c:	0000b097          	auipc	ra,0xb
    80006140:	aac080e7          	jalr	-1364(ra) # 80010be8 <_Unwind_Resume>

0000000080006144 <_ZN8_Console4putcEc>:
void _Console::putc(char c) {
    80006144:	fe010113          	addi	sp,sp,-32
    80006148:	00113c23          	sd	ra,24(sp)
    8000614c:	00813823          	sd	s0,16(sp)
    80006150:	00913423          	sd	s1,8(sp)
    80006154:	02010413          	addi	s0,sp,32
    80006158:	00050593          	mv	a1,a0
    buffout->put(c);
    8000615c:	0000a497          	auipc	s1,0xa
    80006160:	93448493          	addi	s1,s1,-1740 # 8000fa90 <_ZN8_Console2goE>
    80006164:	0084b503          	ld	a0,8(s1)
    80006168:	00001097          	auipc	ra,0x1
    8000616c:	0cc080e7          	jalr	204(ra) # 80007234 <_ZN7_Buffer3putEc>
    go->signal();
    80006170:	0004b503          	ld	a0,0(s1)
    80006174:	fffff097          	auipc	ra,0xfffff
    80006178:	18c080e7          	jalr	396(ra) # 80005300 <_ZN4_Sem6signalEv>
    _Thread::dispatch();
    8000617c:	ffffe097          	auipc	ra,0xffffe
    80006180:	91c080e7          	jalr	-1764(ra) # 80003a98 <_ZN7_Thread8dispatchEv>
}
    80006184:	01813083          	ld	ra,24(sp)
    80006188:	01013403          	ld	s0,16(sp)
    8000618c:	00813483          	ld	s1,8(sp)
    80006190:	02010113          	addi	sp,sp,32
    80006194:	00008067          	ret

0000000080006198 <_ZN8_Console4getcEv>:
char _Console::getc() {
    80006198:	ff010113          	addi	sp,sp,-16
    8000619c:	00113423          	sd	ra,8(sp)
    800061a0:	00813023          	sd	s0,0(sp)
    800061a4:	01010413          	addi	s0,sp,16
    return buffin->get();
    800061a8:	0000a517          	auipc	a0,0xa
    800061ac:	90053503          	ld	a0,-1792(a0) # 8000faa8 <_ZN8_Console6buffinE>
    800061b0:	00001097          	auipc	ra,0x1
    800061b4:	0f8080e7          	jalr	248(ra) # 800072a8 <_ZN7_Buffer3getEv>
}
    800061b8:	00813083          	ld	ra,8(sp)
    800061bc:	00013403          	ld	s0,0(sp)
    800061c0:	01010113          	addi	sp,sp,16
    800061c4:	00008067          	ret

00000000800061c8 <_ZN8_Console6handleEv>:
void _Console::handle() {
    800061c8:	ff010113          	addi	sp,sp,-16
    800061cc:	00113423          	sd	ra,8(sp)
    800061d0:	00813023          	sd	s0,0(sp)
    800061d4:	01010413          	addi	s0,sp,16
        if (buffin->full()) break;//kod punog bafera se samo odlaze ucitavanje
    800061d8:	0000a517          	auipc	a0,0xa
    800061dc:	8d053503          	ld	a0,-1840(a0) # 8000faa8 <_ZN8_Console6buffinE>
    800061e0:	00001097          	auipc	ra,0x1
    800061e4:	140080e7          	jalr	320(ra) # 80007320 <_ZN7_Buffer4fullEv>
    800061e8:	04051063          	bnez	a0,80006228 <_ZN8_Console6handleEv+0x60>
        status = *(char*)CONSOLE_STATUS;
    800061ec:	0000b797          	auipc	a5,0xb
    800061f0:	e2c7b783          	ld	a5,-468(a5) # 80011018 <_GLOBAL_OFFSET_TABLE_+0x18>
    800061f4:	0007b783          	ld	a5,0(a5)
    800061f8:	0007c783          	lbu	a5,0(a5)
        if (!(status & CONSOLE_RX_STATUS_BIT)) break;
    800061fc:	0017f793          	andi	a5,a5,1
    80006200:	02078463          	beqz	a5,80006228 <_ZN8_Console6handleEv+0x60>
        char c = *(char*)CONSOLE_RX_DATA;
    80006204:	0000b797          	auipc	a5,0xb
    80006208:	e0c7b783          	ld	a5,-500(a5) # 80011010 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000620c:	0007b783          	ld	a5,0(a5)
        buffin->put(c);
    80006210:	0007c583          	lbu	a1,0(a5)
    80006214:	0000a517          	auipc	a0,0xa
    80006218:	89453503          	ld	a0,-1900(a0) # 8000faa8 <_ZN8_Console6buffinE>
    8000621c:	00001097          	auipc	ra,0x1
    80006220:	018080e7          	jalr	24(ra) # 80007234 <_ZN7_Buffer3putEc>
    }
    80006224:	fb5ff06f          	j	800061d8 <_ZN8_Console6handleEv+0x10>
    status = *(char*)CONSOLE_STATUS;
    80006228:	0000b797          	auipc	a5,0xb
    8000622c:	df07b783          	ld	a5,-528(a5) # 80011018 <_GLOBAL_OFFSET_TABLE_+0x18>
    80006230:	0007b783          	ld	a5,0(a5)
    80006234:	0007c783          	lbu	a5,0(a5)
    if (status & CONSOLE_TX_STATUS_BIT) {
    80006238:	0207f793          	andi	a5,a5,32
    8000623c:	02079063          	bnez	a5,8000625c <_ZN8_Console6handleEv+0x94>
    plic_complete(10);
    80006240:	00a00513          	li	a0,10
    80006244:	00002097          	auipc	ra,0x2
    80006248:	7a8080e7          	jalr	1960(ra) # 800089ec <plic_complete>
}
    8000624c:	00813083          	ld	ra,8(sp)
    80006250:	00013403          	ld	s0,0(sp)
    80006254:	01010113          	addi	sp,sp,16
    80006258:	00008067          	ret
        ready->signalEvent();
    8000625c:	0000a517          	auipc	a0,0xa
    80006260:	84453503          	ld	a0,-1980(a0) # 8000faa0 <_ZN8_Console5readyE>
    80006264:	fffff097          	auipc	ra,0xfffff
    80006268:	100080e7          	jalr	256(ra) # 80005364 <_ZN4_Sem11signalEventEv>
    8000626c:	fd5ff06f          	j	80006240 <_ZN8_Console6handleEv+0x78>

0000000080006270 <_ZN8_Console11printStringEPKc>:

void _Console::printString(const char* s) {
    80006270:	fe010113          	addi	sp,sp,-32
    80006274:	00113c23          	sd	ra,24(sp)
    80006278:	00813823          	sd	s0,16(sp)
    8000627c:	00913423          	sd	s1,8(sp)
    80006280:	01213023          	sd	s2,0(sp)
    80006284:	02010413          	addi	s0,sp,32
    80006288:	00050493          	mv	s1,a0
    while (*s) {
    8000628c:	0004c583          	lbu	a1,0(s1)
    80006290:	02058663          	beqz	a1,800062bc <_ZN8_Console11printStringEPKc+0x4c>
        buffout->put(*s++);
    80006294:	00148493          	addi	s1,s1,1
    80006298:	00009917          	auipc	s2,0x9
    8000629c:	7f890913          	addi	s2,s2,2040 # 8000fa90 <_ZN8_Console2goE>
    800062a0:	00893503          	ld	a0,8(s2)
    800062a4:	00001097          	auipc	ra,0x1
    800062a8:	f90080e7          	jalr	-112(ra) # 80007234 <_ZN7_Buffer3putEc>
        go->signal();
    800062ac:	00093503          	ld	a0,0(s2)
    800062b0:	fffff097          	auipc	ra,0xfffff
    800062b4:	050080e7          	jalr	80(ra) # 80005300 <_ZN4_Sem6signalEv>
    while (*s) {
    800062b8:	fd5ff06f          	j	8000628c <_ZN8_Console11printStringEPKc+0x1c>
    }
    _Thread::dispatch();
    800062bc:	ffffd097          	auipc	ra,0xffffd
    800062c0:	7dc080e7          	jalr	2012(ra) # 80003a98 <_ZN7_Thread8dispatchEv>
}
    800062c4:	01813083          	ld	ra,24(sp)
    800062c8:	01013403          	ld	s0,16(sp)
    800062cc:	00813483          	ld	s1,8(sp)
    800062d0:	00013903          	ld	s2,0(sp)
    800062d4:	02010113          	addi	sp,sp,32
    800062d8:	00008067          	ret

00000000800062dc <_ZN8_Console8printNumEm>:
void _Console::printNum(uint64 x) {
    800062dc:	fb010113          	addi	sp,sp,-80
    800062e0:	04113423          	sd	ra,72(sp)
    800062e4:	04813023          	sd	s0,64(sp)
    800062e8:	05010413          	addi	s0,sp,80
    if (x == 0) {putc('0'); return; }
    800062ec:	02050863          	beqz	a0,8000631c <_ZN8_Console8printNumEm+0x40>
    char buff[30];
    int i = 0;
    800062f0:	00000793          	li	a5,0
    while (x) {
    800062f4:	02050c63          	beqz	a0,8000632c <_ZN8_Console8printNumEm+0x50>
        buff[i++] = '0' + x % 10;
    800062f8:	00a00693          	li	a3,10
    800062fc:	02d57733          	remu	a4,a0,a3
    80006300:	03070713          	addi	a4,a4,48
    80006304:	ff040613          	addi	a2,s0,-16
    80006308:	00f60633          	add	a2,a2,a5
    8000630c:	fee60023          	sb	a4,-32(a2)
        x /= 10;
    80006310:	02d55533          	divu	a0,a0,a3
        buff[i++] = '0' + x % 10;
    80006314:	0017879b          	addiw	a5,a5,1
    while (x) {
    80006318:	fddff06f          	j	800062f4 <_ZN8_Console8printNumEm+0x18>
    if (x == 0) {putc('0'); return; }
    8000631c:	03000513          	li	a0,48
    80006320:	00000097          	auipc	ra,0x0
    80006324:	e24080e7          	jalr	-476(ra) # 80006144 <_ZN8_Console4putcEc>
    80006328:	04c0006f          	j	80006374 <_ZN8_Console8printNumEm+0x98>
    }
    char buff2[31]; int j = 0;
    8000632c:	00000713          	li	a4,0
    80006330:	0240006f          	j	80006354 <_ZN8_Console8printNumEm+0x78>
    while (i--) {
        buff2[j++] = buff[i];
    80006334:	ff040793          	addi	a5,s0,-16
    80006338:	00d787b3          	add	a5,a5,a3
    8000633c:	fe07c603          	lbu	a2,-32(a5)
    80006340:	ff040793          	addi	a5,s0,-16
    80006344:	00e787b3          	add	a5,a5,a4
    80006348:	fcc78023          	sb	a2,-64(a5)
    8000634c:	0017071b          	addiw	a4,a4,1
    while (i--) {
    80006350:	00068793          	mv	a5,a3
    80006354:	fff7869b          	addiw	a3,a5,-1
    80006358:	fc079ee3          	bnez	a5,80006334 <_ZN8_Console8printNumEm+0x58>
    }
    buff2[j] = '\0';
    8000635c:	ff040793          	addi	a5,s0,-16
    80006360:	00e78733          	add	a4,a5,a4
    80006364:	fc070023          	sb	zero,-64(a4)
    printString(buff2);
    80006368:	fb040513          	addi	a0,s0,-80
    8000636c:	00000097          	auipc	ra,0x0
    80006370:	f04080e7          	jalr	-252(ra) # 80006270 <_ZN8_Console11printStringEPKc>
};
    80006374:	04813083          	ld	ra,72(sp)
    80006378:	04013403          	ld	s0,64(sp)
    8000637c:	05010113          	addi	sp,sp,80
    80006380:	00008067          	ret

0000000080006384 <_ZN10_BuddyNode4nextEv>:
const unsigned _BuddyNode::DATA_LEN = sizeof(data_t) * 8;
const data_t _BuddyNode::M_ACTIVE = 1 << (DATA_LEN - 1); //1000..0
const data_t _BuddyNode::M_LEAF = 1 << (DATA_LEN - 2); //0100..0
const data_t _BuddyNode::M_FREE = 1 << (DATA_LEN - 3); //0010..0
const data_t _BuddyNode::NEXT = ~(M_ACTIVE | M_LEAF | M_FREE); //00011..1
int _BuddyNode::next() {
    80006384:	ff010113          	addi	sp,sp,-16
    80006388:	00813423          	sd	s0,8(sp)
    8000638c:	01010413          	addi	s0,sp,16
    data_t ret = data & NEXT;
    80006390:	00052503          	lw	a0,0(a0)
    80006394:	200007b7          	lui	a5,0x20000
    80006398:	fff78793          	addi	a5,a5,-1 # 1fffffff <_entry-0x60000001>
    8000639c:	00f57533          	and	a0,a0,a5
    if (ret == NEXT) {
    800063a0:	00f50a63          	beq	a0,a5,800063b4 <_ZN10_BuddyNode4nextEv+0x30>
        return -1;
    }
    else return ret;
    800063a4:	0005051b          	sext.w	a0,a0
}
    800063a8:	00813403          	ld	s0,8(sp)
    800063ac:	01010113          	addi	sp,sp,16
    800063b0:	00008067          	ret
        return -1;
    800063b4:	fff00513          	li	a0,-1
    800063b8:	ff1ff06f          	j	800063a8 <_ZN10_BuddyNode4nextEv+0x24>

00000000800063bc <_ZN10_BuddyNode7setNextEi>:
void _BuddyNode::setNext(int next) {
    800063bc:	ff010113          	addi	sp,sp,-16
    800063c0:	00813423          	sd	s0,8(sp)
    800063c4:	01010413          	addi	s0,sp,16
    data_t tmp;
    if (next == -1) tmp = NEXT;
    800063c8:	fff00793          	li	a5,-1
    800063cc:	02f58a63          	beq	a1,a5,80006400 <_ZN10_BuddyNode7setNextEi+0x44>
    else tmp = (data_t)next & NEXT; //ovde treba paziti da svi indeksi mogu da stanu u tip data_t bez najvisa 3 bita, i u skladu sa tim treba odabrati tip data_t (unsigned short/int/long)
    800063d0:	200007b7          	lui	a5,0x20000
    800063d4:	fff78793          	addi	a5,a5,-1 # 1fffffff <_entry-0x60000001>
    800063d8:	00f5f7b3          	and	a5,a1,a5
    data &= ~NEXT;
    800063dc:	00052583          	lw	a1,0(a0)
    800063e0:	e0000737          	lui	a4,0xe0000
    800063e4:	00e5f5b3          	and	a1,a1,a4
    800063e8:	0005859b          	sext.w	a1,a1
    data |= tmp;
    800063ec:	00f5e5b3          	or	a1,a1,a5
    800063f0:	00b52023          	sw	a1,0(a0)
}
    800063f4:	00813403          	ld	s0,8(sp)
    800063f8:	01010113          	addi	sp,sp,16
    800063fc:	00008067          	ret
    if (next == -1) tmp = NEXT;
    80006400:	200005b7          	lui	a1,0x20000
    80006404:	fff58793          	addi	a5,a1,-1 # 1fffffff <_entry-0x60000001>
    80006408:	fd5ff06f          	j	800063dc <_ZN10_BuddyNode7setNextEi+0x20>

000000008000640c <_ZN10_BuddyNode10printStateEv>:
void _BuddyNode::printState() {
    8000640c:	ff010113          	addi	sp,sp,-16
    80006410:	00113423          	sd	ra,8(sp)
    80006414:	00813023          	sd	s0,0(sp)
    80006418:	01010413          	addi	s0,sp,16
    static const unsigned DATA_LEN;
    static const data_t M_ACTIVE;
    static const data_t M_LEAF;
    static const data_t M_FREE;
    static const data_t NEXT;
    bool isActive() { return data & M_ACTIVE; }
    8000641c:	00052783          	lw	a5,0(a0)
    80006420:	0007871b          	sext.w	a4,a5
    void setFresh() { setActive(); setLeaf(); setFree(); } //111
    bool isFresh() { return isActive() && isLeaf() && isFree(); }
    void setOut() { clearActive(); clearLeaf(); clearFree(); } //000
    bool isOut() { return !isActive() && !isLeaf() && !isFree(); }
    void setSplit() { setActive(); clearLeaf(); clearFree(); } //100
    bool isSplit() { return isActive() && !isLeaf() && !isFree(); }
    80006424:	0207c463          	bltz	a5,8000644c <_ZN10_BuddyNode10printStateEv+0x40>
    void setAllocated() { setActive(); setLeaf(); clearFree(); } //110
    bool isAllocated() { return isActive() && isLeaf() && !isFree(); }
    80006428:	04074a63          	bltz	a4,8000647c <_ZN10_BuddyNode10printStateEv+0x70>
    bool isFresh() { return isActive() && isLeaf() && isFree(); }
    8000642c:	08074063          	bltz	a4,800064ac <_ZN10_BuddyNode10printStateEv+0xa0>
    if (isSplit())  _Console::putc('+');
    else if (isAllocated()) _Console::putc('#');
    else if (isFresh()) _Console::putc('o');
    else _Console::putc(' ');
    80006430:	02000513          	li	a0,32
    80006434:	00000097          	auipc	ra,0x0
    80006438:	d10080e7          	jalr	-752(ra) # 80006144 <_ZN8_Console4putcEc>
}
    8000643c:	00813083          	ld	ra,8(sp)
    80006440:	00013403          	ld	s0,0(sp)
    80006444:	01010113          	addi	sp,sp,16
    80006448:	00008067          	ret
    bool isLeaf() { return data & M_LEAF; }
    8000644c:	400006b7          	lui	a3,0x40000
    80006450:	00d7f6b3          	and	a3,a5,a3
    80006454:	0006869b          	sext.w	a3,a3
    bool isSplit() { return isActive() && !isLeaf() && !isFree(); }
    80006458:	fc0698e3          	bnez	a3,80006428 <_ZN10_BuddyNode10printStateEv+0x1c>
    bool isFree() { return data & M_FREE; }
    8000645c:	200006b7          	lui	a3,0x20000
    80006460:	00d7f6b3          	and	a3,a5,a3
    80006464:	0006869b          	sext.w	a3,a3
    bool isSplit() { return isActive() && !isLeaf() && !isFree(); }
    80006468:	fc0690e3          	bnez	a3,80006428 <_ZN10_BuddyNode10printStateEv+0x1c>
    if (isSplit())  _Console::putc('+');
    8000646c:	02b00513          	li	a0,43
    80006470:	00000097          	auipc	ra,0x0
    80006474:	cd4080e7          	jalr	-812(ra) # 80006144 <_ZN8_Console4putcEc>
    80006478:	fc5ff06f          	j	8000643c <_ZN10_BuddyNode10printStateEv+0x30>
    bool isLeaf() { return data & M_LEAF; }
    8000647c:	400006b7          	lui	a3,0x40000
    80006480:	00d7f6b3          	and	a3,a5,a3
    80006484:	0006869b          	sext.w	a3,a3
    bool isAllocated() { return isActive() && isLeaf() && !isFree(); }
    80006488:	fa0682e3          	beqz	a3,8000642c <_ZN10_BuddyNode10printStateEv+0x20>
    bool isFree() { return data & M_FREE; }
    8000648c:	200006b7          	lui	a3,0x20000
    80006490:	00d7f6b3          	and	a3,a5,a3
    80006494:	0006869b          	sext.w	a3,a3
    bool isAllocated() { return isActive() && isLeaf() && !isFree(); }
    80006498:	f8069ae3          	bnez	a3,8000642c <_ZN10_BuddyNode10printStateEv+0x20>
    else if (isAllocated()) _Console::putc('#');
    8000649c:	02300513          	li	a0,35
    800064a0:	00000097          	auipc	ra,0x0
    800064a4:	ca4080e7          	jalr	-860(ra) # 80006144 <_ZN8_Console4putcEc>
    800064a8:	f95ff06f          	j	8000643c <_ZN10_BuddyNode10printStateEv+0x30>
    bool isLeaf() { return data & M_LEAF; }
    800064ac:	40000737          	lui	a4,0x40000
    800064b0:	00e7f733          	and	a4,a5,a4
    800064b4:	0007071b          	sext.w	a4,a4
    bool isFresh() { return isActive() && isLeaf() && isFree(); }
    800064b8:	f6070ce3          	beqz	a4,80006430 <_ZN10_BuddyNode10printStateEv+0x24>
    bool isFree() { return data & M_FREE; }
    800064bc:	20000737          	lui	a4,0x20000
    800064c0:	00e7f7b3          	and	a5,a5,a4
    800064c4:	0007879b          	sext.w	a5,a5
    bool isFresh() { return isActive() && isLeaf() && isFree(); }
    800064c8:	f60784e3          	beqz	a5,80006430 <_ZN10_BuddyNode10printStateEv+0x24>
    else if (isFresh()) _Console::putc('o');
    800064cc:	06f00513          	li	a0,111
    800064d0:	00000097          	auipc	ra,0x0
    800064d4:	c74080e7          	jalr	-908(ra) # 80006144 <_ZN8_Console4putcEc>
    800064d8:	f65ff06f          	j	8000643c <_ZN10_BuddyNode10printStateEv+0x30>

00000000800064dc <_ZN10_BuddyTree9calcLevelEm>:

int _BuddyTree::calcLevel(size_t size) {
    800064dc:	ff010113          	addi	sp,sp,-16
    800064e0:	00813423          	sd	s0,8(sp)
    800064e4:	01010413          	addi	s0,sp,16
    //racuna stepen bloka koji treba alocirati kako bi se dobilo size memorije
    int t = (size + blockSize - 1) / blockSize; //broj osnovnih blokova koji pokriva datu velicinu
    800064e8:	02853783          	ld	a5,40(a0)
    800064ec:	00b78733          	add	a4,a5,a1
    800064f0:	fff70713          	addi	a4,a4,-1 # 1fffffff <_entry-0x60000001>
    800064f4:	02f75733          	divu	a4,a4,a5
    800064f8:	0007071b          	sext.w	a4,a4
    int pow = 0;
    int num = 1;
    800064fc:	00100793          	li	a5,1
    int pow = 0;
    80006500:	00000513          	li	a0,0
    while (num < t) num <<= 1, pow++;
    80006504:	00e7d863          	bge	a5,a4,80006514 <_ZN10_BuddyTree9calcLevelEm+0x38>
    80006508:	0017979b          	slliw	a5,a5,0x1
    8000650c:	0015051b          	addiw	a0,a0,1
    80006510:	ff5ff06f          	j	80006504 <_ZN10_BuddyTree9calcLevelEm+0x28>
    return pow;
}
    80006514:	00813403          	ld	s0,8(sp)
    80006518:	01010113          	addi	sp,sp,16
    8000651c:	00008067          	ret

0000000080006520 <_ZN10_BuddyTree9calcLevelEi>:
int _BuddyTree::calcLevel(int n) {
    80006520:	ff010113          	addi	sp,sp,-16
    80006524:	00813423          	sd	s0,8(sp)
    80006528:	01010413          	addi	s0,sp,16
    //racuna stepen bloka na osnovu polozaja u linearizovanom stablu
    int d = 0;
    int tmp = (n + 1) >> 1;
    8000652c:	0015859b          	addiw	a1,a1,1
    80006530:	4015d59b          	sraiw	a1,a1,0x1
    int d = 0;
    80006534:	00000793          	li	a5,0
    while (tmp) d++, tmp >>= 1;
    80006538:	00058863          	beqz	a1,80006548 <_ZN10_BuddyTree9calcLevelEi+0x28>
    8000653c:	0017879b          	addiw	a5,a5,1
    80006540:	4015d59b          	sraiw	a1,a1,0x1
    80006544:	ff5ff06f          	j	80006538 <_ZN10_BuddyTree9calcLevelEi+0x18>
    return pow - d;
    80006548:	02452503          	lw	a0,36(a0)
}
    8000654c:	40f5053b          	subw	a0,a0,a5
    80006550:	00813403          	ld	s0,8(sp)
    80006554:	01010113          	addi	sp,sp,16
    80006558:	00008067          	ret

000000008000655c <_ZN10_BuddyTree5splitEi>:
void _BuddyTree::split(int level) {
    //uzima prvi slobodan cvor sa nivoa level, deli ga na dva, azurira stanje u stablu, kao i u listama
    if (level == 0 || lists[level] == -1) return; //greska
    8000655c:	12058a63          	beqz	a1,80006690 <_ZN10_BuddyTree5splitEi+0x134>
void _BuddyTree::split(int level) {
    80006560:	fc010113          	addi	sp,sp,-64
    80006564:	02113c23          	sd	ra,56(sp)
    80006568:	02813823          	sd	s0,48(sp)
    8000656c:	02913423          	sd	s1,40(sp)
    80006570:	03213023          	sd	s2,32(sp)
    80006574:	01313c23          	sd	s3,24(sp)
    80006578:	01413823          	sd	s4,16(sp)
    8000657c:	01513423          	sd	s5,8(sp)
    80006580:	04010413          	addi	s0,sp,64
    80006584:	00050913          	mv	s2,a0
    if (level == 0 || lists[level] == -1) return; //greska
    80006588:	00853783          	ld	a5,8(a0)
    8000658c:	00259493          	slli	s1,a1,0x2
    80006590:	009787b3          	add	a5,a5,s1
    80006594:	0007a983          	lw	s3,0(a5)
    80006598:	fff00793          	li	a5,-1
    8000659c:	0cf98863          	beq	s3,a5,8000666c <_ZN10_BuddyTree5splitEi+0x110>
    int node = lists[level];
    arr[node].setSplit();
    800065a0:	00053703          	ld	a4,0(a0)
    800065a4:	00299613          	slli	a2,s3,0x2
    800065a8:	00c70733          	add	a4,a4,a2
    void setActive() { data |= M_ACTIVE; }
    800065ac:	00072783          	lw	a5,0(a4)
    void clearFree() { data &= ~M_FREE; }
    800065b0:	a00006b7          	lui	a3,0xa0000
    800065b4:	fff68693          	addi	a3,a3,-1 # ffffffff9fffffff <end+0xffffffff1ffebc6f>
    800065b8:	00d7f7b3          	and	a5,a5,a3
    800065bc:	800006b7          	lui	a3,0x80000
    800065c0:	00d7e7b3          	or	a5,a5,a3
    800065c4:	00f72023          	sw	a5,0(a4)
    lists[level] = arr[node].next(); //izbacuje se iz liste
    800065c8:	00053503          	ld	a0,0(a0)
    800065cc:	00893a03          	ld	s4,8(s2)
    800065d0:	009a0a33          	add	s4,s4,s1
    800065d4:	00c50533          	add	a0,a0,a2
    800065d8:	00000097          	auipc	ra,0x0
    800065dc:	dac080e7          	jalr	-596(ra) # 80006384 <_ZN10_BuddyNode4nextEv>
    800065e0:	00aa2023          	sw	a0,0(s4)
        //racuna koliko memorije zauzimaju dodatne strukture za datu velicinu i broj blokova (linearizovano stablo i liste)
        return (2 * blockNum - 1) * (sizeof(_BuddyNode)) + (pow + 1) * sizeof(int);
    }
    int calcLevel(size_t size); //racuna stepen bloka koji treba alocirati kako bi se dobilo size memorije
    int calcLevel(int n); //racuna stepen bloka na osnovu polozaja u linearizovanom stablu
    int left(int node) { return (2 * node + 1); }
    800065e4:	00199a1b          	slliw	s4,s3,0x1
    800065e8:	001a0a1b          	addiw	s4,s4,1
    800065ec:	000a0a9b          	sext.w	s5,s4
    int right(int node) { return (2 * node + 2); }
    800065f0:	0019899b          	addiw	s3,s3,1
    800065f4:	0019999b          	slliw	s3,s3,0x1
    int l = left(node), r = right(node);
    arr[l].setFresh(); arr[r].setFresh(); //dodati su u stablo kao slobodni listovi
    800065f8:	00093783          	ld	a5,0(s2)
    800065fc:	002a9a93          	slli	s5,s5,0x2
    80006600:	015787b3          	add	a5,a5,s5
    void setActive() { data |= M_ACTIVE; }
    80006604:	0007a683          	lw	a3,0(a5)
    void setFree() { data |= M_FREE; }
    80006608:	e0000637          	lui	a2,0xe0000
    8000660c:	00c6e6b3          	or	a3,a3,a2
    80006610:	00d7a023          	sw	a3,0(a5)
    80006614:	00093783          	ld	a5,0(s2)
    80006618:	00299693          	slli	a3,s3,0x2
    8000661c:	00d787b3          	add	a5,a5,a3
    void setActive() { data |= M_ACTIVE; }
    80006620:	0007a703          	lw	a4,0(a5)
    void setFree() { data |= M_FREE; }
    80006624:	00c76733          	or	a4,a4,a2
    80006628:	00e7a023          	sw	a4,0(a5)
    arr[r].setNext(lists[level - 1]);
    8000662c:	00093503          	ld	a0,0(s2)
    80006630:	00893783          	ld	a5,8(s2)
    80006634:	ffc48493          	addi	s1,s1,-4
    80006638:	009787b3          	add	a5,a5,s1
    8000663c:	0007a583          	lw	a1,0(a5)
    80006640:	00d50533          	add	a0,a0,a3
    80006644:	00000097          	auipc	ra,0x0
    80006648:	d78080e7          	jalr	-648(ra) # 800063bc <_ZN10_BuddyNode7setNextEi>
    arr[l].setNext(r);
    8000664c:	00093503          	ld	a0,0(s2)
    80006650:	00098593          	mv	a1,s3
    80006654:	01550533          	add	a0,a0,s5
    80006658:	00000097          	auipc	ra,0x0
    8000665c:	d64080e7          	jalr	-668(ra) # 800063bc <_ZN10_BuddyNode7setNextEi>
    lists[level - 1] = l; //dodati su u listu
    80006660:	00893583          	ld	a1,8(s2)
    80006664:	009584b3          	add	s1,a1,s1
    80006668:	0144a023          	sw	s4,0(s1)
}
    8000666c:	03813083          	ld	ra,56(sp)
    80006670:	03013403          	ld	s0,48(sp)
    80006674:	02813483          	ld	s1,40(sp)
    80006678:	02013903          	ld	s2,32(sp)
    8000667c:	01813983          	ld	s3,24(sp)
    80006680:	01013a03          	ld	s4,16(sp)
    80006684:	00813a83          	ld	s5,8(sp)
    80006688:	04010113          	addi	sp,sp,64
    8000668c:	00008067          	ret
    80006690:	00008067          	ret

0000000080006694 <_ZN10_BuddyTree11calcAddressEii>:
void* _BuddyTree::calcAddress(int node, int level) {
    80006694:	ff010113          	addi	sp,sp,-16
    80006698:	00813423          	sd	s0,8(sp)
    8000669c:	01010413          	addi	s0,sp,16
    //racuna adresu bloka koji je predstavljen cvorom node u linearizovanom stablu
    int p = pow - level;
    800066a0:	02452783          	lw	a5,36(a0)
    800066a4:	40c7873b          	subw	a4,a5,a2
    //racunam 2^p - 1 sto je broj cvorova na prethodnim nivoima, kao i indeks prvog cvor na tom nivou
    int low = (1 << p) - 1;
    800066a8:	00100793          	li	a5,1
    800066ac:	00e797bb          	sllw	a5,a5,a4
    800066b0:	fff7879b          	addiw	a5,a5,-1
    //racunam velicinu bloka na nivou level kao blockSize * 2^level
    size_t size = blockSize << level;
    800066b4:	02853703          	ld	a4,40(a0)
    800066b8:	00c71633          	sll	a2,a4,a2
    int ord = node - low;
    800066bc:	40f585bb          	subw	a1,a1,a5
    return ((char*)start + ord * size);
    800066c0:	01053503          	ld	a0,16(a0)
    800066c4:	02c585b3          	mul	a1,a1,a2
}
    800066c8:	00b50533          	add	a0,a0,a1
    800066cc:	00813403          	ld	s0,8(sp)
    800066d0:	01010113          	addi	sp,sp,16
    800066d4:	00008067          	ret

00000000800066d8 <_ZN10_BuddyTree8findNodeEPv>:
int _BuddyTree::findNode(void* ptr) {
    800066d8:	ff010113          	addi	sp,sp,-16
    800066dc:	00813423          	sd	s0,8(sp)
    800066e0:	01010413          	addi	s0,sp,16
    800066e4:	00050713          	mv	a4,a0
    size_t span = (char*)ptr - (char*)start;
    800066e8:	01053783          	ld	a5,16(a0)
    800066ec:	40f585b3          	sub	a1,a1,a5
    int ord = span / blockSize;
    800066f0:	02853783          	ld	a5,40(a0)
    800066f4:	02f5d533          	divu	a0,a1,a5
    800066f8:	0005051b          	sext.w	a0,a0
    if (ord * blockSize != span) return -1; //ako adresa nije poravnata na ceo broj blokova
    800066fc:	02a787b3          	mul	a5,a5,a0
    80006700:	06b79463          	bne	a5,a1,80006768 <_ZN10_BuddyTree8findNodeEPv+0x90>
    //Pronalazimo cvor koji odgovara datoj adresu u najnizem nivou
    int node = (1 << pow) - 1 + ord;
    80006704:	02472683          	lw	a3,36(a4)
    80006708:	00100793          	li	a5,1
    8000670c:	00d797bb          	sllw	a5,a5,a3
    80006710:	fff7879b          	addiw	a5,a5,-1
    80006714:	00a7853b          	addw	a0,a5,a0
    while (1) {
        if (!arr[node].isOut()) return node;
    80006718:	00073783          	ld	a5,0(a4)
    8000671c:	00251693          	slli	a3,a0,0x2
    80006720:	00d787b3          	add	a5,a5,a3
    bool isActive() { return data & M_ACTIVE; }
    80006724:	0007a783          	lw	a5,0(a5)
    bool isOut() { return !isActive() && !isLeaf() && !isFree(); }
    80006728:	0407c263          	bltz	a5,8000676c <_ZN10_BuddyTree8findNodeEPv+0x94>
    bool isLeaf() { return data & M_LEAF; }
    8000672c:	400006b7          	lui	a3,0x40000
    80006730:	00d7f6b3          	and	a3,a5,a3
    80006734:	0006869b          	sext.w	a3,a3
    bool isOut() { return !isActive() && !isLeaf() && !isFree(); }
    80006738:	02069a63          	bnez	a3,8000676c <_ZN10_BuddyTree8findNodeEPv+0x94>
    bool isFree() { return data & M_FREE; }
    8000673c:	200006b7          	lui	a3,0x20000
    80006740:	00d7f7b3          	and	a5,a5,a3
    80006744:	0007879b          	sext.w	a5,a5
    bool isOut() { return !isActive() && !isLeaf() && !isFree(); }
    80006748:	02079263          	bnez	a5,8000676c <_ZN10_BuddyTree8findNodeEPv+0x94>
        if (!(node & 1)) return -1; //ako je desni potomak, onda dalji preci nemaju istu adresu, a takodje je tu ukljucen i slucaj korena
    8000674c:	00157793          	andi	a5,a0,1
    80006750:	02078463          	beqz	a5,80006778 <_ZN10_BuddyTree8findNodeEPv+0xa0>
    int parent(int node) { return (node - 1) / 2; }
    80006754:	fff5079b          	addiw	a5,a0,-1
    80006758:	01f7d51b          	srliw	a0,a5,0x1f
    8000675c:	00f5053b          	addw	a0,a0,a5
    80006760:	4015551b          	sraiw	a0,a0,0x1
        if (!arr[node].isOut()) return node;
    80006764:	fb5ff06f          	j	80006718 <_ZN10_BuddyTree8findNodeEPv+0x40>
    if (ord * blockSize != span) return -1; //ako adresa nije poravnata na ceo broj blokova
    80006768:	fff00513          	li	a0,-1
        node = parent(node);
    }
    return -1;
}
    8000676c:	00813403          	ld	s0,8(sp)
    80006770:	01010113          	addi	sp,sp,16
    80006774:	00008067          	ret
        if (!(node & 1)) return -1; //ako je desni potomak, onda dalji preci nemaju istu adresu, a takodje je tu ukljucen i slucaj korena
    80006778:	fff00513          	li	a0,-1
    8000677c:	ff1ff06f          	j	8000676c <_ZN10_BuddyTree8findNodeEPv+0x94>

0000000080006780 <_ZN10_BuddyTreeC1EPvmm>:
//Potrebno je u datom prostoru alocirati niz od 2*blockNum buddyNode-ova, kao i log(blockNum) + 1 pokazivac u vidu int-a
_BuddyTree::_BuddyTree(void* heapEnd, size_t blockSize, uint64 alignMask) {
    80006780:	fe010113          	addi	sp,sp,-32
    80006784:	00113c23          	sd	ra,24(sp)
    80006788:	00813823          	sd	s0,16(sp)
    8000678c:	00913423          	sd	s1,8(sp)
    80006790:	01213023          	sd	s2,0(sp)
    80006794:	02010413          	addi	s0,sp,32
    80006798:	00050493          	mv	s1,a0
     * nakon toga sledi niz od (pow + 1) pokazivaca (tj. integera koji predstavljaju indekse u stablu)
     * nakon toga se preskace do sledeceg pocetka nove stranica kako bi blokovi bili pravnati (na osnovu alignMask)
     * odatle (start) pa sve do end je memorija za alokaciju
     * nealociran deo (od end do heapEnd) moze se koristiti za druge stvari (van buddyTree-a)
     */
    this->blockSize = blockSize;
    8000679c:	02c53423          	sd	a2,40(a0)
    //racunanje maksimalnog broj blokova
    blockNum = 1, pow = 0;
    800067a0:	00100793          	li	a5,1
    800067a4:	02f52023          	sw	a5,32(a0)
    800067a8:	02052223          	sw	zero,36(a0)
    while (true) {
        size_t extra = extraMemoryNeeded(blockNum, pow);
    800067ac:	0204a503          	lw	a0,32(s1)
    800067b0:	0244ae03          	lw	t3,36(s1)
        return (2 * blockNum - 1) * (sizeof(_BuddyNode)) + (pow + 1) * sizeof(int);
    800067b4:	0015189b          	slliw	a7,a0,0x1
    800067b8:	fff8879b          	addiw	a5,a7,-1
    800067bc:	001e081b          	addiw	a6,t3,1
    800067c0:	0008071b          	sext.w	a4,a6
    800067c4:	00e787b3          	add	a5,a5,a4
    800067c8:	00279793          	slli	a5,a5,0x2
        uint64 heapStart = (uint64)((char*)(this + 1) + extra);
    800067cc:	03078793          	addi	a5,a5,48
    800067d0:	00f487b3          	add	a5,s1,a5
        heapStart = (heapStart + alignMask) & ~alignMask;
    800067d4:	00d787b3          	add	a5,a5,a3
    800067d8:	fff6c313          	not	t1,a3
    800067dc:	0067f7b3          	and	a5,a5,t1
        if (heapStart + (uint64)blockNum * blockSize > (uint64)heapEnd) break;
    800067e0:	02c50733          	mul	a4,a0,a2
    800067e4:	00f707b3          	add	a5,a4,a5
    800067e8:	00f5e863          	bltu	a1,a5,800067f8 <_ZN10_BuddyTreeC1EPvmm+0x78>
        blockNum *= 2; pow++;
    800067ec:	0314a023          	sw	a7,32(s1)
    800067f0:	0304a223          	sw	a6,36(s1)
    }
    800067f4:	fb9ff06f          	j	800067ac <_ZN10_BuddyTreeC1EPvmm+0x2c>
    blockNum /= 2, pow--;
    800067f8:	01f5579b          	srliw	a5,a0,0x1f
    800067fc:	00a7853b          	addw	a0,a5,a0
    80006800:	4015551b          	sraiw	a0,a0,0x1
    80006804:	0005059b          	sext.w	a1,a0
    80006808:	02a4a023          	sw	a0,32(s1)
    8000680c:	fffe0e1b          	addiw	t3,t3,-1
    80006810:	000e071b          	sext.w	a4,t3
    80006814:	03c4a223          	sw	t3,36(s1)
    arr = (_BuddyNode*)(this + 1);
    80006818:	03048793          	addi	a5,s1,48
    8000681c:	00f4b023          	sd	a5,0(s1)
    lists = (int*)(arr + 2 * blockNum - 1);
    80006820:	0015151b          	slliw	a0,a0,0x1
    80006824:	00251513          	slli	a0,a0,0x2
    80006828:	ffc50513          	addi	a0,a0,-4
    8000682c:	00a78533          	add	a0,a5,a0
    80006830:	00a4b423          	sd	a0,8(s1)
    start = (void*)(((uint64)(lists + pow + 1) + alignMask) & ~alignMask);
    80006834:	00170793          	addi	a5,a4,1
    80006838:	00279793          	slli	a5,a5,0x2
    8000683c:	00f50533          	add	a0,a0,a5
    80006840:	00d506b3          	add	a3,a0,a3
    80006844:	00d37333          	and	t1,t1,a3
    80006848:	0064b823          	sd	t1,16(s1)
    end = (char*)start + blockNum * blockSize;
    8000684c:	02c58633          	mul	a2,a1,a2
    80006850:	00c30333          	add	t1,t1,a2
    80006854:	0064bc23          	sd	t1,24(s1)
    //inizijalizacija stabla i lista
    for (int i = 0; i < 2 * blockNum - 1; i++) new (arr + i) _BuddyNode();
    80006858:	00000913          	li	s2,0
    8000685c:	0080006f          	j	80006864 <_ZN10_BuddyTreeC1EPvmm+0xe4>
    80006860:	0019091b          	addiw	s2,s2,1
    80006864:	0204a783          	lw	a5,32(s1)
    80006868:	0017979b          	slliw	a5,a5,0x1
    8000686c:	fff7879b          	addiw	a5,a5,-1
    80006870:	02f95c63          	bge	s2,a5,800068a8 <_ZN10_BuddyTreeC1EPvmm+0x128>
    80006874:	0004b583          	ld	a1,0(s1)
    80006878:	00291793          	slli	a5,s2,0x2
    8000687c:	00f585b3          	add	a1,a1,a5
    80006880:	00400513          	li	a0,4
    80006884:	ffffb097          	auipc	ra,0xffffb
    80006888:	7a8080e7          	jalr	1960(ra) # 8000202c <_ZnwmPv>
    8000688c:	fc050ae3          	beqz	a0,80006860 <_ZN10_BuddyTreeC1EPvmm+0xe0>
    void clearActive() { data &= ~M_ACTIVE; }
    80006890:	00052783          	lw	a5,0(a0)
    void clearFree() { data &= ~M_FREE; }
    80006894:	20000737          	lui	a4,0x20000
    80006898:	fff70713          	addi	a4,a4,-1 # 1fffffff <_entry-0x60000001>
    8000689c:	00e7f7b3          	and	a5,a5,a4
    800068a0:	00f52023          	sw	a5,0(a0)
    800068a4:	fbdff06f          	j	80006860 <_ZN10_BuddyTreeC1EPvmm+0xe0>
    arr[0].setFresh(); arr[0].setNext(-1);
    800068a8:	0004b703          	ld	a4,0(s1)
    void setActive() { data |= M_ACTIVE; }
    800068ac:	00072783          	lw	a5,0(a4)
    void setFree() { data |= M_FREE; }
    800068b0:	e00006b7          	lui	a3,0xe0000
    800068b4:	00d7e7b3          	or	a5,a5,a3
    800068b8:	00f72023          	sw	a5,0(a4)
    800068bc:	fff00593          	li	a1,-1
    800068c0:	0004b503          	ld	a0,0(s1)
    800068c4:	00000097          	auipc	ra,0x0
    800068c8:	af8080e7          	jalr	-1288(ra) # 800063bc <_ZN10_BuddyNode7setNextEi>
    for (int i = 0; i < pow; i++) lists[i] = -1;
    800068cc:	00000793          	li	a5,0
    800068d0:	0244a703          	lw	a4,36(s1)
    800068d4:	02e7d063          	bge	a5,a4,800068f4 <_ZN10_BuddyTreeC1EPvmm+0x174>
    800068d8:	0084b703          	ld	a4,8(s1)
    800068dc:	00279693          	slli	a3,a5,0x2
    800068e0:	00d70733          	add	a4,a4,a3
    800068e4:	fff00693          	li	a3,-1
    800068e8:	00d72023          	sw	a3,0(a4)
    800068ec:	0017879b          	addiw	a5,a5,1
    800068f0:	fe1ff06f          	j	800068d0 <_ZN10_BuddyTreeC1EPvmm+0x150>
    lists[pow] = 0;
    800068f4:	0084b783          	ld	a5,8(s1)
    800068f8:	00271713          	slli	a4,a4,0x2
    800068fc:	00e78733          	add	a4,a5,a4
    80006900:	00072023          	sw	zero,0(a4)
}
    80006904:	01813083          	ld	ra,24(sp)
    80006908:	01013403          	ld	s0,16(sp)
    8000690c:	00813483          	ld	s1,8(sp)
    80006910:	00013903          	ld	s2,0(sp)
    80006914:	02010113          	addi	sp,sp,32
    80006918:	00008067          	ret

000000008000691c <_ZN10_BuddyTree10allocBlockEi>:
void* _BuddyTree::alloc(size_t size) {
    //alocira blok na osnovu zadate velicine
    int level = calcLevel(size);
    return allocBlock(level);
}
void* _BuddyTree::allocBlock(int level) {
    8000691c:	fc010113          	addi	sp,sp,-64
    80006920:	02113c23          	sd	ra,56(sp)
    80006924:	02813823          	sd	s0,48(sp)
    80006928:	02913423          	sd	s1,40(sp)
    8000692c:	03213023          	sd	s2,32(sp)
    80006930:	01313c23          	sd	s3,24(sp)
    80006934:	01413823          	sd	s4,16(sp)
    80006938:	01513423          	sd	s5,8(sp)
    8000693c:	04010413          	addi	s0,sp,64
    80006940:	00050913          	mv	s2,a0
    80006944:	00058993          	mv	s3,a1
    //alocira blok stepena level
    int curlvl = level;
    80006948:	00058493          	mv	s1,a1
    while (curlvl <= pow && lists[curlvl] == -1) {
    8000694c:	02492703          	lw	a4,36(s2)
    80006950:	02974263          	blt	a4,s1,80006974 <_ZN10_BuddyTree10allocBlockEi+0x58>
    80006954:	00893783          	ld	a5,8(s2)
    80006958:	00249693          	slli	a3,s1,0x2
    8000695c:	00d787b3          	add	a5,a5,a3
    80006960:	0007a683          	lw	a3,0(a5)
    80006964:	fff00793          	li	a5,-1
    80006968:	00f69663          	bne	a3,a5,80006974 <_ZN10_BuddyTree10allocBlockEi+0x58>
        curlvl++;
    8000696c:	0014849b          	addiw	s1,s1,1
    while (curlvl <= pow && lists[curlvl] == -1) {
    80006970:	fddff06f          	j	8000694c <_ZN10_BuddyTree10allocBlockEi+0x30>
    }
    if (curlvl > pow) return nullptr;
    80006974:	0a974c63          	blt	a4,s1,80006a2c <_ZN10_BuddyTree10allocBlockEi+0x110>

    while (curlvl > level) {
    80006978:	0099de63          	bge	s3,s1,80006994 <_ZN10_BuddyTree10allocBlockEi+0x78>
        split(curlvl);
    8000697c:	00048593          	mv	a1,s1
    80006980:	00090513          	mv	a0,s2
    80006984:	00000097          	auipc	ra,0x0
    80006988:	bd8080e7          	jalr	-1064(ra) # 8000655c <_ZN10_BuddyTree5splitEi>
        curlvl--;
    8000698c:	fff4849b          	addiw	s1,s1,-1
    while (curlvl > level) {
    80006990:	fe9ff06f          	j	80006978 <_ZN10_BuddyTree10allocBlockEi+0x5c>
    }

    int ret = lists[level];
    80006994:	00893483          	ld	s1,8(s2)
    80006998:	00299793          	slli	a5,s3,0x2
    8000699c:	00f484b3          	add	s1,s1,a5
    800069a0:	0004aa03          	lw	s4,0(s1)
    lists[level] = arr[ret].next();
    800069a4:	00093503          	ld	a0,0(s2)
    800069a8:	002a1a93          	slli	s5,s4,0x2
    800069ac:	01550533          	add	a0,a0,s5
    800069b0:	00000097          	auipc	ra,0x0
    800069b4:	9d4080e7          	jalr	-1580(ra) # 80006384 <_ZN10_BuddyNode4nextEv>
    800069b8:	00a4a023          	sw	a0,0(s1)
    arr[ret].setNext(-1);
    800069bc:	00093503          	ld	a0,0(s2)
    800069c0:	fff00593          	li	a1,-1
    800069c4:	01550533          	add	a0,a0,s5
    800069c8:	00000097          	auipc	ra,0x0
    800069cc:	9f4080e7          	jalr	-1548(ra) # 800063bc <_ZN10_BuddyNode7setNextEi>
    arr[ret].setAllocated();
    800069d0:	00093703          	ld	a4,0(s2)
    800069d4:	01570733          	add	a4,a4,s5
    void setActive() { data |= M_ACTIVE; }
    800069d8:	00072783          	lw	a5,0(a4)
    void clearFree() { data &= ~M_FREE; }
    800069dc:	e00006b7          	lui	a3,0xe0000
    800069e0:	fff68693          	addi	a3,a3,-1 # ffffffffdfffffff <end+0xffffffff5ffebc6f>
    800069e4:	00d7f7b3          	and	a5,a5,a3
    800069e8:	c00006b7          	lui	a3,0xc0000
    800069ec:	00d7e7b3          	or	a5,a5,a3
    800069f0:	00f72023          	sw	a5,0(a4)
    return calcAddress(ret, level);
    800069f4:	00098613          	mv	a2,s3
    800069f8:	000a0593          	mv	a1,s4
    800069fc:	00090513          	mv	a0,s2
    80006a00:	00000097          	auipc	ra,0x0
    80006a04:	c94080e7          	jalr	-876(ra) # 80006694 <_ZN10_BuddyTree11calcAddressEii>
}
    80006a08:	03813083          	ld	ra,56(sp)
    80006a0c:	03013403          	ld	s0,48(sp)
    80006a10:	02813483          	ld	s1,40(sp)
    80006a14:	02013903          	ld	s2,32(sp)
    80006a18:	01813983          	ld	s3,24(sp)
    80006a1c:	01013a03          	ld	s4,16(sp)
    80006a20:	00813a83          	ld	s5,8(sp)
    80006a24:	04010113          	addi	sp,sp,64
    80006a28:	00008067          	ret
    if (curlvl > pow) return nullptr;
    80006a2c:	00000513          	li	a0,0
    80006a30:	fd9ff06f          	j	80006a08 <_ZN10_BuddyTree10allocBlockEi+0xec>

0000000080006a34 <_ZN10_BuddyTree5allocEm>:
void* _BuddyTree::alloc(size_t size) {
    80006a34:	fe010113          	addi	sp,sp,-32
    80006a38:	00113c23          	sd	ra,24(sp)
    80006a3c:	00813823          	sd	s0,16(sp)
    80006a40:	00913423          	sd	s1,8(sp)
    80006a44:	02010413          	addi	s0,sp,32
    80006a48:	00050493          	mv	s1,a0
    int level = calcLevel(size);
    80006a4c:	00000097          	auipc	ra,0x0
    80006a50:	a90080e7          	jalr	-1392(ra) # 800064dc <_ZN10_BuddyTree9calcLevelEm>
    80006a54:	00050593          	mv	a1,a0
    return allocBlock(level);
    80006a58:	00048513          	mv	a0,s1
    80006a5c:	00000097          	auipc	ra,0x0
    80006a60:	ec0080e7          	jalr	-320(ra) # 8000691c <_ZN10_BuddyTree10allocBlockEi>
}
    80006a64:	01813083          	ld	ra,24(sp)
    80006a68:	01013403          	ld	s0,16(sp)
    80006a6c:	00813483          	ld	s1,8(sp)
    80006a70:	02010113          	addi	sp,sp,32
    80006a74:	00008067          	ret

0000000080006a78 <_ZN10_BuddyTree7deallocEPv>:
void _BuddyTree::dealloc(void* ptr) {
    80006a78:	fd010113          	addi	sp,sp,-48
    80006a7c:	02113423          	sd	ra,40(sp)
    80006a80:	02813023          	sd	s0,32(sp)
    80006a84:	00913c23          	sd	s1,24(sp)
    80006a88:	01213823          	sd	s2,16(sp)
    80006a8c:	01313423          	sd	s3,8(sp)
    80006a90:	01413023          	sd	s4,0(sp)
    80006a94:	03010413          	addi	s0,sp,48
    80006a98:	00050913          	mv	s2,a0
    int node = findNode(ptr);
    80006a9c:	00000097          	auipc	ra,0x0
    80006aa0:	c3c080e7          	jalr	-964(ra) # 800066d8 <_ZN10_BuddyTree8findNodeEPv>
    80006aa4:	00050493          	mv	s1,a0
    if (node == -1) return; //greska, losa adresa
    80006aa8:	fff00793          	li	a5,-1
    80006aac:	08f50063          	beq	a0,a5,80006b2c <_ZN10_BuddyTree7deallocEPv+0xb4>
    while (node && arr[sibling(node)].isFresh()) { //spajaju se i deaktiviraju svi cvorovi kod kojih je to moguce
    80006ab0:	02048263          	beqz	s1,80006ad4 <_ZN10_BuddyTree7deallocEPv+0x5c>
    80006ab4:	00093603          	ld	a2,0(s2)
    int sibling(int node) { return (node & 1) ? node + 1 : node - 1; }
    80006ab8:	0014f793          	andi	a5,s1,1
    80006abc:	08078863          	beqz	a5,80006b4c <_ZN10_BuddyTree7deallocEPv+0xd4>
    80006ac0:	0014879b          	addiw	a5,s1,1
    80006ac4:	00279793          	slli	a5,a5,0x2
    80006ac8:	00f60733          	add	a4,a2,a5
    bool isActive() { return data & M_ACTIVE; }
    80006acc:	00072703          	lw	a4,0(a4)
    bool isFresh() { return isActive() && isLeaf() && isFree(); }
    80006ad0:	08074263          	bltz	a4,80006b54 <_ZN10_BuddyTree7deallocEPv+0xdc>
        arr[node].setOut();
        arr[sibling(node)].setOut();
        node = parent(node);
    }
    arr[node].setFresh();
    80006ad4:	00093783          	ld	a5,0(s2)
    80006ad8:	00249a13          	slli	s4,s1,0x2
    80006adc:	014787b3          	add	a5,a5,s4
    void setActive() { data |= M_ACTIVE; }
    80006ae0:	0007a703          	lw	a4,0(a5)
    void setFree() { data |= M_FREE; }
    80006ae4:	e00006b7          	lui	a3,0xe0000
    80006ae8:	00d76733          	or	a4,a4,a3
    80006aec:	00e7a023          	sw	a4,0(a5)
    int lvl = calcLevel(node);
    80006af0:	00048593          	mv	a1,s1
    80006af4:	00090513          	mv	a0,s2
    80006af8:	00000097          	auipc	ra,0x0
    80006afc:	a28080e7          	jalr	-1496(ra) # 80006520 <_ZN10_BuddyTree9calcLevelEi>
    arr[node].setNext(lists[lvl]);
    80006b00:	00093703          	ld	a4,0(s2)
    80006b04:	00893783          	ld	a5,8(s2)
    80006b08:	00251993          	slli	s3,a0,0x2
    80006b0c:	013787b3          	add	a5,a5,s3
    80006b10:	0007a583          	lw	a1,0(a5)
    80006b14:	01470533          	add	a0,a4,s4
    80006b18:	00000097          	auipc	ra,0x0
    80006b1c:	8a4080e7          	jalr	-1884(ra) # 800063bc <_ZN10_BuddyNode7setNextEi>
    lists[lvl] = node;
    80006b20:	00893503          	ld	a0,8(s2)
    80006b24:	013509b3          	add	s3,a0,s3
    80006b28:	0099a023          	sw	s1,0(s3)
}
    80006b2c:	02813083          	ld	ra,40(sp)
    80006b30:	02013403          	ld	s0,32(sp)
    80006b34:	01813483          	ld	s1,24(sp)
    80006b38:	01013903          	ld	s2,16(sp)
    80006b3c:	00813983          	ld	s3,8(sp)
    80006b40:	00013a03          	ld	s4,0(sp)
    80006b44:	03010113          	addi	sp,sp,48
    80006b48:	00008067          	ret
    int sibling(int node) { return (node & 1) ? node + 1 : node - 1; }
    80006b4c:	fff4879b          	addiw	a5,s1,-1
    80006b50:	f75ff06f          	j	80006ac4 <_ZN10_BuddyTree7deallocEPv+0x4c>
    bool isLeaf() { return data & M_LEAF; }
    80006b54:	400006b7          	lui	a3,0x40000
    80006b58:	00d776b3          	and	a3,a4,a3
    80006b5c:	0006869b          	sext.w	a3,a3
    bool isFresh() { return isActive() && isLeaf() && isFree(); }
    80006b60:	f6068ae3          	beqz	a3,80006ad4 <_ZN10_BuddyTree7deallocEPv+0x5c>
    bool isFree() { return data & M_FREE; }
    80006b64:	200006b7          	lui	a3,0x20000
    80006b68:	00d77733          	and	a4,a4,a3
    80006b6c:	0007071b          	sext.w	a4,a4
    bool isFresh() { return isActive() && isLeaf() && isFree(); }
    80006b70:	f60702e3          	beqz	a4,80006ad4 <_ZN10_BuddyTree7deallocEPv+0x5c>
        arr[node].setOut();
    80006b74:	00249713          	slli	a4,s1,0x2
    80006b78:	00e60633          	add	a2,a2,a4
    void clearActive() { data &= ~M_ACTIVE; }
    80006b7c:	00062703          	lw	a4,0(a2) # ffffffffe0000000 <end+0xffffffff5ffebc70>
    void clearFree() { data &= ~M_FREE; }
    80006b80:	200006b7          	lui	a3,0x20000
    80006b84:	fff68693          	addi	a3,a3,-1 # 1fffffff <_entry-0x60000001>
    80006b88:	00d77733          	and	a4,a4,a3
    80006b8c:	00e62023          	sw	a4,0(a2)
        arr[sibling(node)].setOut();
    80006b90:	00093703          	ld	a4,0(s2)
    80006b94:	00f707b3          	add	a5,a4,a5
    void clearActive() { data &= ~M_ACTIVE; }
    80006b98:	0007a703          	lw	a4,0(a5)
    void clearFree() { data &= ~M_FREE; }
    80006b9c:	00d776b3          	and	a3,a4,a3
    80006ba0:	00d7a023          	sw	a3,0(a5)
    int parent(int node) { return (node - 1) / 2; }
    80006ba4:	fff4851b          	addiw	a0,s1,-1
    80006ba8:	01f5549b          	srliw	s1,a0,0x1f
    80006bac:	00a484bb          	addw	s1,s1,a0
    80006bb0:	4014d49b          	sraiw	s1,s1,0x1
    while (node && arr[sibling(node)].isFresh()) { //spajaju se i deaktiviraju svi cvorovi kod kojih je to moguce
    80006bb4:	efdff06f          	j	80006ab0 <_ZN10_BuddyTree7deallocEPv+0x38>

0000000080006bb8 <_ZN10_BuddyTree5printEv>:
void _BuddyTree::print() {
    80006bb8:	fc010113          	addi	sp,sp,-64
    80006bbc:	02113c23          	sd	ra,56(sp)
    80006bc0:	02813823          	sd	s0,48(sp)
    80006bc4:	02913423          	sd	s1,40(sp)
    80006bc8:	03213023          	sd	s2,32(sp)
    80006bcc:	01313c23          	sd	s3,24(sp)
    80006bd0:	01413823          	sd	s4,16(sp)
    80006bd4:	01513423          	sd	s5,8(sp)
    80006bd8:	01613023          	sd	s6,0(sp)
    80006bdc:	04010413          	addi	s0,sp,64
    80006be0:	00050a93          	mv	s5,a0
    int t = 0;
    int m = 1;
    for (int i = 0; i <= pow; i++) {
    80006be4:	00000b13          	li	s6,0
    int m = 1;
    80006be8:	00100a13          	li	s4,1
    int t = 0;
    80006bec:	00000993          	li	s3,0
    80006bf0:	0640006f          	j	80006c54 <_ZN10_BuddyTree5printEv+0x9c>
        for (int j = t; j < t + m; j++) {
            arr[j].printState();
            if (j != t + m - 1) _Console::printString(" | ");
    80006bf4:	00005517          	auipc	a0,0x5
    80006bf8:	82c50513          	addi	a0,a0,-2004 # 8000b420 <_ZN4_Mem11header_sizeE+0xb8>
    80006bfc:	fffff097          	auipc	ra,0xfffff
    80006c00:	674080e7          	jalr	1652(ra) # 80006270 <_ZN8_Console11printStringEPKc>
        for (int j = t; j < t + m; j++) {
    80006c04:	0014849b          	addiw	s1,s1,1
    80006c08:	0149893b          	addw	s2,s3,s4
    80006c0c:	0009079b          	sext.w	a5,s2
    80006c10:	02f4d263          	bge	s1,a5,80006c34 <_ZN10_BuddyTree5printEv+0x7c>
            arr[j].printState();
    80006c14:	000ab503          	ld	a0,0(s5)
    80006c18:	00249793          	slli	a5,s1,0x2
    80006c1c:	00f50533          	add	a0,a0,a5
    80006c20:	fffff097          	auipc	ra,0xfffff
    80006c24:	7ec080e7          	jalr	2028(ra) # 8000640c <_ZN10_BuddyNode10printStateEv>
            if (j != t + m - 1) _Console::printString(" | ");
    80006c28:	fff9091b          	addiw	s2,s2,-1
    80006c2c:	fc990ce3          	beq	s2,s1,80006c04 <_ZN10_BuddyTree5printEv+0x4c>
    80006c30:	fc5ff06f          	j	80006bf4 <_ZN10_BuddyTree5printEv+0x3c>
        }
        _Console::putc('\n');
    80006c34:	00a00513          	li	a0,10
    80006c38:	fffff097          	auipc	ra,0xfffff
    80006c3c:	50c080e7          	jalr	1292(ra) # 80006144 <_ZN8_Console4putcEc>
        t = (t + 1) * 2 - 1;
    80006c40:	0019899b          	addiw	s3,s3,1
    80006c44:	0019999b          	slliw	s3,s3,0x1
    80006c48:	fff9899b          	addiw	s3,s3,-1
        m *= 2;
    80006c4c:	001a1a1b          	slliw	s4,s4,0x1
    for (int i = 0; i <= pow; i++) {
    80006c50:	001b0b1b          	addiw	s6,s6,1
    80006c54:	024aa783          	lw	a5,36(s5)
    80006c58:	0167c663          	blt	a5,s6,80006c64 <_ZN10_BuddyTree5printEv+0xac>
        for (int j = t; j < t + m; j++) {
    80006c5c:	00098493          	mv	s1,s3
    80006c60:	fa9ff06f          	j	80006c08 <_ZN10_BuddyTree5printEv+0x50>
    }
}
    80006c64:	03813083          	ld	ra,56(sp)
    80006c68:	03013403          	ld	s0,48(sp)
    80006c6c:	02813483          	ld	s1,40(sp)
    80006c70:	02013903          	ld	s2,32(sp)
    80006c74:	01813983          	ld	s3,24(sp)
    80006c78:	01013a03          	ld	s4,16(sp)
    80006c7c:	00813a83          	ld	s5,8(sp)
    80006c80:	00013b03          	ld	s6,0(sp)
    80006c84:	04010113          	addi	sp,sp,64
    80006c88:	00008067          	ret

0000000080006c8c <_ZN11_ThreadList4NodenwEm>:

#include "../h/_ThreadList.h"
#include "../h/_Mem.h"

kmem_cache_t* _ThreadList::Node::cache = nullptr;
void* _ThreadList::Node::operator new(size_t size) {
    80006c8c:	ff010113          	addi	sp,sp,-16
    80006c90:	00113423          	sd	ra,8(sp)
    80006c94:	00813023          	sd	s0,0(sp)
    80006c98:	01010413          	addi	s0,sp,16
    if (!cache) cache = kmem_cache_create("Thread_list::Node Cache", sizeof(_ThreadList::Node), nullptr, nullptr);
    80006c9c:	00009797          	auipc	a5,0x9
    80006ca0:	e147b783          	ld	a5,-492(a5) # 8000fab0 <_ZN11_ThreadList4Node5cacheE>
    80006ca4:	02078263          	beqz	a5,80006cc8 <_ZN11_ThreadList4NodenwEm+0x3c>
    return kmem_cache_alloc(cache);
    80006ca8:	00009517          	auipc	a0,0x9
    80006cac:	e0853503          	ld	a0,-504(a0) # 8000fab0 <_ZN11_ThreadList4Node5cacheE>
    80006cb0:	ffffa097          	auipc	ra,0xffffa
    80006cb4:	7c4080e7          	jalr	1988(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
}
    80006cb8:	00813083          	ld	ra,8(sp)
    80006cbc:	00013403          	ld	s0,0(sp)
    80006cc0:	01010113          	addi	sp,sp,16
    80006cc4:	00008067          	ret
    if (!cache) cache = kmem_cache_create("Thread_list::Node Cache", sizeof(_ThreadList::Node), nullptr, nullptr);
    80006cc8:	00000693          	li	a3,0
    80006ccc:	00000613          	li	a2,0
    80006cd0:	01000593          	li	a1,16
    80006cd4:	00004517          	auipc	a0,0x4
    80006cd8:	76450513          	addi	a0,a0,1892 # 8000b438 <_ZN10_BuddyNode8DATA_LENE+0x4>
    80006cdc:	ffffa097          	auipc	ra,0xffffa
    80006ce0:	748080e7          	jalr	1864(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80006ce4:	00009797          	auipc	a5,0x9
    80006ce8:	dca7b623          	sd	a0,-564(a5) # 8000fab0 <_ZN11_ThreadList4Node5cacheE>
    80006cec:	fbdff06f          	j	80006ca8 <_ZN11_ThreadList4NodenwEm+0x1c>

0000000080006cf0 <_ZN11_ThreadList4NodedlEPv>:
void _ThreadList::Node::operator delete(void* addr) {
    80006cf0:	ff010113          	addi	sp,sp,-16
    80006cf4:	00113423          	sd	ra,8(sp)
    80006cf8:	00813023          	sd	s0,0(sp)
    80006cfc:	01010413          	addi	s0,sp,16
    80006d00:	00050593          	mv	a1,a0
    kmem_cache_free(cache, addr);
    80006d04:	00009517          	auipc	a0,0x9
    80006d08:	dac53503          	ld	a0,-596(a0) # 8000fab0 <_ZN11_ThreadList4Node5cacheE>
    80006d0c:	ffffa097          	auipc	ra,0xffffa
    80006d10:	790080e7          	jalr	1936(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
}
    80006d14:	00813083          	ld	ra,8(sp)
    80006d18:	00013403          	ld	s0,0(sp)
    80006d1c:	01010113          	addi	sp,sp,16
    80006d20:	00008067          	ret

0000000080006d24 <_ZN11_ThreadListnwEm>:

kmem_cache_t* _ThreadList::cache = nullptr;
void* _ThreadList::operator new(size_t) {
    80006d24:	ff010113          	addi	sp,sp,-16
    80006d28:	00113423          	sd	ra,8(sp)
    80006d2c:	00813023          	sd	s0,0(sp)
    80006d30:	01010413          	addi	s0,sp,16
    if (!cache) kmem_cache_create("Thread_list cache", sizeof(_ThreadList), nullptr, nullptr);
    80006d34:	00009797          	auipc	a5,0x9
    80006d38:	d847b783          	ld	a5,-636(a5) # 8000fab8 <_ZN11_ThreadList5cacheE>
    80006d3c:	02078263          	beqz	a5,80006d60 <_ZN11_ThreadListnwEm+0x3c>
    return kmem_cache_alloc(cache);
    80006d40:	00009517          	auipc	a0,0x9
    80006d44:	d7853503          	ld	a0,-648(a0) # 8000fab8 <_ZN11_ThreadList5cacheE>
    80006d48:	ffffa097          	auipc	ra,0xffffa
    80006d4c:	72c080e7          	jalr	1836(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
}
    80006d50:	00813083          	ld	ra,8(sp)
    80006d54:	00013403          	ld	s0,0(sp)
    80006d58:	01010113          	addi	sp,sp,16
    80006d5c:	00008067          	ret
    if (!cache) kmem_cache_create("Thread_list cache", sizeof(_ThreadList), nullptr, nullptr);
    80006d60:	00000693          	li	a3,0
    80006d64:	00000613          	li	a2,0
    80006d68:	01000593          	li	a1,16
    80006d6c:	00004517          	auipc	a0,0x4
    80006d70:	6e450513          	addi	a0,a0,1764 # 8000b450 <_ZN10_BuddyNode8DATA_LENE+0x1c>
    80006d74:	ffffa097          	auipc	ra,0xffffa
    80006d78:	6b0080e7          	jalr	1712(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80006d7c:	fc5ff06f          	j	80006d40 <_ZN11_ThreadListnwEm+0x1c>

0000000080006d80 <_ZN11_ThreadListdlEPv>:
void _ThreadList::operator delete(void* addr) {
    80006d80:	ff010113          	addi	sp,sp,-16
    80006d84:	00113423          	sd	ra,8(sp)
    80006d88:	00813023          	sd	s0,0(sp)
    80006d8c:	01010413          	addi	s0,sp,16
    80006d90:	00050593          	mv	a1,a0
    kmem_cache_free(cache, addr);
    80006d94:	00009517          	auipc	a0,0x9
    80006d98:	d2453503          	ld	a0,-732(a0) # 8000fab8 <_ZN11_ThreadList5cacheE>
    80006d9c:	ffffa097          	auipc	ra,0xffffa
    80006da0:	700080e7          	jalr	1792(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
}
    80006da4:	00813083          	ld	ra,8(sp)
    80006da8:	00013403          	ld	s0,0(sp)
    80006dac:	01010113          	addi	sp,sp,16
    80006db0:	00008067          	ret

0000000080006db4 <_ZN11_ThreadList3addEP7_Thread>:

int _ThreadList::add(thread_t thread) {
    80006db4:	fe010113          	addi	sp,sp,-32
    80006db8:	00113c23          	sd	ra,24(sp)
    80006dbc:	00813823          	sd	s0,16(sp)
    80006dc0:	00913423          	sd	s1,8(sp)
    80006dc4:	01213023          	sd	s2,0(sp)
    80006dc8:	02010413          	addi	s0,sp,32
    80006dcc:	00050493          	mv	s1,a0
    80006dd0:	00058913          	mv	s2,a1
    Node* node = new Node(thread);
    80006dd4:	01000513          	li	a0,16
    80006dd8:	00000097          	auipc	ra,0x0
    80006ddc:	eb4080e7          	jalr	-332(ra) # 80006c8c <_ZN11_ThreadList4NodenwEm>
    80006de0:	00050663          	beqz	a0,80006dec <_ZN11_ThreadList3addEP7_Thread+0x38>
        thread_t thread;
        Node* next;
        static kmem_cache_t* cache;
        void* operator new(size_t);
        void operator delete(void*);
        Node(thread_t thread) : thread(thread), next(nullptr) {}
    80006de4:	01253023          	sd	s2,0(a0)
    80006de8:	00053423          	sd	zero,8(a0)
    if (node == nullptr) return -1;
    80006dec:	02050e63          	beqz	a0,80006e28 <_ZN11_ThreadList3addEP7_Thread+0x74>
    node->next = nullptr;
    80006df0:	00053423          	sd	zero,8(a0)
    if (last) last->next = node;
    80006df4:	0084b783          	ld	a5,8(s1)
    80006df8:	02078463          	beqz	a5,80006e20 <_ZN11_ThreadList3addEP7_Thread+0x6c>
    80006dfc:	00a7b423          	sd	a0,8(a5)
    else first = node;
    last = node;
    80006e00:	00a4b423          	sd	a0,8(s1)
    return 0;
    80006e04:	00000513          	li	a0,0
}
    80006e08:	01813083          	ld	ra,24(sp)
    80006e0c:	01013403          	ld	s0,16(sp)
    80006e10:	00813483          	ld	s1,8(sp)
    80006e14:	00013903          	ld	s2,0(sp)
    80006e18:	02010113          	addi	sp,sp,32
    80006e1c:	00008067          	ret
    else first = node;
    80006e20:	00a4b023          	sd	a0,0(s1)
    80006e24:	fddff06f          	j	80006e00 <_ZN11_ThreadList3addEP7_Thread+0x4c>
    if (node == nullptr) return -1;
    80006e28:	fff00513          	li	a0,-1
    80006e2c:	fddff06f          	j	80006e08 <_ZN11_ThreadList3addEP7_Thread+0x54>

0000000080006e30 <_ZN11_ThreadList6removeEv>:
thread_t _ThreadList::remove() {
    80006e30:	fe010113          	addi	sp,sp,-32
    80006e34:	00113c23          	sd	ra,24(sp)
    80006e38:	00813823          	sd	s0,16(sp)
    80006e3c:	00913423          	sd	s1,8(sp)
    80006e40:	02010413          	addi	s0,sp,32
    80006e44:	00050793          	mv	a5,a0
    if (!first) return nullptr; //nema niti u listi
    80006e48:	00053503          	ld	a0,0(a0)
    80006e4c:	02050e63          	beqz	a0,80006e88 <_ZN11_ThreadList6removeEv+0x58>
    Node* node = first;
    first = first->next;
    80006e50:	00853703          	ld	a4,8(a0)
    80006e54:	00e7b023          	sd	a4,0(a5)
    if (!first) last = nullptr;
    80006e58:	02070463          	beqz	a4,80006e80 <_ZN11_ThreadList6removeEv+0x50>
    thread_t ret = node->thread;
    80006e5c:	00053483          	ld	s1,0(a0)
    delete node;
    80006e60:	00000097          	auipc	ra,0x0
    80006e64:	e90080e7          	jalr	-368(ra) # 80006cf0 <_ZN11_ThreadList4NodedlEPv>
    return ret;
}
    80006e68:	00048513          	mv	a0,s1
    80006e6c:	01813083          	ld	ra,24(sp)
    80006e70:	01013403          	ld	s0,16(sp)
    80006e74:	00813483          	ld	s1,8(sp)
    80006e78:	02010113          	addi	sp,sp,32
    80006e7c:	00008067          	ret
    if (!first) last = nullptr;
    80006e80:	0007b423          	sd	zero,8(a5)
    80006e84:	fd9ff06f          	j	80006e5c <_ZN11_ThreadList6removeEv+0x2c>
    if (!first) return nullptr; //nema niti u listi
    80006e88:	00050493          	mv	s1,a0
    80006e8c:	fddff06f          	j	80006e68 <_ZN11_ThreadList6removeEv+0x38>

0000000080006e90 <_ZN11_ThreadList5emptyEv>:
int _ThreadList::empty() {
    80006e90:	ff010113          	addi	sp,sp,-16
    80006e94:	00813423          	sd	s0,8(sp)
    80006e98:	01010413          	addi	s0,sp,16
    return !first;
    80006e9c:	00053503          	ld	a0,0(a0)
}
    80006ea0:	00153513          	seqz	a0,a0
    80006ea4:	00813403          	ld	s0,8(sp)
    80006ea8:	01010113          	addi	sp,sp,16
    80006eac:	00008067          	ret

0000000080006eb0 <_ZN11_ThreadList6removeEP7_Thread>:
int _ThreadList::remove(thread_t thread) {
    80006eb0:	00050693          	mv	a3,a0
    Node* prev = nullptr, *cur = first;
    80006eb4:	00053503          	ld	a0,0(a0)
    80006eb8:	00000713          	li	a4,0
    while (cur && cur->thread != thread) prev = cur, cur = cur->next;
    80006ebc:	00050c63          	beqz	a0,80006ed4 <_ZN11_ThreadList6removeEP7_Thread+0x24>
    80006ec0:	00053783          	ld	a5,0(a0)
    80006ec4:	00b78863          	beq	a5,a1,80006ed4 <_ZN11_ThreadList6removeEP7_Thread+0x24>
    80006ec8:	00050713          	mv	a4,a0
    80006ecc:	00853503          	ld	a0,8(a0)
    80006ed0:	fedff06f          	j	80006ebc <_ZN11_ThreadList6removeEP7_Thread+0xc>
    if (!cur) return -1;
    80006ed4:	04050c63          	beqz	a0,80006f2c <_ZN11_ThreadList6removeEP7_Thread+0x7c>
int _ThreadList::remove(thread_t thread) {
    80006ed8:	ff010113          	addi	sp,sp,-16
    80006edc:	00113423          	sd	ra,8(sp)
    80006ee0:	00813023          	sd	s0,0(sp)
    80006ee4:	01010413          	addi	s0,sp,16
    if (prev) prev->next = cur->next;
    80006ee8:	02070863          	beqz	a4,80006f18 <_ZN11_ThreadList6removeEP7_Thread+0x68>
    80006eec:	00853783          	ld	a5,8(a0)
    80006ef0:	00f73423          	sd	a5,8(a4)
    else first = cur->next;
    if (last == cur) last = prev;
    80006ef4:	0086b783          	ld	a5,8(a3)
    80006ef8:	02a78663          	beq	a5,a0,80006f24 <_ZN11_ThreadList6removeEP7_Thread+0x74>
    delete cur;
    80006efc:	00000097          	auipc	ra,0x0
    80006f00:	df4080e7          	jalr	-524(ra) # 80006cf0 <_ZN11_ThreadList4NodedlEPv>
    return 0;
    80006f04:	00000513          	li	a0,0
    80006f08:	00813083          	ld	ra,8(sp)
    80006f0c:	00013403          	ld	s0,0(sp)
    80006f10:	01010113          	addi	sp,sp,16
    80006f14:	00008067          	ret
    else first = cur->next;
    80006f18:	00853783          	ld	a5,8(a0)
    80006f1c:	00f6b023          	sd	a5,0(a3)
    80006f20:	fd5ff06f          	j	80006ef4 <_ZN11_ThreadList6removeEP7_Thread+0x44>
    if (last == cur) last = prev;
    80006f24:	00e6b423          	sd	a4,8(a3)
    80006f28:	fd5ff06f          	j	80006efc <_ZN11_ThreadList6removeEP7_Thread+0x4c>
    if (!cur) return -1;
    80006f2c:	fff00513          	li	a0,-1
    80006f30:	00008067          	ret

0000000080006f34 <main>:
const uint64 FIRSTKERNELPAGE = 0x80000ul;
const uint64 LASTKERNELPAGE = 0x80010ul;
_PMT* pmt;


int main() {
    80006f34:	fd010113          	addi	sp,sp,-48
    80006f38:	02113423          	sd	ra,40(sp)
    80006f3c:	02813023          	sd	s0,32(sp)
    80006f40:	00913c23          	sd	s1,24(sp)
    80006f44:	01213823          	sd	s2,16(sp)
    80006f48:	01313423          	sd	s3,8(sp)
    80006f4c:	01413023          	sd	s4,0(sp)
    80006f50:	03010413          	addi	s0,sp,48
    _SBIT::SIEdisable();
    80006f54:	ffffa097          	auipc	ra,0xffffa
    80006f58:	0b4080e7          	jalr	180(ra) # 80001008 <_ZN5_SBIT10SIEdisableEv>
    _SBIT::SSIEenable();
    80006f5c:	ffffa097          	auipc	ra,0xffffa
    80006f60:	104080e7          	jalr	260(ra) # 80001060 <_ZN5_SBIT10SSIEenableEv>
    _SBIT::SEIEenable();//dozvoljavam prekide (kada je SIE ukljucen)
    80006f64:	ffffa097          	auipc	ra,0xffffa
    80006f68:	0d4080e7          	jalr	212(ra) # 80001038 <_ZN5_SBIT10SEIEenableEv>
    __asm__ volatile("csrw stvec, %0" : : "r"(&trap));//inicijalizujem pokazivac na prekidnu rutinu
    80006f6c:	0000a797          	auipc	a5,0xa
    80006f70:	13c7b783          	ld	a5,316(a5) # 800110a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
    80006f74:	10579073          	csrw	stvec,a5

    //RASPODELA MEMORIJE
    uint64 kernelHeapStart = (uint64)HEAP_START_ADDR;
    80006f78:	0000a797          	auipc	a5,0xa
    80006f7c:	0b07b783          	ld	a5,176(a5) # 80011028 <_GLOBAL_OFFSET_TABLE_+0x28>
    80006f80:	0007b483          	ld	s1,0(a5)
    kernelHeapStart = (kernelHeapStart + PAGEOFFMASK) & ~PAGEOFFMASK;
    80006f84:	0000a797          	auipc	a5,0xa
    80006f88:	13c7b783          	ld	a5,316(a5) # 800110c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
    80006f8c:	0007a983          	lw	s3,0(a5)
    80006f90:	009984b3          	add	s1,s3,s1
    80006f94:	fff9c913          	not	s2,s3
    80006f98:	0124f4b3          	and	s1,s1,s2
    size_t memSize = (uint64)HEAP_END_ADDR - kernelHeapStart;
    80006f9c:	0000aa17          	auipc	s4,0xa
    80006fa0:	11ca3a03          	ld	s4,284(s4) # 800110b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
    80006fa4:	000a3583          	ld	a1,0(s4)
    80006fa8:	409585b3          	sub	a1,a1,s1
    kmem_init((void*)kernelHeapStart, memSize / 8 / BLOCK_SIZE);
    80006fac:	00f5d593          	srli	a1,a1,0xf
    80006fb0:	0005859b          	sext.w	a1,a1
    80006fb4:	00048513          	mv	a0,s1
    80006fb8:	ffffa097          	auipc	ra,0xffffa
    80006fbc:	444080e7          	jalr	1092(ra) # 800013fc <_Z9kmem_initPvi>
    uint64 userHeapStart = (uint64)getBuddyEnd();
    80006fc0:	ffffa097          	auipc	ra,0xffffa
    80006fc4:	644080e7          	jalr	1604(ra) # 80001604 <_Z11getBuddyEndv>
    userHeapStart = (userHeapStart + PAGEOFFMASK) & ~PAGEOFFMASK; //prva sledeca stranica
    80006fc8:	00a989b3          	add	s3,s3,a0
    80006fcc:	01397933          	and	s2,s2,s3
    _Mem::init((void*)userHeapStart, HEAP_END_ADDR);
    80006fd0:	000a3583          	ld	a1,0(s4)
    80006fd4:	00090513          	mv	a0,s2
    80006fd8:	ffffe097          	auipc	ra,0xffffe
    80006fdc:	e38080e7          	jalr	-456(ra) # 80004e10 <_ZN4_Mem4initEPKvS1_>
    //KRAJ RASPODELE MEMORIJE

    //INICIJALIZACIJA PMT
    pmt = (_PMT*)buddyAlloc(0);
    80006fe0:	00000513          	li	a0,0
    80006fe4:	ffffa097          	auipc	ra,0xffffa
    80006fe8:	5d0080e7          	jalr	1488(ra) # 800015b4 <_Z10buddyAlloci>
    80006fec:	00050593          	mv	a1,a0
    80006ff0:	00009797          	auipc	a5,0x9
    80006ff4:	aca7b823          	sd	a0,-1328(a5) # 8000fac0 <pmt>
    new(pmt) _PMT(true);
    80006ff8:	00001537          	lui	a0,0x1
    80006ffc:	ffffb097          	auipc	ra,0xffffb
    80007000:	030080e7          	jalr	48(ra) # 8000202c <_ZnwmPv>
    80007004:	00050863          	beqz	a0,80007014 <main+0xe0>
    80007008:	00100593          	li	a1,1
    8000700c:	ffffb097          	auipc	ra,0xffffb
    80007010:	d68080e7          	jalr	-664(ra) # 80001d74 <_ZN4_PMTC1Eb>
    pmt->clearU(((kernelHeapStart) >> PAGEOFF), (((uint64)userHeapStart) >> PAGEOFF) - 1);
    80007014:	0000a797          	auipc	a5,0xa
    80007018:	00c7b783          	ld	a5,12(a5) # 80011020 <_GLOBAL_OFFSET_TABLE_+0x20>
    8000701c:	0007a983          	lw	s3,0(a5)
    80007020:	01395633          	srl	a2,s2,s3
    80007024:	00009917          	auipc	s2,0x9
    80007028:	a9c90913          	addi	s2,s2,-1380 # 8000fac0 <pmt>
    8000702c:	fff60613          	addi	a2,a2,-1
    80007030:	0134d5b3          	srl	a1,s1,s3
    80007034:	00093503          	ld	a0,0(s2)
    80007038:	ffffb097          	auipc	ra,0xffffb
    8000703c:	f94080e7          	jalr	-108(ra) # 80001fcc <_ZN4_PMT6clearUEmm>
    pmt->clearU(FIRSTKERNELPAGE, LASTKERNELPAGE);
    80007040:	00080637          	lui	a2,0x80
    80007044:	01060613          	addi	a2,a2,16 # 80010 <_entry-0x7ff7fff0>
    80007048:	000805b7          	lui	a1,0x80
    8000704c:	00093503          	ld	a0,0(s2)
    80007050:	ffffb097          	auipc	ra,0xffffb
    80007054:	f7c080e7          	jalr	-132(ra) # 80001fcc <_ZN4_PMT6clearUEmm>
    uint64 satp = 0x8000000000000000ul | (((uint64)pmt) >> PAGEOFF);
    80007058:	00093483          	ld	s1,0(s2)
    8000705c:	0134d4b3          	srl	s1,s1,s3
    80007060:	fff00793          	li	a5,-1
    80007064:	03f79793          	slli	a5,a5,0x3f
    80007068:	00f4e4b3          	or	s1,s1,a5
    _SBIT::SUMset();
    8000706c:	ffffa097          	auipc	ra,0xffffa
    80007070:	050080e7          	jalr	80(ra) # 800010bc <_ZN5_SBIT6SUMsetEv>
    _SBIT::SATPset(satp);
    80007074:	00048513          	mv	a0,s1
    80007078:	ffffa097          	auipc	ra,0xffffa
    8000707c:	058080e7          	jalr	88(ra) # 800010d0 <_ZN5_SBIT7SATPsetEm>
    //KRAJ INICIJALIZACIJE PMT

    _Thread::main = new _Thread();
    80007080:	04800513          	li	a0,72
    80007084:	ffffc097          	auipc	ra,0xffffc
    80007088:	648080e7          	jalr	1608(ra) # 800036cc <_ZN7_ThreadnwEm>
    8000708c:	00050493          	mv	s1,a0
    80007090:	02050663          	beqz	a0,800070bc <main+0x188>
    80007094:	ffffd097          	auipc	ra,0xffffd
    80007098:	8a8080e7          	jalr	-1880(ra) # 8000393c <_ZN7_ThreadC1Ev>
    8000709c:	0200006f          	j	800070bc <main+0x188>
    800070a0:	00050913          	mv	s2,a0
    800070a4:	00048513          	mv	a0,s1
    800070a8:	ffffc097          	auipc	ra,0xffffc
    800070ac:	688080e7          	jalr	1672(ra) # 80003730 <_ZN7_ThreaddlEPv>
    800070b0:	00090513          	mv	a0,s2
    800070b4:	0000a097          	auipc	ra,0xa
    800070b8:	b34080e7          	jalr	-1228(ra) # 80010be8 <_Unwind_Resume>
    800070bc:	0000a797          	auipc	a5,0xa
    800070c0:	fb47b783          	ld	a5,-76(a5) # 80011070 <_GLOBAL_OFFSET_TABLE_+0x70>
    800070c4:	0097b023          	sd	s1,0(a5)
    _Thread::running = _Thread::main;
    800070c8:	0000a797          	auipc	a5,0xa
    800070cc:	f707b783          	ld	a5,-144(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    800070d0:	0097b023          	sd	s1,0(a5)
    _Console::init();
    800070d4:	fffff097          	auipc	ra,0xfffff
    800070d8:	f14080e7          	jalr	-236(ra) # 80005fe8 <_ZN8_Console4initEv>

    //Kreiranje prve korisnicke niti
    _Thread::create(nullptr, &userMain, DEFAULT_STACK_SIZE, _Thread::NORM_PRIORITY, _Thread::SET_START);
    800070dc:	00100713          	li	a4,1
    800070e0:	00000693          	li	a3,0
    800070e4:	00001637          	lui	a2,0x1
    800070e8:	0000a597          	auipc	a1,0xa
    800070ec:	f205b583          	ld	a1,-224(a1) # 80011008 <_GLOBAL_OFFSET_TABLE_+0x8>
    800070f0:	00000513          	li	a0,0
    800070f4:	ffffd097          	auipc	ra,0xffffd
    800070f8:	258080e7          	jalr	600(ra) # 8000434c <_ZN7_Thread6createEPPS_PFvvEmii>
    _Thread::thread_dispatch();
    800070fc:	ffffa097          	auipc	ra,0xffffa
    80007100:	fdc080e7          	jalr	-36(ra) # 800010d8 <_ZN7_Thread15thread_dispatchEv>
    _Thread::create(nullptr, &userMain, _Thread::NORM_PRIORITY, _Thread::SET_START);
    _Thread::thread_dispatch();
*/

    return 0;
    80007104:	00000513          	li	a0,0
    80007108:	02813083          	ld	ra,40(sp)
    8000710c:	02013403          	ld	s0,32(sp)
    80007110:	01813483          	ld	s1,24(sp)
    80007114:	01013903          	ld	s2,16(sp)
    80007118:	00813983          	ld	s3,8(sp)
    8000711c:	00013a03          	ld	s4,0(sp)
    80007120:	03010113          	addi	sp,sp,48
    80007124:	00008067          	ret

0000000080007128 <_ZN7_BuffernwEm>:
#include "../h/_Mem.h"
#include "../h/_Sem.h"

kmem_cache_t* _Buffer::cache = nullptr;

void* _Buffer::operator new(size_t) {
    80007128:	ff010113          	addi	sp,sp,-16
    8000712c:	00113423          	sd	ra,8(sp)
    80007130:	00813023          	sd	s0,0(sp)
    80007134:	01010413          	addi	s0,sp,16
    if (!cache) cache = kmem_cache_create("Buffer Cache", sizeof(_Buffer), nullptr, nullptr);
    80007138:	00009797          	auipc	a5,0x9
    8000713c:	9907b783          	ld	a5,-1648(a5) # 8000fac8 <_ZN7_Buffer5cacheE>
    80007140:	02078263          	beqz	a5,80007164 <_ZN7_BuffernwEm+0x3c>
    return kmem_cache_alloc(cache);
    80007144:	00009517          	auipc	a0,0x9
    80007148:	98453503          	ld	a0,-1660(a0) # 8000fac8 <_ZN7_Buffer5cacheE>
    8000714c:	ffffa097          	auipc	ra,0xffffa
    80007150:	328080e7          	jalr	808(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
}
    80007154:	00813083          	ld	ra,8(sp)
    80007158:	00013403          	ld	s0,0(sp)
    8000715c:	01010113          	addi	sp,sp,16
    80007160:	00008067          	ret
    if (!cache) cache = kmem_cache_create("Buffer Cache", sizeof(_Buffer), nullptr, nullptr);
    80007164:	00000693          	li	a3,0
    80007168:	00000613          	li	a2,0
    8000716c:	02800593          	li	a1,40
    80007170:	00004517          	auipc	a0,0x4
    80007174:	2f850513          	addi	a0,a0,760 # 8000b468 <_ZN10_BuddyNode8DATA_LENE+0x34>
    80007178:	ffffa097          	auipc	ra,0xffffa
    8000717c:	2ac080e7          	jalr	684(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80007180:	00009797          	auipc	a5,0x9
    80007184:	94a7b423          	sd	a0,-1720(a5) # 8000fac8 <_ZN7_Buffer5cacheE>
    80007188:	fbdff06f          	j	80007144 <_ZN7_BuffernwEm+0x1c>

000000008000718c <_ZN7_BufferdlEPv>:
void _Buffer::operator delete(void* addr) {
    8000718c:	ff010113          	addi	sp,sp,-16
    80007190:	00113423          	sd	ra,8(sp)
    80007194:	00813023          	sd	s0,0(sp)
    80007198:	01010413          	addi	s0,sp,16
    8000719c:	00050593          	mv	a1,a0
    kmem_cache_free(cache, addr);
    800071a0:	00009517          	auipc	a0,0x9
    800071a4:	92853503          	ld	a0,-1752(a0) # 8000fac8 <_ZN7_Buffer5cacheE>
    800071a8:	ffffa097          	auipc	ra,0xffffa
    800071ac:	2f4080e7          	jalr	756(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
}
    800071b0:	00813083          	ld	ra,8(sp)
    800071b4:	00013403          	ld	s0,0(sp)
    800071b8:	01010113          	addi	sp,sp,16
    800071bc:	00008067          	ret

00000000800071c0 <_ZN7_BufferC1Ej>:

_Buffer::_Buffer(unsigned sz) {
    800071c0:	fe010113          	addi	sp,sp,-32
    800071c4:	00113c23          	sd	ra,24(sp)
    800071c8:	00813823          	sd	s0,16(sp)
    800071cc:	00913423          	sd	s1,8(sp)
    800071d0:	02010413          	addi	s0,sp,32
    800071d4:	00050493          	mv	s1,a0
    front = rear = 0;
    800071d8:	00052623          	sw	zero,12(a0)
    800071dc:	00052423          	sw	zero,8(a0)
    size = sz;
    800071e0:	00b52823          	sw	a1,16(a0)
    arr = (char*) _Mem::alloc(_Mem::getBlockNum(sizeof(char) * size));
    800071e4:	02059513          	slli	a0,a1,0x20
    800071e8:	02055513          	srli	a0,a0,0x20
    800071ec:	ffffe097          	auipc	ra,0xffffe
    800071f0:	d94080e7          	jalr	-620(ra) # 80004f80 <_ZN4_Mem11getBlockNumEm>
    800071f4:	ffffe097          	auipc	ra,0xffffe
    800071f8:	c54080e7          	jalr	-940(ra) # 80004e48 <_ZN4_Mem5allocEm>
    800071fc:	00a4b023          	sd	a0,0(s1)
    _Sem::open(&semin, size);
    80007200:	0104a583          	lw	a1,16(s1)
    80007204:	01848513          	addi	a0,s1,24
    80007208:	ffffe097          	auipc	ra,0xffffe
    8000720c:	e84080e7          	jalr	-380(ra) # 8000508c <_ZN4_Sem4openEPPS_j>
    _Sem::open(&semout, 0);
    80007210:	00000593          	li	a1,0
    80007214:	02048513          	addi	a0,s1,32
    80007218:	ffffe097          	auipc	ra,0xffffe
    8000721c:	e74080e7          	jalr	-396(ra) # 8000508c <_ZN4_Sem4openEPPS_j>
}
    80007220:	01813083          	ld	ra,24(sp)
    80007224:	01013403          	ld	s0,16(sp)
    80007228:	00813483          	ld	s1,8(sp)
    8000722c:	02010113          	addi	sp,sp,32
    80007230:	00008067          	ret

0000000080007234 <_ZN7_Buffer3putEc>:

void _Buffer::put(char c) {
    80007234:	fe010113          	addi	sp,sp,-32
    80007238:	00113c23          	sd	ra,24(sp)
    8000723c:	00813823          	sd	s0,16(sp)
    80007240:	00913423          	sd	s1,8(sp)
    80007244:	01213023          	sd	s2,0(sp)
    80007248:	02010413          	addi	s0,sp,32
    8000724c:	00050493          	mv	s1,a0
    80007250:	00058913          	mv	s2,a1
    semin->wait();
    80007254:	01853503          	ld	a0,24(a0)
    80007258:	ffffe097          	auipc	ra,0xffffe
    8000725c:	f20080e7          	jalr	-224(ra) # 80005178 <_ZN4_Sem4waitEv>
    arr[rear] = c;
    80007260:	0004b783          	ld	a5,0(s1)
    80007264:	00c4e703          	lwu	a4,12(s1)
    80007268:	00e787b3          	add	a5,a5,a4
    8000726c:	01278023          	sb	s2,0(a5)
    rear = (rear + 1) % size;
    80007270:	00c4a783          	lw	a5,12(s1)
    80007274:	0017879b          	addiw	a5,a5,1
    80007278:	0104a703          	lw	a4,16(s1)
    8000727c:	02e7f7bb          	remuw	a5,a5,a4
    80007280:	00f4a623          	sw	a5,12(s1)
    semout->signal();
    80007284:	0204b503          	ld	a0,32(s1)
    80007288:	ffffe097          	auipc	ra,0xffffe
    8000728c:	078080e7          	jalr	120(ra) # 80005300 <_ZN4_Sem6signalEv>
}
    80007290:	01813083          	ld	ra,24(sp)
    80007294:	01013403          	ld	s0,16(sp)
    80007298:	00813483          	ld	s1,8(sp)
    8000729c:	00013903          	ld	s2,0(sp)
    800072a0:	02010113          	addi	sp,sp,32
    800072a4:	00008067          	ret

00000000800072a8 <_ZN7_Buffer3getEv>:
char _Buffer::get() {
    800072a8:	fe010113          	addi	sp,sp,-32
    800072ac:	00113c23          	sd	ra,24(sp)
    800072b0:	00813823          	sd	s0,16(sp)
    800072b4:	00913423          	sd	s1,8(sp)
    800072b8:	01213023          	sd	s2,0(sp)
    800072bc:	02010413          	addi	s0,sp,32
    800072c0:	00050493          	mv	s1,a0
    semout->wait();
    800072c4:	02053503          	ld	a0,32(a0)
    800072c8:	ffffe097          	auipc	ra,0xffffe
    800072cc:	eb0080e7          	jalr	-336(ra) # 80005178 <_ZN4_Sem4waitEv>
    char ret = arr[front];
    800072d0:	0004b703          	ld	a4,0(s1)
    800072d4:	0084a783          	lw	a5,8(s1)
    800072d8:	02079693          	slli	a3,a5,0x20
    800072dc:	0206d693          	srli	a3,a3,0x20
    800072e0:	00d70733          	add	a4,a4,a3
    800072e4:	00074903          	lbu	s2,0(a4)
    front = (front + 1) % size;
    800072e8:	0017879b          	addiw	a5,a5,1
    800072ec:	0104a703          	lw	a4,16(s1)
    800072f0:	02e7f7bb          	remuw	a5,a5,a4
    800072f4:	00f4a423          	sw	a5,8(s1)
    semin->signal();
    800072f8:	0184b503          	ld	a0,24(s1)
    800072fc:	ffffe097          	auipc	ra,0xffffe
    80007300:	004080e7          	jalr	4(ra) # 80005300 <_ZN4_Sem6signalEv>
    return ret;
}
    80007304:	00090513          	mv	a0,s2
    80007308:	01813083          	ld	ra,24(sp)
    8000730c:	01013403          	ld	s0,16(sp)
    80007310:	00813483          	ld	s1,8(sp)
    80007314:	00013903          	ld	s2,0(sp)
    80007318:	02010113          	addi	sp,sp,32
    8000731c:	00008067          	ret

0000000080007320 <_ZN7_Buffer4fullEv>:

int _Buffer::full() {
    80007320:	ff010113          	addi	sp,sp,-16
    80007324:	00813423          	sd	s0,8(sp)
    80007328:	01010413          	addi	s0,sp,16
    return semin->getVal() <= 0;
    8000732c:	01853783          	ld	a5,24(a0)
    int wait();
    int signal();
    int signalEvent(); //signal koji nikad ne povecava val iznad 1
    int signalAll(); //oslobadja sve koji cekaju na semaforu
    int wait(time_t limit); //cekanje sa vremenskim ogranicenjem
    unsigned getVal() { return val; }
    80007330:	0107a503          	lw	a0,16(a5)
}
    80007334:	00153513          	seqz	a0,a0
    80007338:	00813403          	ld	s0,8(sp)
    8000733c:	01010113          	addi	sp,sp,16
    80007340:	00008067          	ret

0000000080007344 <_ZN7_Buffer5emptyEv>:
int _Buffer::empty() {
    80007344:	ff010113          	addi	sp,sp,-16
    80007348:	00813423          	sd	s0,8(sp)
    8000734c:	01010413          	addi	s0,sp,16
    return semout->getVal() <= 0;
    80007350:	02053783          	ld	a5,32(a0)
    80007354:	0107a503          	lw	a0,16(a5)
}
    80007358:	00153513          	seqz	a0,a0
    8000735c:	00813403          	ld	s0,8(sp)
    80007360:	01010113          	addi	sp,sp,16
    80007364:	00008067          	ret

0000000080007368 <_ZN12_WaitManager8sem_passEP4_Sem>:
#include "../h/_WaitManager.h"
#include "../h/_Sem.h"
#include "../h/_Sleep.h"

_WaitManager::_WaitManager(thread_t my_thread) : myThread(my_thread) {}
int _WaitManager::sem_pass(sem_t) { return 0;}
    80007368:	ff010113          	addi	sp,sp,-16
    8000736c:	00813423          	sd	s0,8(sp)
    80007370:	01010413          	addi	s0,sp,16
    80007374:	00000513          	li	a0,0
    80007378:	00813403          	ld	s0,8(sp)
    8000737c:	01010113          	addi	sp,sp,16
    80007380:	00008067          	ret

0000000080007384 <_ZN12_WaitManager10sleep_passEv>:
int _WaitManager::sleep_pass() { return 0;}
    80007384:	ff010113          	addi	sp,sp,-16
    80007388:	00813423          	sd	s0,8(sp)
    8000738c:	01010413          	addi	s0,sp,16
    80007390:	00000513          	li	a0,0
    80007394:	00813403          	ld	s0,8(sp)
    80007398:	01010113          	addi	sp,sp,16
    8000739c:	00008067          	ret

00000000800073a0 <_ZN12_WaitManager9join_passEv>:
int _WaitManager::join_pass() { return 0;}
    800073a0:	ff010113          	addi	sp,sp,-16
    800073a4:	00813423          	sd	s0,8(sp)
    800073a8:	01010413          	addi	s0,sp,16
    800073ac:	00000513          	li	a0,0
    800073b0:	00813403          	ld	s0,8(sp)
    800073b4:	01010113          	addi	sp,sp,16
    800073b8:	00008067          	ret

00000000800073bc <_ZN12_WaitManager9interruptEv>:
int _WaitManager::interrupt() { return 1;}
    800073bc:	ff010113          	addi	sp,sp,-16
    800073c0:	00813423          	sd	s0,8(sp)
    800073c4:	01010413          	addi	s0,sp,16
    800073c8:	00100513          	li	a0,1
    800073cc:	00813403          	ld	s0,8(sp)
    800073d0:	01010113          	addi	sp,sp,16
    800073d4:	00008067          	ret

00000000800073d8 <_ZN12_WaitManagerD1Ev>:
_WaitManager::~_WaitManager() {}
    800073d8:	ff010113          	addi	sp,sp,-16
    800073dc:	00813423          	sd	s0,8(sp)
    800073e0:	01010413          	addi	s0,sp,16
    800073e4:	00813403          	ld	s0,8(sp)
    800073e8:	01010113          	addi	sp,sp,16
    800073ec:	00008067          	ret

00000000800073f0 <_ZN11_SemManager8sem_passEP4_Sem>:

_SemManager::_SemManager(thread_t my_thread, sem_t sem) : _WaitManager(my_thread), sem(sem) {}
kmem_cache_t* _SemManager::cache = nullptr;
int _SemManager::sem_pass(sem_t sem) {
    800073f0:	ff010113          	addi	sp,sp,-16
    800073f4:	00813423          	sd	s0,8(sp)
    800073f8:	01010413          	addi	s0,sp,16
    this->sem = nullptr;
    800073fc:	00053823          	sd	zero,16(a0)
    return 1;
}
    80007400:	00100513          	li	a0,1
    80007404:	00813403          	ld	s0,8(sp)
    80007408:	01010113          	addi	sp,sp,16
    8000740c:	00008067          	ret

0000000080007410 <_ZN13_SleepManager10sleep_passEv>:
    return 1;
}

_SleepManager::_SleepManager(thread_t my_thread) : _WaitManager(my_thread) {}
kmem_cache_t* _SleepManager::cache = nullptr;
int _SleepManager::sleep_pass() {
    80007410:	ff010113          	addi	sp,sp,-16
    80007414:	00813423          	sd	s0,8(sp)
    80007418:	01010413          	addi	s0,sp,16
    return 1;
}
    8000741c:	00100513          	li	a0,1
    80007420:	00813403          	ld	s0,8(sp)
    80007424:	01010113          	addi	sp,sp,16
    80007428:	00008067          	ret

000000008000742c <_ZN12_JoinManager9join_passEv>:
    return 1;
}

_JoinManager::_JoinManager(thread_t my_thread, thread_t join_thread) : _WaitManager(my_thread), join_thread(join_thread) {}
kmem_cache_t* _JoinManager::cache = nullptr;
int _JoinManager::join_pass() {
    8000742c:	ff010113          	addi	sp,sp,-16
    80007430:	00813423          	sd	s0,8(sp)
    80007434:	01010413          	addi	s0,sp,16
    join_thread = nullptr;
    80007438:	00053823          	sd	zero,16(a0)
    return 1;
}
    8000743c:	00100513          	li	a0,1
    80007440:	00813403          	ld	s0,8(sp)
    80007444:	01010113          	addi	sp,sp,16
    80007448:	00008067          	ret

000000008000744c <_ZN14_SemANDManager8sem_passEP4_Sem>:
    return 1;
}

_SemANDManager::_SemANDManager(thread_t my_thread, sem_t sem1, sem_t sem2) : _WaitManager(my_thread), sem1(sem1), sem2(sem2) {}
kmem_cache_t* _SemANDManager::cache = nullptr;
int _SemANDManager::sem_pass(sem_t sem) {
    8000744c:	ff010113          	addi	sp,sp,-16
    80007450:	00813423          	sd	s0,8(sp)
    80007454:	01010413          	addi	s0,sp,16
    if (sem == sem1) sem1 = nullptr;
    80007458:	01053783          	ld	a5,16(a0)
    8000745c:	02b78063          	beq	a5,a1,8000747c <_ZN14_SemANDManager8sem_passEP4_Sem+0x30>
    else sem2 = nullptr;
    80007460:	00053c23          	sd	zero,24(a0)
    if (!sem1 && !sem2) return 1;
    80007464:	01053783          	ld	a5,16(a0)
    80007468:	00078e63          	beqz	a5,80007484 <_ZN14_SemANDManager8sem_passEP4_Sem+0x38>
    else return 0;
    8000746c:	00000513          	li	a0,0
}
    80007470:	00813403          	ld	s0,8(sp)
    80007474:	01010113          	addi	sp,sp,16
    80007478:	00008067          	ret
    if (sem == sem1) sem1 = nullptr;
    8000747c:	00053823          	sd	zero,16(a0)
    80007480:	fe5ff06f          	j	80007464 <_ZN14_SemANDManager8sem_passEP4_Sem+0x18>
    if (!sem1 && !sem2) return 1;
    80007484:	01853783          	ld	a5,24(a0)
    80007488:	00078663          	beqz	a5,80007494 <_ZN14_SemANDManager8sem_passEP4_Sem+0x48>
    else return 0;
    8000748c:	00000513          	li	a0,0
    80007490:	fe1ff06f          	j	80007470 <_ZN14_SemANDManager8sem_passEP4_Sem+0x24>
    if (!sem1 && !sem2) return 1;
    80007494:	00100513          	li	a0,1
    80007498:	fd9ff06f          	j	80007470 <_ZN14_SemANDManager8sem_passEP4_Sem+0x24>

000000008000749c <_ZN12_WaitManagerD0Ev>:
_WaitManager::~_WaitManager() {}
    8000749c:	ff010113          	addi	sp,sp,-16
    800074a0:	00113423          	sd	ra,8(sp)
    800074a4:	00813023          	sd	s0,0(sp)
    800074a8:	01010413          	addi	s0,sp,16
    800074ac:	0000c097          	auipc	ra,0xc
    800074b0:	f8c080e7          	jalr	-116(ra) # 80013438 <_ZdlPv>
    800074b4:	00813083          	ld	ra,8(sp)
    800074b8:	00013403          	ld	s0,0(sp)
    800074bc:	01010113          	addi	sp,sp,16
    800074c0:	00008067          	ret

00000000800074c4 <_ZN11_SemManager9interruptEv>:
int _SemManager::interrupt() {
    800074c4:	fe010113          	addi	sp,sp,-32
    800074c8:	00113c23          	sd	ra,24(sp)
    800074cc:	00813823          	sd	s0,16(sp)
    800074d0:	00913423          	sd	s1,8(sp)
    800074d4:	02010413          	addi	s0,sp,32
    800074d8:	00050493          	mv	s1,a0
    sem->remove(myThread);
    800074dc:	00853583          	ld	a1,8(a0)
    800074e0:	01053503          	ld	a0,16(a0)
    800074e4:	ffffe097          	auipc	ra,0xffffe
    800074e8:	f0c080e7          	jalr	-244(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    sem = nullptr;
    800074ec:	0004b823          	sd	zero,16(s1)
}
    800074f0:	00100513          	li	a0,1
    800074f4:	01813083          	ld	ra,24(sp)
    800074f8:	01013403          	ld	s0,16(sp)
    800074fc:	00813483          	ld	s1,8(sp)
    80007500:	02010113          	addi	sp,sp,32
    80007504:	00008067          	ret

0000000080007508 <_ZN13_SemORManager8sem_passEP4_Sem>:
int _SemORManager::sem_pass(sem_t sem) {
    80007508:	fe010113          	addi	sp,sp,-32
    8000750c:	00113c23          	sd	ra,24(sp)
    80007510:	00813823          	sd	s0,16(sp)
    80007514:	00913423          	sd	s1,8(sp)
    80007518:	02010413          	addi	s0,sp,32
    8000751c:	00050493          	mv	s1,a0
    if (sem == sem1) sem2->remove(myThread);
    80007520:	01053503          	ld	a0,16(a0)
    80007524:	02b50863          	beq	a0,a1,80007554 <_ZN13_SemORManager8sem_passEP4_Sem+0x4c>
    else sem1->remove(myThread);
    80007528:	0084b583          	ld	a1,8(s1)
    8000752c:	ffffe097          	auipc	ra,0xffffe
    80007530:	ec4080e7          	jalr	-316(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    sem1 = sem2 = nullptr;
    80007534:	0004bc23          	sd	zero,24(s1)
    80007538:	0004b823          	sd	zero,16(s1)
}
    8000753c:	00100513          	li	a0,1
    80007540:	01813083          	ld	ra,24(sp)
    80007544:	01013403          	ld	s0,16(sp)
    80007548:	00813483          	ld	s1,8(sp)
    8000754c:	02010113          	addi	sp,sp,32
    80007550:	00008067          	ret
    if (sem == sem1) sem2->remove(myThread);
    80007554:	0084b583          	ld	a1,8(s1)
    80007558:	0184b503          	ld	a0,24(s1)
    8000755c:	ffffe097          	auipc	ra,0xffffe
    80007560:	e94080e7          	jalr	-364(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    80007564:	fd1ff06f          	j	80007534 <_ZN13_SemORManager8sem_passEP4_Sem+0x2c>

0000000080007568 <_ZN13_SemORManager9interruptEv>:
int _SemORManager::interrupt() {
    80007568:	fe010113          	addi	sp,sp,-32
    8000756c:	00113c23          	sd	ra,24(sp)
    80007570:	00813823          	sd	s0,16(sp)
    80007574:	00913423          	sd	s1,8(sp)
    80007578:	02010413          	addi	s0,sp,32
    8000757c:	00050493          	mv	s1,a0
    if (sem1) sem1->remove(myThread);
    80007580:	01053503          	ld	a0,16(a0)
    80007584:	00050863          	beqz	a0,80007594 <_ZN13_SemORManager9interruptEv+0x2c>
    80007588:	0084b583          	ld	a1,8(s1)
    8000758c:	ffffe097          	auipc	ra,0xffffe
    80007590:	e64080e7          	jalr	-412(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    if (sem2) sem2->remove(myThread);
    80007594:	0184b503          	ld	a0,24(s1)
    80007598:	00050863          	beqz	a0,800075a8 <_ZN13_SemORManager9interruptEv+0x40>
    8000759c:	0084b583          	ld	a1,8(s1)
    800075a0:	ffffe097          	auipc	ra,0xffffe
    800075a4:	e50080e7          	jalr	-432(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    sem1 = sem2 = nullptr;
    800075a8:	0004bc23          	sd	zero,24(s1)
    800075ac:	0004b823          	sd	zero,16(s1)
}
    800075b0:	00100513          	li	a0,1
    800075b4:	01813083          	ld	ra,24(sp)
    800075b8:	01013403          	ld	s0,16(sp)
    800075bc:	00813483          	ld	s1,8(sp)
    800075c0:	02010113          	addi	sp,sp,32
    800075c4:	00008067          	ret

00000000800075c8 <_ZN14_SemANDManager9interruptEv>:
int _SemANDManager::interrupt() {
    800075c8:	fe010113          	addi	sp,sp,-32
    800075cc:	00113c23          	sd	ra,24(sp)
    800075d0:	00813823          	sd	s0,16(sp)
    800075d4:	00913423          	sd	s1,8(sp)
    800075d8:	02010413          	addi	s0,sp,32
    800075dc:	00050493          	mv	s1,a0
    if (sem1) sem1->remove(myThread);
    800075e0:	01053503          	ld	a0,16(a0)
    800075e4:	00050863          	beqz	a0,800075f4 <_ZN14_SemANDManager9interruptEv+0x2c>
    800075e8:	0084b583          	ld	a1,8(s1)
    800075ec:	ffffe097          	auipc	ra,0xffffe
    800075f0:	e04080e7          	jalr	-508(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    if (sem2) sem2->remove(myThread);
    800075f4:	0184b503          	ld	a0,24(s1)
    800075f8:	00050863          	beqz	a0,80007608 <_ZN14_SemANDManager9interruptEv+0x40>
    800075fc:	0084b583          	ld	a1,8(s1)
    80007600:	ffffe097          	auipc	ra,0xffffe
    80007604:	df0080e7          	jalr	-528(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    sem1 = sem2 = nullptr;
    80007608:	0004bc23          	sd	zero,24(s1)
    8000760c:	0004b823          	sd	zero,16(s1)
    return 1;
}
    80007610:	00100513          	li	a0,1
    80007614:	01813083          	ld	ra,24(sp)
    80007618:	01013403          	ld	s0,16(sp)
    8000761c:	00813483          	ld	s1,8(sp)
    80007620:	02010113          	addi	sp,sp,32
    80007624:	00008067          	ret

0000000080007628 <_ZN13_SleepManager9interruptEv>:
int _SleepManager::interrupt() {
    80007628:	ff010113          	addi	sp,sp,-16
    8000762c:	00113423          	sd	ra,8(sp)
    80007630:	00813023          	sd	s0,0(sp)
    80007634:	01010413          	addi	s0,sp,16
    _Sleep::remove(myThread);
    80007638:	00853503          	ld	a0,8(a0)
    8000763c:	ffffa097          	auipc	ra,0xffffa
    80007640:	6a4080e7          	jalr	1700(ra) # 80001ce0 <_ZN6_Sleep6removeEP7_Thread>
}
    80007644:	00100513          	li	a0,1
    80007648:	00813083          	ld	ra,8(sp)
    8000764c:	00013403          	ld	s0,0(sp)
    80007650:	01010113          	addi	sp,sp,16
    80007654:	00008067          	ret

0000000080007658 <_ZN16_SemSleepManager8sem_passEP4_Sem>:

_SemSleepManager::_SemSleepManager(thread_t my_thread, sem_t sem) : _WaitManager(my_thread), sem(sem) {}
kmem_cache_t* _SemSleepManager::cache = nullptr;
int _SemSleepManager::sem_pass(sem_t sem) {
    80007658:	ff010113          	addi	sp,sp,-16
    8000765c:	00113423          	sd	ra,8(sp)
    80007660:	00813023          	sd	s0,0(sp)
    80007664:	01010413          	addi	s0,sp,16
    this->sem = nullptr;
    80007668:	00053823          	sd	zero,16(a0)
    _Sleep::remove(myThread);
    8000766c:	00853503          	ld	a0,8(a0)
    80007670:	ffffa097          	auipc	ra,0xffffa
    80007674:	670080e7          	jalr	1648(ra) # 80001ce0 <_ZN6_Sleep6removeEP7_Thread>
    return 1;
}
    80007678:	00100513          	li	a0,1
    8000767c:	00813083          	ld	ra,8(sp)
    80007680:	00013403          	ld	s0,0(sp)
    80007684:	01010113          	addi	sp,sp,16
    80007688:	00008067          	ret

000000008000768c <_ZN16_SemSleepManager9interruptEv>:
    sem->remove(myThread);
    sem = nullptr;
    myThread->limitReach();
    return 1;
}
int _SemSleepManager::interrupt() {
    8000768c:	fe010113          	addi	sp,sp,-32
    80007690:	00113c23          	sd	ra,24(sp)
    80007694:	00813823          	sd	s0,16(sp)
    80007698:	00913423          	sd	s1,8(sp)
    8000769c:	02010413          	addi	s0,sp,32
    800076a0:	00050493          	mv	s1,a0
    sem->remove(myThread);
    800076a4:	00853583          	ld	a1,8(a0)
    800076a8:	01053503          	ld	a0,16(a0)
    800076ac:	ffffe097          	auipc	ra,0xffffe
    800076b0:	d44080e7          	jalr	-700(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    sem = nullptr;
    800076b4:	0004b823          	sd	zero,16(s1)
    _Sleep::remove(myThread);
    800076b8:	0084b503          	ld	a0,8(s1)
    800076bc:	ffffa097          	auipc	ra,0xffffa
    800076c0:	624080e7          	jalr	1572(ra) # 80001ce0 <_ZN6_Sleep6removeEP7_Thread>
    return 1;
}
    800076c4:	00100513          	li	a0,1
    800076c8:	01813083          	ld	ra,24(sp)
    800076cc:	01013403          	ld	s0,16(sp)
    800076d0:	00813483          	ld	s1,8(sp)
    800076d4:	02010113          	addi	sp,sp,32
    800076d8:	00008067          	ret

00000000800076dc <_ZN17_JoinSleepManager9join_passEv>:

_JoinSleepManager::_JoinSleepManager(thread_t my_thread, thread_t join_thread) : _WaitManager(my_thread), join_thread(join_thread) {}
kmem_cache_t* _JoinSleepManager::cache = nullptr;
int _JoinSleepManager::join_pass() {
    800076dc:	ff010113          	addi	sp,sp,-16
    800076e0:	00113423          	sd	ra,8(sp)
    800076e4:	00813023          	sd	s0,0(sp)
    800076e8:	01010413          	addi	s0,sp,16
    join_thread = nullptr;
    800076ec:	00053823          	sd	zero,16(a0)
    _Sleep::remove(myThread);
    800076f0:	00853503          	ld	a0,8(a0)
    800076f4:	ffffa097          	auipc	ra,0xffffa
    800076f8:	5ec080e7          	jalr	1516(ra) # 80001ce0 <_ZN6_Sleep6removeEP7_Thread>
    return 1;
}
    800076fc:	00100513          	li	a0,1
    80007700:	00813083          	ld	ra,8(sp)
    80007704:	00013403          	ld	s0,0(sp)
    80007708:	01010113          	addi	sp,sp,16
    8000770c:	00008067          	ret

0000000080007710 <_ZN18_SemORSleepManager8sem_passEP4_Sem>:
    return 1;
}

_SemORSleepManager::_SemORSleepManager(thread_t my_thread, sem_t sem1, sem_t sem2) : _WaitManager(my_thread), sem1(sem1), sem2(sem2) {}
kmem_cache_t* _SemORSleepManager::cache = nullptr;
int _SemORSleepManager::sem_pass(sem_t sem) {
    80007710:	fe010113          	addi	sp,sp,-32
    80007714:	00113c23          	sd	ra,24(sp)
    80007718:	00813823          	sd	s0,16(sp)
    8000771c:	00913423          	sd	s1,8(sp)
    80007720:	02010413          	addi	s0,sp,32
    80007724:	00050493          	mv	s1,a0
    if (sem == sem1) sem2->remove(myThread);
    80007728:	01053503          	ld	a0,16(a0)
    8000772c:	02b50e63          	beq	a0,a1,80007768 <_ZN18_SemORSleepManager8sem_passEP4_Sem+0x58>
    else sem1->remove(myThread);
    80007730:	0084b583          	ld	a1,8(s1)
    80007734:	ffffe097          	auipc	ra,0xffffe
    80007738:	cbc080e7          	jalr	-836(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    sem1 = sem2 = nullptr;
    8000773c:	0004bc23          	sd	zero,24(s1)
    80007740:	0004b823          	sd	zero,16(s1)
    _Sleep::remove(myThread);
    80007744:	0084b503          	ld	a0,8(s1)
    80007748:	ffffa097          	auipc	ra,0xffffa
    8000774c:	598080e7          	jalr	1432(ra) # 80001ce0 <_ZN6_Sleep6removeEP7_Thread>
    return 1;
}
    80007750:	00100513          	li	a0,1
    80007754:	01813083          	ld	ra,24(sp)
    80007758:	01013403          	ld	s0,16(sp)
    8000775c:	00813483          	ld	s1,8(sp)
    80007760:	02010113          	addi	sp,sp,32
    80007764:	00008067          	ret
    if (sem == sem1) sem2->remove(myThread);
    80007768:	0084b583          	ld	a1,8(s1)
    8000776c:	0184b503          	ld	a0,24(s1)
    80007770:	ffffe097          	auipc	ra,0xffffe
    80007774:	c80080e7          	jalr	-896(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    80007778:	fc5ff06f          	j	8000773c <_ZN18_SemORSleepManager8sem_passEP4_Sem+0x2c>

000000008000777c <_ZN18_SemORSleepManager9interruptEv>:
    sem2->remove(myThread);
    sem1 = sem2 = nullptr;
    myThread->limitReach();
    return 1;
}
int _SemORSleepManager::interrupt() {
    8000777c:	fe010113          	addi	sp,sp,-32
    80007780:	00113c23          	sd	ra,24(sp)
    80007784:	00813823          	sd	s0,16(sp)
    80007788:	00913423          	sd	s1,8(sp)
    8000778c:	02010413          	addi	s0,sp,32
    80007790:	00050493          	mv	s1,a0
    sem1->remove(myThread);
    80007794:	00853583          	ld	a1,8(a0)
    80007798:	01053503          	ld	a0,16(a0)
    8000779c:	ffffe097          	auipc	ra,0xffffe
    800077a0:	c54080e7          	jalr	-940(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    sem2->remove(myThread);
    800077a4:	0084b583          	ld	a1,8(s1)
    800077a8:	0184b503          	ld	a0,24(s1)
    800077ac:	ffffe097          	auipc	ra,0xffffe
    800077b0:	c44080e7          	jalr	-956(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    sem1 = sem2 = nullptr;
    800077b4:	0004bc23          	sd	zero,24(s1)
    800077b8:	0004b823          	sd	zero,16(s1)
    _Sleep::remove(myThread);
    800077bc:	0084b503          	ld	a0,8(s1)
    800077c0:	ffffa097          	auipc	ra,0xffffa
    800077c4:	520080e7          	jalr	1312(ra) # 80001ce0 <_ZN6_Sleep6removeEP7_Thread>
    return 1;
}
    800077c8:	00100513          	li	a0,1
    800077cc:	01813083          	ld	ra,24(sp)
    800077d0:	01013403          	ld	s0,16(sp)
    800077d4:	00813483          	ld	s1,8(sp)
    800077d8:	02010113          	addi	sp,sp,32
    800077dc:	00008067          	ret

00000000800077e0 <_ZN19_SemANDSleepManager8sem_passEP4_Sem>:

_SemANDSleepManager::_SemANDSleepManager(thread_t my_thread, sem_t sem1, sem_t sem2) : _WaitManager(my_thread), sem1(sem1), sem2(sem2) {}
kmem_cache_t* _SemANDSleepManager::cache = nullptr;
int _SemANDSleepManager::sem_pass(sem_t sem) {
    if (sem == sem1) sem1 = nullptr;
    800077e0:	01053783          	ld	a5,16(a0)
    800077e4:	00b78c63          	beq	a5,a1,800077fc <_ZN19_SemANDSleepManager8sem_passEP4_Sem+0x1c>
    else sem2 = nullptr;
    800077e8:	00053c23          	sd	zero,24(a0)
    if (!sem1 && !sem2) {
    800077ec:	01053783          	ld	a5,16(a0)
    800077f0:	00078a63          	beqz	a5,80007804 <_ZN19_SemANDSleepManager8sem_passEP4_Sem+0x24>
        _Sleep::remove(myThread);
        return 1;
    }
    return 0;
    800077f4:	00000513          	li	a0,0
    800077f8:	00008067          	ret
    if (sem == sem1) sem1 = nullptr;
    800077fc:	00053823          	sd	zero,16(a0)
    80007800:	fedff06f          	j	800077ec <_ZN19_SemANDSleepManager8sem_passEP4_Sem+0xc>
    if (!sem1 && !sem2) {
    80007804:	01853783          	ld	a5,24(a0)
    80007808:	00078663          	beqz	a5,80007814 <_ZN19_SemANDSleepManager8sem_passEP4_Sem+0x34>
    return 0;
    8000780c:	00000513          	li	a0,0
}
    80007810:	00008067          	ret
int _SemANDSleepManager::sem_pass(sem_t sem) {
    80007814:	ff010113          	addi	sp,sp,-16
    80007818:	00113423          	sd	ra,8(sp)
    8000781c:	00813023          	sd	s0,0(sp)
    80007820:	01010413          	addi	s0,sp,16
        _Sleep::remove(myThread);
    80007824:	00853503          	ld	a0,8(a0)
    80007828:	ffffa097          	auipc	ra,0xffffa
    8000782c:	4b8080e7          	jalr	1208(ra) # 80001ce0 <_ZN6_Sleep6removeEP7_Thread>
        return 1;
    80007830:	00100513          	li	a0,1
}
    80007834:	00813083          	ld	ra,8(sp)
    80007838:	00013403          	ld	s0,0(sp)
    8000783c:	01010113          	addi	sp,sp,16
    80007840:	00008067          	ret

0000000080007844 <_ZN19_SemANDSleepManager9interruptEv>:
    if (sem2) sem2->remove(myThread);
    sem1 = sem2 = nullptr;
    myThread->limitReach();
    return 1;
}
int _SemANDSleepManager::interrupt() {
    80007844:	fe010113          	addi	sp,sp,-32
    80007848:	00113c23          	sd	ra,24(sp)
    8000784c:	00813823          	sd	s0,16(sp)
    80007850:	00913423          	sd	s1,8(sp)
    80007854:	02010413          	addi	s0,sp,32
    80007858:	00050493          	mv	s1,a0
    if (sem1) sem1->remove(myThread);
    8000785c:	01053503          	ld	a0,16(a0)
    80007860:	00050863          	beqz	a0,80007870 <_ZN19_SemANDSleepManager9interruptEv+0x2c>
    80007864:	0084b583          	ld	a1,8(s1)
    80007868:	ffffe097          	auipc	ra,0xffffe
    8000786c:	b88080e7          	jalr	-1144(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    if (sem2) sem2->remove(myThread);
    80007870:	0184b503          	ld	a0,24(s1)
    80007874:	00050863          	beqz	a0,80007884 <_ZN19_SemANDSleepManager9interruptEv+0x40>
    80007878:	0084b583          	ld	a1,8(s1)
    8000787c:	ffffe097          	auipc	ra,0xffffe
    80007880:	b74080e7          	jalr	-1164(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    sem1 = sem2 = nullptr;
    80007884:	0004bc23          	sd	zero,24(s1)
    80007888:	0004b823          	sd	zero,16(s1)
    _Sleep::remove(myThread);
    8000788c:	0084b503          	ld	a0,8(s1)
    80007890:	ffffa097          	auipc	ra,0xffffa
    80007894:	450080e7          	jalr	1104(ra) # 80001ce0 <_ZN6_Sleep6removeEP7_Thread>
    return 1;
    80007898:	00100513          	li	a0,1
    8000789c:	01813083          	ld	ra,24(sp)
    800078a0:	01013403          	ld	s0,16(sp)
    800078a4:	00813483          	ld	s1,8(sp)
    800078a8:	02010113          	addi	sp,sp,32
    800078ac:	00008067          	ret

00000000800078b0 <_ZN12_JoinManager9interruptEv>:
int _JoinManager::interrupt() {
    800078b0:	fe010113          	addi	sp,sp,-32
    800078b4:	00113c23          	sd	ra,24(sp)
    800078b8:	00813823          	sd	s0,16(sp)
    800078bc:	00913423          	sd	s1,8(sp)
    800078c0:	02010413          	addi	s0,sp,32
    800078c4:	00050493          	mv	s1,a0
    join_thread->parentWaitStop();
    800078c8:	01053503          	ld	a0,16(a0)
    800078cc:	ffffc097          	auipc	ra,0xffffc
    800078d0:	344080e7          	jalr	836(ra) # 80003c10 <_ZN7_Thread14parentWaitStopEv>
    join_thread = nullptr;
    800078d4:	0004b823          	sd	zero,16(s1)
}
    800078d8:	00100513          	li	a0,1
    800078dc:	01813083          	ld	ra,24(sp)
    800078e0:	01013403          	ld	s0,16(sp)
    800078e4:	00813483          	ld	s1,8(sp)
    800078e8:	02010113          	addi	sp,sp,32
    800078ec:	00008067          	ret

00000000800078f0 <_ZN17_JoinSleepManager9interruptEv>:
int _JoinSleepManager::interrupt() {
    800078f0:	fe010113          	addi	sp,sp,-32
    800078f4:	00113c23          	sd	ra,24(sp)
    800078f8:	00813823          	sd	s0,16(sp)
    800078fc:	00913423          	sd	s1,8(sp)
    80007900:	02010413          	addi	s0,sp,32
    80007904:	00050493          	mv	s1,a0
    join_thread->parentWaitStop();
    80007908:	01053503          	ld	a0,16(a0)
    8000790c:	ffffc097          	auipc	ra,0xffffc
    80007910:	304080e7          	jalr	772(ra) # 80003c10 <_ZN7_Thread14parentWaitStopEv>
    join_thread = nullptr;
    80007914:	0004b823          	sd	zero,16(s1)
    _Sleep::remove(myThread);
    80007918:	0084b503          	ld	a0,8(s1)
    8000791c:	ffffa097          	auipc	ra,0xffffa
    80007920:	3c4080e7          	jalr	964(ra) # 80001ce0 <_ZN6_Sleep6removeEP7_Thread>
}
    80007924:	00100513          	li	a0,1
    80007928:	01813083          	ld	ra,24(sp)
    8000792c:	01013403          	ld	s0,16(sp)
    80007930:	00813483          	ld	s1,8(sp)
    80007934:	02010113          	addi	sp,sp,32
    80007938:	00008067          	ret

000000008000793c <_ZN16_SemSleepManager10sleep_passEv>:
int _SemSleepManager::sleep_pass() {
    8000793c:	fe010113          	addi	sp,sp,-32
    80007940:	00113c23          	sd	ra,24(sp)
    80007944:	00813823          	sd	s0,16(sp)
    80007948:	00913423          	sd	s1,8(sp)
    8000794c:	02010413          	addi	s0,sp,32
    80007950:	00050493          	mv	s1,a0
    sem->remove(myThread);
    80007954:	00853583          	ld	a1,8(a0)
    80007958:	01053503          	ld	a0,16(a0)
    8000795c:	ffffe097          	auipc	ra,0xffffe
    80007960:	a94080e7          	jalr	-1388(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    sem = nullptr;
    80007964:	0004b823          	sd	zero,16(s1)
    myThread->limitReach();
    80007968:	0084b503          	ld	a0,8(s1)
    8000796c:	ffffd097          	auipc	ra,0xffffd
    80007970:	b74080e7          	jalr	-1164(ra) # 800044e0 <_ZN7_Thread10limitReachEv>
}
    80007974:	00100513          	li	a0,1
    80007978:	01813083          	ld	ra,24(sp)
    8000797c:	01013403          	ld	s0,16(sp)
    80007980:	00813483          	ld	s1,8(sp)
    80007984:	02010113          	addi	sp,sp,32
    80007988:	00008067          	ret

000000008000798c <_ZN17_JoinSleepManager10sleep_passEv>:
int _JoinSleepManager::sleep_pass() {
    8000798c:	fe010113          	addi	sp,sp,-32
    80007990:	00113c23          	sd	ra,24(sp)
    80007994:	00813823          	sd	s0,16(sp)
    80007998:	00913423          	sd	s1,8(sp)
    8000799c:	02010413          	addi	s0,sp,32
    800079a0:	00050493          	mv	s1,a0
    join_thread->parentWaitStop();
    800079a4:	01053503          	ld	a0,16(a0)
    800079a8:	ffffc097          	auipc	ra,0xffffc
    800079ac:	268080e7          	jalr	616(ra) # 80003c10 <_ZN7_Thread14parentWaitStopEv>
    join_thread = nullptr;
    800079b0:	0004b823          	sd	zero,16(s1)
    myThread->limitReach();
    800079b4:	0084b503          	ld	a0,8(s1)
    800079b8:	ffffd097          	auipc	ra,0xffffd
    800079bc:	b28080e7          	jalr	-1240(ra) # 800044e0 <_ZN7_Thread10limitReachEv>
}
    800079c0:	00100513          	li	a0,1
    800079c4:	01813083          	ld	ra,24(sp)
    800079c8:	01013403          	ld	s0,16(sp)
    800079cc:	00813483          	ld	s1,8(sp)
    800079d0:	02010113          	addi	sp,sp,32
    800079d4:	00008067          	ret

00000000800079d8 <_ZN18_SemORSleepManager10sleep_passEv>:
int _SemORSleepManager::sleep_pass() {
    800079d8:	fe010113          	addi	sp,sp,-32
    800079dc:	00113c23          	sd	ra,24(sp)
    800079e0:	00813823          	sd	s0,16(sp)
    800079e4:	00913423          	sd	s1,8(sp)
    800079e8:	02010413          	addi	s0,sp,32
    800079ec:	00050493          	mv	s1,a0
    sem1->remove(myThread);
    800079f0:	00853583          	ld	a1,8(a0)
    800079f4:	01053503          	ld	a0,16(a0)
    800079f8:	ffffe097          	auipc	ra,0xffffe
    800079fc:	9f8080e7          	jalr	-1544(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    sem2->remove(myThread);
    80007a00:	0084b583          	ld	a1,8(s1)
    80007a04:	0184b503          	ld	a0,24(s1)
    80007a08:	ffffe097          	auipc	ra,0xffffe
    80007a0c:	9e8080e7          	jalr	-1560(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    sem1 = sem2 = nullptr;
    80007a10:	0004bc23          	sd	zero,24(s1)
    80007a14:	0004b823          	sd	zero,16(s1)
    myThread->limitReach();
    80007a18:	0084b503          	ld	a0,8(s1)
    80007a1c:	ffffd097          	auipc	ra,0xffffd
    80007a20:	ac4080e7          	jalr	-1340(ra) # 800044e0 <_ZN7_Thread10limitReachEv>
}
    80007a24:	00100513          	li	a0,1
    80007a28:	01813083          	ld	ra,24(sp)
    80007a2c:	01013403          	ld	s0,16(sp)
    80007a30:	00813483          	ld	s1,8(sp)
    80007a34:	02010113          	addi	sp,sp,32
    80007a38:	00008067          	ret

0000000080007a3c <_ZN19_SemANDSleepManager10sleep_passEv>:
int _SemANDSleepManager::sleep_pass() {
    80007a3c:	fe010113          	addi	sp,sp,-32
    80007a40:	00113c23          	sd	ra,24(sp)
    80007a44:	00813823          	sd	s0,16(sp)
    80007a48:	00913423          	sd	s1,8(sp)
    80007a4c:	02010413          	addi	s0,sp,32
    80007a50:	00050493          	mv	s1,a0
    if (sem1) sem1->remove(myThread);
    80007a54:	01053503          	ld	a0,16(a0)
    80007a58:	00050863          	beqz	a0,80007a68 <_ZN19_SemANDSleepManager10sleep_passEv+0x2c>
    80007a5c:	0084b583          	ld	a1,8(s1)
    80007a60:	ffffe097          	auipc	ra,0xffffe
    80007a64:	990080e7          	jalr	-1648(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    if (sem2) sem2->remove(myThread);
    80007a68:	0184b503          	ld	a0,24(s1)
    80007a6c:	00050863          	beqz	a0,80007a7c <_ZN19_SemANDSleepManager10sleep_passEv+0x40>
    80007a70:	0084b583          	ld	a1,8(s1)
    80007a74:	ffffe097          	auipc	ra,0xffffe
    80007a78:	97c080e7          	jalr	-1668(ra) # 800053f0 <_ZN4_Sem6removeEP7_Thread>
    sem1 = sem2 = nullptr;
    80007a7c:	0004bc23          	sd	zero,24(s1)
    80007a80:	0004b823          	sd	zero,16(s1)
    myThread->limitReach();
    80007a84:	0084b503          	ld	a0,8(s1)
    80007a88:	ffffd097          	auipc	ra,0xffffd
    80007a8c:	a58080e7          	jalr	-1448(ra) # 800044e0 <_ZN7_Thread10limitReachEv>
}
    80007a90:	00100513          	li	a0,1
    80007a94:	01813083          	ld	ra,24(sp)
    80007a98:	01013403          	ld	s0,16(sp)
    80007a9c:	00813483          	ld	s1,8(sp)
    80007aa0:	02010113          	addi	sp,sp,32
    80007aa4:	00008067          	ret

0000000080007aa8 <_ZN12_WaitManagerC1EP7_Thread>:
_WaitManager::_WaitManager(thread_t my_thread) : myThread(my_thread) {}
    80007aa8:	ff010113          	addi	sp,sp,-16
    80007aac:	00813423          	sd	s0,8(sp)
    80007ab0:	01010413          	addi	s0,sp,16
    80007ab4:	00008797          	auipc	a5,0x8
    80007ab8:	c9c78793          	addi	a5,a5,-868 # 8000f750 <_ZTV12_WaitManager+0x10>
    80007abc:	00f53023          	sd	a5,0(a0)
    80007ac0:	00b53423          	sd	a1,8(a0)
    80007ac4:	00813403          	ld	s0,8(sp)
    80007ac8:	01010113          	addi	sp,sp,16
    80007acc:	00008067          	ret

0000000080007ad0 <_ZN11_SemManagerC1EP7_ThreadP4_Sem>:
_SemManager::_SemManager(thread_t my_thread, sem_t sem) : _WaitManager(my_thread), sem(sem) {}
    80007ad0:	fe010113          	addi	sp,sp,-32
    80007ad4:	00113c23          	sd	ra,24(sp)
    80007ad8:	00813823          	sd	s0,16(sp)
    80007adc:	00913423          	sd	s1,8(sp)
    80007ae0:	01213023          	sd	s2,0(sp)
    80007ae4:	02010413          	addi	s0,sp,32
    80007ae8:	00050493          	mv	s1,a0
    80007aec:	00060913          	mv	s2,a2
    80007af0:	00000097          	auipc	ra,0x0
    80007af4:	fb8080e7          	jalr	-72(ra) # 80007aa8 <_ZN12_WaitManagerC1EP7_Thread>
    80007af8:	00008797          	auipc	a5,0x8
    80007afc:	c9878793          	addi	a5,a5,-872 # 8000f790 <_ZTV11_SemManager+0x10>
    80007b00:	00f4b023          	sd	a5,0(s1)
    80007b04:	0124b823          	sd	s2,16(s1)
    80007b08:	01813083          	ld	ra,24(sp)
    80007b0c:	01013403          	ld	s0,16(sp)
    80007b10:	00813483          	ld	s1,8(sp)
    80007b14:	00013903          	ld	s2,0(sp)
    80007b18:	02010113          	addi	sp,sp,32
    80007b1c:	00008067          	ret

0000000080007b20 <_ZN13_SleepManagerC1EP7_Thread>:
_SleepManager::_SleepManager(thread_t my_thread) : _WaitManager(my_thread) {}
    80007b20:	fe010113          	addi	sp,sp,-32
    80007b24:	00113c23          	sd	ra,24(sp)
    80007b28:	00813823          	sd	s0,16(sp)
    80007b2c:	00913423          	sd	s1,8(sp)
    80007b30:	02010413          	addi	s0,sp,32
    80007b34:	00050493          	mv	s1,a0
    80007b38:	00000097          	auipc	ra,0x0
    80007b3c:	f70080e7          	jalr	-144(ra) # 80007aa8 <_ZN12_WaitManagerC1EP7_Thread>
    80007b40:	00008797          	auipc	a5,0x8
    80007b44:	c9078793          	addi	a5,a5,-880 # 8000f7d0 <_ZTV13_SleepManager+0x10>
    80007b48:	00f4b023          	sd	a5,0(s1)
    80007b4c:	01813083          	ld	ra,24(sp)
    80007b50:	01013403          	ld	s0,16(sp)
    80007b54:	00813483          	ld	s1,8(sp)
    80007b58:	02010113          	addi	sp,sp,32
    80007b5c:	00008067          	ret

0000000080007b60 <_ZN12_JoinManagerC1EP7_ThreadS1_>:
_JoinManager::_JoinManager(thread_t my_thread, thread_t join_thread) : _WaitManager(my_thread), join_thread(join_thread) {}
    80007b60:	fe010113          	addi	sp,sp,-32
    80007b64:	00113c23          	sd	ra,24(sp)
    80007b68:	00813823          	sd	s0,16(sp)
    80007b6c:	00913423          	sd	s1,8(sp)
    80007b70:	01213023          	sd	s2,0(sp)
    80007b74:	02010413          	addi	s0,sp,32
    80007b78:	00050493          	mv	s1,a0
    80007b7c:	00060913          	mv	s2,a2
    80007b80:	00000097          	auipc	ra,0x0
    80007b84:	f28080e7          	jalr	-216(ra) # 80007aa8 <_ZN12_WaitManagerC1EP7_Thread>
    80007b88:	00008797          	auipc	a5,0x8
    80007b8c:	c8878793          	addi	a5,a5,-888 # 8000f810 <_ZTV12_JoinManager+0x10>
    80007b90:	00f4b023          	sd	a5,0(s1)
    80007b94:	0124b823          	sd	s2,16(s1)
    80007b98:	01813083          	ld	ra,24(sp)
    80007b9c:	01013403          	ld	s0,16(sp)
    80007ba0:	00813483          	ld	s1,8(sp)
    80007ba4:	00013903          	ld	s2,0(sp)
    80007ba8:	02010113          	addi	sp,sp,32
    80007bac:	00008067          	ret

0000000080007bb0 <_ZN13_SemORManagerC1EP7_ThreadP4_SemS3_>:
_SemORManager::_SemORManager(thread_t my_thread, sem_t sem1, sem_t sem2) : _WaitManager(my_thread), sem1(sem1), sem2(sem2) {}
    80007bb0:	fd010113          	addi	sp,sp,-48
    80007bb4:	02113423          	sd	ra,40(sp)
    80007bb8:	02813023          	sd	s0,32(sp)
    80007bbc:	00913c23          	sd	s1,24(sp)
    80007bc0:	01213823          	sd	s2,16(sp)
    80007bc4:	01313423          	sd	s3,8(sp)
    80007bc8:	03010413          	addi	s0,sp,48
    80007bcc:	00050493          	mv	s1,a0
    80007bd0:	00060993          	mv	s3,a2
    80007bd4:	00068913          	mv	s2,a3
    80007bd8:	00000097          	auipc	ra,0x0
    80007bdc:	ed0080e7          	jalr	-304(ra) # 80007aa8 <_ZN12_WaitManagerC1EP7_Thread>
    80007be0:	00008797          	auipc	a5,0x8
    80007be4:	c7078793          	addi	a5,a5,-912 # 8000f850 <_ZTV13_SemORManager+0x10>
    80007be8:	00f4b023          	sd	a5,0(s1)
    80007bec:	0134b823          	sd	s3,16(s1)
    80007bf0:	0124bc23          	sd	s2,24(s1)
    80007bf4:	02813083          	ld	ra,40(sp)
    80007bf8:	02013403          	ld	s0,32(sp)
    80007bfc:	01813483          	ld	s1,24(sp)
    80007c00:	01013903          	ld	s2,16(sp)
    80007c04:	00813983          	ld	s3,8(sp)
    80007c08:	03010113          	addi	sp,sp,48
    80007c0c:	00008067          	ret

0000000080007c10 <_ZN14_SemANDManagerC1EP7_ThreadP4_SemS3_>:
_SemANDManager::_SemANDManager(thread_t my_thread, sem_t sem1, sem_t sem2) : _WaitManager(my_thread), sem1(sem1), sem2(sem2) {}
    80007c10:	fd010113          	addi	sp,sp,-48
    80007c14:	02113423          	sd	ra,40(sp)
    80007c18:	02813023          	sd	s0,32(sp)
    80007c1c:	00913c23          	sd	s1,24(sp)
    80007c20:	01213823          	sd	s2,16(sp)
    80007c24:	01313423          	sd	s3,8(sp)
    80007c28:	03010413          	addi	s0,sp,48
    80007c2c:	00050493          	mv	s1,a0
    80007c30:	00060993          	mv	s3,a2
    80007c34:	00068913          	mv	s2,a3
    80007c38:	00000097          	auipc	ra,0x0
    80007c3c:	e70080e7          	jalr	-400(ra) # 80007aa8 <_ZN12_WaitManagerC1EP7_Thread>
    80007c40:	00008797          	auipc	a5,0x8
    80007c44:	c5078793          	addi	a5,a5,-944 # 8000f890 <_ZTV14_SemANDManager+0x10>
    80007c48:	00f4b023          	sd	a5,0(s1)
    80007c4c:	0134b823          	sd	s3,16(s1)
    80007c50:	0124bc23          	sd	s2,24(s1)
    80007c54:	02813083          	ld	ra,40(sp)
    80007c58:	02013403          	ld	s0,32(sp)
    80007c5c:	01813483          	ld	s1,24(sp)
    80007c60:	01013903          	ld	s2,16(sp)
    80007c64:	00813983          	ld	s3,8(sp)
    80007c68:	03010113          	addi	sp,sp,48
    80007c6c:	00008067          	ret

0000000080007c70 <_ZN16_SemSleepManagerC1EP7_ThreadP4_Sem>:
_SemSleepManager::_SemSleepManager(thread_t my_thread, sem_t sem) : _WaitManager(my_thread), sem(sem) {}
    80007c70:	fe010113          	addi	sp,sp,-32
    80007c74:	00113c23          	sd	ra,24(sp)
    80007c78:	00813823          	sd	s0,16(sp)
    80007c7c:	00913423          	sd	s1,8(sp)
    80007c80:	01213023          	sd	s2,0(sp)
    80007c84:	02010413          	addi	s0,sp,32
    80007c88:	00050493          	mv	s1,a0
    80007c8c:	00060913          	mv	s2,a2
    80007c90:	00000097          	auipc	ra,0x0
    80007c94:	e18080e7          	jalr	-488(ra) # 80007aa8 <_ZN12_WaitManagerC1EP7_Thread>
    80007c98:	00008797          	auipc	a5,0x8
    80007c9c:	c3878793          	addi	a5,a5,-968 # 8000f8d0 <_ZTV16_SemSleepManager+0x10>
    80007ca0:	00f4b023          	sd	a5,0(s1)
    80007ca4:	0124b823          	sd	s2,16(s1)
    80007ca8:	01813083          	ld	ra,24(sp)
    80007cac:	01013403          	ld	s0,16(sp)
    80007cb0:	00813483          	ld	s1,8(sp)
    80007cb4:	00013903          	ld	s2,0(sp)
    80007cb8:	02010113          	addi	sp,sp,32
    80007cbc:	00008067          	ret

0000000080007cc0 <_ZN17_JoinSleepManagerC1EP7_ThreadS1_>:
_JoinSleepManager::_JoinSleepManager(thread_t my_thread, thread_t join_thread) : _WaitManager(my_thread), join_thread(join_thread) {}
    80007cc0:	fe010113          	addi	sp,sp,-32
    80007cc4:	00113c23          	sd	ra,24(sp)
    80007cc8:	00813823          	sd	s0,16(sp)
    80007ccc:	00913423          	sd	s1,8(sp)
    80007cd0:	01213023          	sd	s2,0(sp)
    80007cd4:	02010413          	addi	s0,sp,32
    80007cd8:	00050493          	mv	s1,a0
    80007cdc:	00060913          	mv	s2,a2
    80007ce0:	00000097          	auipc	ra,0x0
    80007ce4:	dc8080e7          	jalr	-568(ra) # 80007aa8 <_ZN12_WaitManagerC1EP7_Thread>
    80007ce8:	00008797          	auipc	a5,0x8
    80007cec:	c2878793          	addi	a5,a5,-984 # 8000f910 <_ZTV17_JoinSleepManager+0x10>
    80007cf0:	00f4b023          	sd	a5,0(s1)
    80007cf4:	0124b823          	sd	s2,16(s1)
    80007cf8:	01813083          	ld	ra,24(sp)
    80007cfc:	01013403          	ld	s0,16(sp)
    80007d00:	00813483          	ld	s1,8(sp)
    80007d04:	00013903          	ld	s2,0(sp)
    80007d08:	02010113          	addi	sp,sp,32
    80007d0c:	00008067          	ret

0000000080007d10 <_ZN18_SemORSleepManagerC1EP7_ThreadP4_SemS3_>:
_SemORSleepManager::_SemORSleepManager(thread_t my_thread, sem_t sem1, sem_t sem2) : _WaitManager(my_thread), sem1(sem1), sem2(sem2) {}
    80007d10:	fd010113          	addi	sp,sp,-48
    80007d14:	02113423          	sd	ra,40(sp)
    80007d18:	02813023          	sd	s0,32(sp)
    80007d1c:	00913c23          	sd	s1,24(sp)
    80007d20:	01213823          	sd	s2,16(sp)
    80007d24:	01313423          	sd	s3,8(sp)
    80007d28:	03010413          	addi	s0,sp,48
    80007d2c:	00050493          	mv	s1,a0
    80007d30:	00060993          	mv	s3,a2
    80007d34:	00068913          	mv	s2,a3
    80007d38:	00000097          	auipc	ra,0x0
    80007d3c:	d70080e7          	jalr	-656(ra) # 80007aa8 <_ZN12_WaitManagerC1EP7_Thread>
    80007d40:	00008797          	auipc	a5,0x8
    80007d44:	c1078793          	addi	a5,a5,-1008 # 8000f950 <_ZTV18_SemORSleepManager+0x10>
    80007d48:	00f4b023          	sd	a5,0(s1)
    80007d4c:	0134b823          	sd	s3,16(s1)
    80007d50:	0124bc23          	sd	s2,24(s1)
    80007d54:	02813083          	ld	ra,40(sp)
    80007d58:	02013403          	ld	s0,32(sp)
    80007d5c:	01813483          	ld	s1,24(sp)
    80007d60:	01013903          	ld	s2,16(sp)
    80007d64:	00813983          	ld	s3,8(sp)
    80007d68:	03010113          	addi	sp,sp,48
    80007d6c:	00008067          	ret

0000000080007d70 <_ZN19_SemANDSleepManagerC1EP7_ThreadP4_SemS3_>:
_SemANDSleepManager::_SemANDSleepManager(thread_t my_thread, sem_t sem1, sem_t sem2) : _WaitManager(my_thread), sem1(sem1), sem2(sem2) {}
    80007d70:	fd010113          	addi	sp,sp,-48
    80007d74:	02113423          	sd	ra,40(sp)
    80007d78:	02813023          	sd	s0,32(sp)
    80007d7c:	00913c23          	sd	s1,24(sp)
    80007d80:	01213823          	sd	s2,16(sp)
    80007d84:	01313423          	sd	s3,8(sp)
    80007d88:	03010413          	addi	s0,sp,48
    80007d8c:	00050493          	mv	s1,a0
    80007d90:	00060993          	mv	s3,a2
    80007d94:	00068913          	mv	s2,a3
    80007d98:	00000097          	auipc	ra,0x0
    80007d9c:	d10080e7          	jalr	-752(ra) # 80007aa8 <_ZN12_WaitManagerC1EP7_Thread>
    80007da0:	00008797          	auipc	a5,0x8
    80007da4:	bf078793          	addi	a5,a5,-1040 # 8000f990 <_ZTV19_SemANDSleepManager+0x10>
    80007da8:	00f4b023          	sd	a5,0(s1)
    80007dac:	0134b823          	sd	s3,16(s1)
    80007db0:	0124bc23          	sd	s2,24(s1)
    80007db4:	02813083          	ld	ra,40(sp)
    80007db8:	02013403          	ld	s0,32(sp)
    80007dbc:	01813483          	ld	s1,24(sp)
    80007dc0:	01013903          	ld	s2,16(sp)
    80007dc4:	00813983          	ld	s3,8(sp)
    80007dc8:	03010113          	addi	sp,sp,48
    80007dcc:	00008067          	ret

0000000080007dd0 <_ZN19_SemANDSleepManagerD1Ev>:
class _SemANDSleepManager : public _WaitManager {
    80007dd0:	ff010113          	addi	sp,sp,-16
    80007dd4:	00813423          	sd	s0,8(sp)
    80007dd8:	01010413          	addi	s0,sp,16
    80007ddc:	00008797          	auipc	a5,0x8
    80007de0:	bb478793          	addi	a5,a5,-1100 # 8000f990 <_ZTV19_SemANDSleepManager+0x10>
    80007de4:	00f53023          	sd	a5,0(a0)
    80007de8:	00813403          	ld	s0,8(sp)
    80007dec:	01010113          	addi	sp,sp,16
    80007df0:	00008067          	ret

0000000080007df4 <_ZN18_SemORSleepManagerD1Ev>:
class _SemORSleepManager : public _WaitManager {
    80007df4:	ff010113          	addi	sp,sp,-16
    80007df8:	00813423          	sd	s0,8(sp)
    80007dfc:	01010413          	addi	s0,sp,16
    80007e00:	00008797          	auipc	a5,0x8
    80007e04:	b5078793          	addi	a5,a5,-1200 # 8000f950 <_ZTV18_SemORSleepManager+0x10>
    80007e08:	00f53023          	sd	a5,0(a0)
    80007e0c:	00813403          	ld	s0,8(sp)
    80007e10:	01010113          	addi	sp,sp,16
    80007e14:	00008067          	ret

0000000080007e18 <_ZN17_JoinSleepManagerD1Ev>:
class _JoinSleepManager : public _WaitManager {
    80007e18:	ff010113          	addi	sp,sp,-16
    80007e1c:	00813423          	sd	s0,8(sp)
    80007e20:	01010413          	addi	s0,sp,16
    80007e24:	00008797          	auipc	a5,0x8
    80007e28:	aec78793          	addi	a5,a5,-1300 # 8000f910 <_ZTV17_JoinSleepManager+0x10>
    80007e2c:	00f53023          	sd	a5,0(a0)
    80007e30:	00813403          	ld	s0,8(sp)
    80007e34:	01010113          	addi	sp,sp,16
    80007e38:	00008067          	ret

0000000080007e3c <_ZN16_SemSleepManagerD1Ev>:
class _SemSleepManager : public _WaitManager {
    80007e3c:	ff010113          	addi	sp,sp,-16
    80007e40:	00813423          	sd	s0,8(sp)
    80007e44:	01010413          	addi	s0,sp,16
    80007e48:	00008797          	auipc	a5,0x8
    80007e4c:	a8878793          	addi	a5,a5,-1400 # 8000f8d0 <_ZTV16_SemSleepManager+0x10>
    80007e50:	00f53023          	sd	a5,0(a0)
    80007e54:	00813403          	ld	s0,8(sp)
    80007e58:	01010113          	addi	sp,sp,16
    80007e5c:	00008067          	ret

0000000080007e60 <_ZN14_SemANDManagerD1Ev>:
class _SemANDManager : public _WaitManager {
    80007e60:	ff010113          	addi	sp,sp,-16
    80007e64:	00813423          	sd	s0,8(sp)
    80007e68:	01010413          	addi	s0,sp,16
    80007e6c:	00008797          	auipc	a5,0x8
    80007e70:	a2478793          	addi	a5,a5,-1500 # 8000f890 <_ZTV14_SemANDManager+0x10>
    80007e74:	00f53023          	sd	a5,0(a0)
    80007e78:	00813403          	ld	s0,8(sp)
    80007e7c:	01010113          	addi	sp,sp,16
    80007e80:	00008067          	ret

0000000080007e84 <_ZN13_SemORManagerD1Ev>:
class _SemORManager : public _WaitManager {
    80007e84:	ff010113          	addi	sp,sp,-16
    80007e88:	00813423          	sd	s0,8(sp)
    80007e8c:	01010413          	addi	s0,sp,16
    80007e90:	00008797          	auipc	a5,0x8
    80007e94:	9c078793          	addi	a5,a5,-1600 # 8000f850 <_ZTV13_SemORManager+0x10>
    80007e98:	00f53023          	sd	a5,0(a0)
    80007e9c:	00813403          	ld	s0,8(sp)
    80007ea0:	01010113          	addi	sp,sp,16
    80007ea4:	00008067          	ret

0000000080007ea8 <_ZN12_JoinManagerD1Ev>:
class _JoinManager : public _WaitManager {
    80007ea8:	ff010113          	addi	sp,sp,-16
    80007eac:	00813423          	sd	s0,8(sp)
    80007eb0:	01010413          	addi	s0,sp,16
    80007eb4:	00008797          	auipc	a5,0x8
    80007eb8:	95c78793          	addi	a5,a5,-1700 # 8000f810 <_ZTV12_JoinManager+0x10>
    80007ebc:	00f53023          	sd	a5,0(a0)
    80007ec0:	00813403          	ld	s0,8(sp)
    80007ec4:	01010113          	addi	sp,sp,16
    80007ec8:	00008067          	ret

0000000080007ecc <_ZN13_SleepManagerD1Ev>:
class _SleepManager : public _WaitManager {
    80007ecc:	ff010113          	addi	sp,sp,-16
    80007ed0:	00813423          	sd	s0,8(sp)
    80007ed4:	01010413          	addi	s0,sp,16
    80007ed8:	00008797          	auipc	a5,0x8
    80007edc:	8f878793          	addi	a5,a5,-1800 # 8000f7d0 <_ZTV13_SleepManager+0x10>
    80007ee0:	00f53023          	sd	a5,0(a0)
    80007ee4:	00813403          	ld	s0,8(sp)
    80007ee8:	01010113          	addi	sp,sp,16
    80007eec:	00008067          	ret

0000000080007ef0 <_ZN11_SemManagerD1Ev>:
class _SemManager : public _WaitManager {
    80007ef0:	ff010113          	addi	sp,sp,-16
    80007ef4:	00813423          	sd	s0,8(sp)
    80007ef8:	01010413          	addi	s0,sp,16
    80007efc:	00008797          	auipc	a5,0x8
    80007f00:	89478793          	addi	a5,a5,-1900 # 8000f790 <_ZTV11_SemManager+0x10>
    80007f04:	00f53023          	sd	a5,0(a0)
    80007f08:	00813403          	ld	s0,8(sp)
    80007f0c:	01010113          	addi	sp,sp,16
    80007f10:	00008067          	ret

0000000080007f14 <_ZN11_SemManagerD0Ev>:
    80007f14:	ff010113          	addi	sp,sp,-16
    80007f18:	00113423          	sd	ra,8(sp)
    80007f1c:	00813023          	sd	s0,0(sp)
    80007f20:	01010413          	addi	s0,sp,16
    80007f24:	00050593          	mv	a1,a0
    80007f28:	00008797          	auipc	a5,0x8
    80007f2c:	86878793          	addi	a5,a5,-1944 # 8000f790 <_ZTV11_SemManager+0x10>
    80007f30:	00f53023          	sd	a5,0(a0)
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    80007f34:	00008517          	auipc	a0,0x8
    80007f38:	b9c53503          	ld	a0,-1124(a0) # 8000fad0 <_ZN11_SemManager5cacheE>
    80007f3c:	ffff9097          	auipc	ra,0xffff9
    80007f40:	560080e7          	jalr	1376(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
class _SemManager : public _WaitManager {
    80007f44:	00813083          	ld	ra,8(sp)
    80007f48:	00013403          	ld	s0,0(sp)
    80007f4c:	01010113          	addi	sp,sp,16
    80007f50:	00008067          	ret

0000000080007f54 <_ZN13_SleepManagerD0Ev>:
class _SleepManager : public _WaitManager {
    80007f54:	ff010113          	addi	sp,sp,-16
    80007f58:	00113423          	sd	ra,8(sp)
    80007f5c:	00813023          	sd	s0,0(sp)
    80007f60:	01010413          	addi	s0,sp,16
    80007f64:	00050593          	mv	a1,a0
    80007f68:	00008797          	auipc	a5,0x8
    80007f6c:	86878793          	addi	a5,a5,-1944 # 8000f7d0 <_ZTV13_SleepManager+0x10>
    80007f70:	00f53023          	sd	a5,0(a0)
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    80007f74:	00008517          	auipc	a0,0x8
    80007f78:	b6453503          	ld	a0,-1180(a0) # 8000fad8 <_ZN13_SleepManager5cacheE>
    80007f7c:	ffff9097          	auipc	ra,0xffff9
    80007f80:	520080e7          	jalr	1312(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
class _SleepManager : public _WaitManager {
    80007f84:	00813083          	ld	ra,8(sp)
    80007f88:	00013403          	ld	s0,0(sp)
    80007f8c:	01010113          	addi	sp,sp,16
    80007f90:	00008067          	ret

0000000080007f94 <_ZN12_JoinManagerD0Ev>:
class _JoinManager : public _WaitManager {
    80007f94:	ff010113          	addi	sp,sp,-16
    80007f98:	00113423          	sd	ra,8(sp)
    80007f9c:	00813023          	sd	s0,0(sp)
    80007fa0:	01010413          	addi	s0,sp,16
    80007fa4:	00050593          	mv	a1,a0
    80007fa8:	00008797          	auipc	a5,0x8
    80007fac:	86878793          	addi	a5,a5,-1944 # 8000f810 <_ZTV12_JoinManager+0x10>
    80007fb0:	00f53023          	sd	a5,0(a0)
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    80007fb4:	00008517          	auipc	a0,0x8
    80007fb8:	b2c53503          	ld	a0,-1236(a0) # 8000fae0 <_ZN12_JoinManager5cacheE>
    80007fbc:	ffff9097          	auipc	ra,0xffff9
    80007fc0:	4e0080e7          	jalr	1248(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
class _JoinManager : public _WaitManager {
    80007fc4:	00813083          	ld	ra,8(sp)
    80007fc8:	00013403          	ld	s0,0(sp)
    80007fcc:	01010113          	addi	sp,sp,16
    80007fd0:	00008067          	ret

0000000080007fd4 <_ZN13_SemORManagerD0Ev>:
class _SemORManager : public _WaitManager {
    80007fd4:	ff010113          	addi	sp,sp,-16
    80007fd8:	00113423          	sd	ra,8(sp)
    80007fdc:	00813023          	sd	s0,0(sp)
    80007fe0:	01010413          	addi	s0,sp,16
    80007fe4:	00050593          	mv	a1,a0
    80007fe8:	00008797          	auipc	a5,0x8
    80007fec:	86878793          	addi	a5,a5,-1944 # 8000f850 <_ZTV13_SemORManager+0x10>
    80007ff0:	00f53023          	sd	a5,0(a0)
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    80007ff4:	00008517          	auipc	a0,0x8
    80007ff8:	af453503          	ld	a0,-1292(a0) # 8000fae8 <_ZN13_SemORManager5cacheE>
    80007ffc:	ffff9097          	auipc	ra,0xffff9
    80008000:	4a0080e7          	jalr	1184(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
class _SemORManager : public _WaitManager {
    80008004:	00813083          	ld	ra,8(sp)
    80008008:	00013403          	ld	s0,0(sp)
    8000800c:	01010113          	addi	sp,sp,16
    80008010:	00008067          	ret

0000000080008014 <_ZN14_SemANDManagerD0Ev>:
class _SemANDManager : public _WaitManager {
    80008014:	ff010113          	addi	sp,sp,-16
    80008018:	00113423          	sd	ra,8(sp)
    8000801c:	00813023          	sd	s0,0(sp)
    80008020:	01010413          	addi	s0,sp,16
    80008024:	00050593          	mv	a1,a0
    80008028:	00008797          	auipc	a5,0x8
    8000802c:	86878793          	addi	a5,a5,-1944 # 8000f890 <_ZTV14_SemANDManager+0x10>
    80008030:	00f53023          	sd	a5,0(a0)
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    80008034:	00008517          	auipc	a0,0x8
    80008038:	abc53503          	ld	a0,-1348(a0) # 8000faf0 <_ZN14_SemANDManager5cacheE>
    8000803c:	ffff9097          	auipc	ra,0xffff9
    80008040:	460080e7          	jalr	1120(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
class _SemANDManager : public _WaitManager {
    80008044:	00813083          	ld	ra,8(sp)
    80008048:	00013403          	ld	s0,0(sp)
    8000804c:	01010113          	addi	sp,sp,16
    80008050:	00008067          	ret

0000000080008054 <_ZN16_SemSleepManagerD0Ev>:
class _SemSleepManager : public _WaitManager {
    80008054:	ff010113          	addi	sp,sp,-16
    80008058:	00113423          	sd	ra,8(sp)
    8000805c:	00813023          	sd	s0,0(sp)
    80008060:	01010413          	addi	s0,sp,16
    80008064:	00050593          	mv	a1,a0
    80008068:	00008797          	auipc	a5,0x8
    8000806c:	86878793          	addi	a5,a5,-1944 # 8000f8d0 <_ZTV16_SemSleepManager+0x10>
    80008070:	00f53023          	sd	a5,0(a0)
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    80008074:	00008517          	auipc	a0,0x8
    80008078:	a8453503          	ld	a0,-1404(a0) # 8000faf8 <_ZN16_SemSleepManager5cacheE>
    8000807c:	ffff9097          	auipc	ra,0xffff9
    80008080:	420080e7          	jalr	1056(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
class _SemSleepManager : public _WaitManager {
    80008084:	00813083          	ld	ra,8(sp)
    80008088:	00013403          	ld	s0,0(sp)
    8000808c:	01010113          	addi	sp,sp,16
    80008090:	00008067          	ret

0000000080008094 <_ZN17_JoinSleepManagerD0Ev>:
class _JoinSleepManager : public _WaitManager {
    80008094:	ff010113          	addi	sp,sp,-16
    80008098:	00113423          	sd	ra,8(sp)
    8000809c:	00813023          	sd	s0,0(sp)
    800080a0:	01010413          	addi	s0,sp,16
    800080a4:	00050593          	mv	a1,a0
    800080a8:	00008797          	auipc	a5,0x8
    800080ac:	86878793          	addi	a5,a5,-1944 # 8000f910 <_ZTV17_JoinSleepManager+0x10>
    800080b0:	00f53023          	sd	a5,0(a0)
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    800080b4:	00008517          	auipc	a0,0x8
    800080b8:	a4c53503          	ld	a0,-1460(a0) # 8000fb00 <_ZN17_JoinSleepManager5cacheE>
    800080bc:	ffff9097          	auipc	ra,0xffff9
    800080c0:	3e0080e7          	jalr	992(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
class _JoinSleepManager : public _WaitManager {
    800080c4:	00813083          	ld	ra,8(sp)
    800080c8:	00013403          	ld	s0,0(sp)
    800080cc:	01010113          	addi	sp,sp,16
    800080d0:	00008067          	ret

00000000800080d4 <_ZN18_SemORSleepManagerD0Ev>:
class _SemORSleepManager : public _WaitManager {
    800080d4:	ff010113          	addi	sp,sp,-16
    800080d8:	00113423          	sd	ra,8(sp)
    800080dc:	00813023          	sd	s0,0(sp)
    800080e0:	01010413          	addi	s0,sp,16
    800080e4:	00050593          	mv	a1,a0
    800080e8:	00008797          	auipc	a5,0x8
    800080ec:	86878793          	addi	a5,a5,-1944 # 8000f950 <_ZTV18_SemORSleepManager+0x10>
    800080f0:	00f53023          	sd	a5,0(a0)
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    800080f4:	00008517          	auipc	a0,0x8
    800080f8:	a1453503          	ld	a0,-1516(a0) # 8000fb08 <_ZN18_SemORSleepManager5cacheE>
    800080fc:	ffff9097          	auipc	ra,0xffff9
    80008100:	3a0080e7          	jalr	928(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
class _SemORSleepManager : public _WaitManager {
    80008104:	00813083          	ld	ra,8(sp)
    80008108:	00013403          	ld	s0,0(sp)
    8000810c:	01010113          	addi	sp,sp,16
    80008110:	00008067          	ret

0000000080008114 <_ZN19_SemANDSleepManagerD0Ev>:
class _SemANDSleepManager : public _WaitManager {
    80008114:	ff010113          	addi	sp,sp,-16
    80008118:	00113423          	sd	ra,8(sp)
    8000811c:	00813023          	sd	s0,0(sp)
    80008120:	01010413          	addi	s0,sp,16
    80008124:	00050593          	mv	a1,a0
    80008128:	00008797          	auipc	a5,0x8
    8000812c:	86878793          	addi	a5,a5,-1944 # 8000f990 <_ZTV19_SemANDSleepManager+0x10>
    80008130:	00f53023          	sd	a5,0(a0)
    void operator delete(void* adr) { kmem_cache_free(cache, adr);}
    80008134:	00008517          	auipc	a0,0x8
    80008138:	9dc53503          	ld	a0,-1572(a0) # 8000fb10 <_ZN19_SemANDSleepManager5cacheE>
    8000813c:	ffff9097          	auipc	ra,0xffff9
    80008140:	360080e7          	jalr	864(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
class _SemANDSleepManager : public _WaitManager {
    80008144:	00813083          	ld	ra,8(sp)
    80008148:	00013403          	ld	s0,0(sp)
    8000814c:	01010113          	addi	sp,sp,16
    80008150:	00008067          	ret

0000000080008154 <start>:
    80008154:	ff010113          	addi	sp,sp,-16
    80008158:	00813423          	sd	s0,8(sp)
    8000815c:	01010413          	addi	s0,sp,16
    80008160:	300027f3          	csrr	a5,mstatus
    80008164:	ffffe737          	lui	a4,0xffffe
    80008168:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffea46f>
    8000816c:	00e7f7b3          	and	a5,a5,a4
    80008170:	00001737          	lui	a4,0x1
    80008174:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80008178:	00e7e7b3          	or	a5,a5,a4
    8000817c:	30079073          	csrw	mstatus,a5
    80008180:	00000797          	auipc	a5,0x0
    80008184:	16078793          	addi	a5,a5,352 # 800082e0 <system_main>
    80008188:	34179073          	csrw	mepc,a5
    8000818c:	00000793          	li	a5,0
    80008190:	18079073          	csrw	satp,a5
    80008194:	000107b7          	lui	a5,0x10
    80008198:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000819c:	30279073          	csrw	medeleg,a5
    800081a0:	30379073          	csrw	mideleg,a5
    800081a4:	104027f3          	csrr	a5,sie
    800081a8:	2227e793          	ori	a5,a5,546
    800081ac:	10479073          	csrw	sie,a5
    800081b0:	fff00793          	li	a5,-1
    800081b4:	00a7d793          	srli	a5,a5,0xa
    800081b8:	3b079073          	csrw	pmpaddr0,a5
    800081bc:	00f00793          	li	a5,15
    800081c0:	3a079073          	csrw	pmpcfg0,a5
    800081c4:	f14027f3          	csrr	a5,mhartid
    800081c8:	0200c737          	lui	a4,0x200c
    800081cc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800081d0:	0007869b          	sext.w	a3,a5
    800081d4:	00269713          	slli	a4,a3,0x2
    800081d8:	000f4637          	lui	a2,0xf4
    800081dc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800081e0:	00d70733          	add	a4,a4,a3
    800081e4:	0037979b          	slliw	a5,a5,0x3
    800081e8:	020046b7          	lui	a3,0x2004
    800081ec:	00d787b3          	add	a5,a5,a3
    800081f0:	00c585b3          	add	a1,a1,a2
    800081f4:	00371693          	slli	a3,a4,0x3
    800081f8:	00008717          	auipc	a4,0x8
    800081fc:	92870713          	addi	a4,a4,-1752 # 8000fb20 <timer_scratch>
    80008200:	00b7b023          	sd	a1,0(a5)
    80008204:	00d70733          	add	a4,a4,a3
    80008208:	00f73c23          	sd	a5,24(a4)
    8000820c:	02c73023          	sd	a2,32(a4)
    80008210:	34071073          	csrw	mscratch,a4
    80008214:	00000797          	auipc	a5,0x0
    80008218:	6ec78793          	addi	a5,a5,1772 # 80008900 <timervec>
    8000821c:	30579073          	csrw	mtvec,a5
    80008220:	300027f3          	csrr	a5,mstatus
    80008224:	0087e793          	ori	a5,a5,8
    80008228:	30079073          	csrw	mstatus,a5
    8000822c:	304027f3          	csrr	a5,mie
    80008230:	0807e793          	ori	a5,a5,128
    80008234:	30479073          	csrw	mie,a5
    80008238:	f14027f3          	csrr	a5,mhartid
    8000823c:	0007879b          	sext.w	a5,a5
    80008240:	00078213          	mv	tp,a5
    80008244:	30200073          	mret
    80008248:	00813403          	ld	s0,8(sp)
    8000824c:	01010113          	addi	sp,sp,16
    80008250:	00008067          	ret

0000000080008254 <timerinit>:
    80008254:	ff010113          	addi	sp,sp,-16
    80008258:	00813423          	sd	s0,8(sp)
    8000825c:	01010413          	addi	s0,sp,16
    80008260:	f14027f3          	csrr	a5,mhartid
    80008264:	0200c737          	lui	a4,0x200c
    80008268:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000826c:	0007869b          	sext.w	a3,a5
    80008270:	00269713          	slli	a4,a3,0x2
    80008274:	000f4637          	lui	a2,0xf4
    80008278:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    8000827c:	00d70733          	add	a4,a4,a3
    80008280:	0037979b          	slliw	a5,a5,0x3
    80008284:	020046b7          	lui	a3,0x2004
    80008288:	00d787b3          	add	a5,a5,a3
    8000828c:	00c585b3          	add	a1,a1,a2
    80008290:	00371693          	slli	a3,a4,0x3
    80008294:	00008717          	auipc	a4,0x8
    80008298:	88c70713          	addi	a4,a4,-1908 # 8000fb20 <timer_scratch>
    8000829c:	00b7b023          	sd	a1,0(a5)
    800082a0:	00d70733          	add	a4,a4,a3
    800082a4:	00f73c23          	sd	a5,24(a4)
    800082a8:	02c73023          	sd	a2,32(a4)
    800082ac:	34071073          	csrw	mscratch,a4
    800082b0:	00000797          	auipc	a5,0x0
    800082b4:	65078793          	addi	a5,a5,1616 # 80008900 <timervec>
    800082b8:	30579073          	csrw	mtvec,a5
    800082bc:	300027f3          	csrr	a5,mstatus
    800082c0:	0087e793          	ori	a5,a5,8
    800082c4:	30079073          	csrw	mstatus,a5
    800082c8:	304027f3          	csrr	a5,mie
    800082cc:	0807e793          	ori	a5,a5,128
    800082d0:	30479073          	csrw	mie,a5
    800082d4:	00813403          	ld	s0,8(sp)
    800082d8:	01010113          	addi	sp,sp,16
    800082dc:	00008067          	ret

00000000800082e0 <system_main>:
    800082e0:	fe010113          	addi	sp,sp,-32
    800082e4:	00813823          	sd	s0,16(sp)
    800082e8:	00913423          	sd	s1,8(sp)
    800082ec:	00113c23          	sd	ra,24(sp)
    800082f0:	02010413          	addi	s0,sp,32
    800082f4:	00000097          	auipc	ra,0x0
    800082f8:	0c4080e7          	jalr	196(ra) # 800083b8 <cpuid>
    800082fc:	00007497          	auipc	s1,0x7
    80008300:	6d448493          	addi	s1,s1,1748 # 8000f9d0 <started>
    80008304:	02050263          	beqz	a0,80008328 <system_main+0x48>
    80008308:	0004a783          	lw	a5,0(s1)
    8000830c:	0007879b          	sext.w	a5,a5
    80008310:	fe078ce3          	beqz	a5,80008308 <system_main+0x28>
    80008314:	0ff0000f          	fence
    80008318:	00003517          	auipc	a0,0x3
    8000831c:	19050513          	addi	a0,a0,400 # 8000b4a8 <_ZN10_BuddyNode8DATA_LENE+0x74>
    80008320:	00001097          	auipc	ra,0x1
    80008324:	a7c080e7          	jalr	-1412(ra) # 80008d9c <panic>
    80008328:	00001097          	auipc	ra,0x1
    8000832c:	9d0080e7          	jalr	-1584(ra) # 80008cf8 <consoleinit>
    80008330:	00001097          	auipc	ra,0x1
    80008334:	15c080e7          	jalr	348(ra) # 8000948c <printfinit>
    80008338:	00003517          	auipc	a0,0x3
    8000833c:	d3050513          	addi	a0,a0,-720 # 8000b068 <PAGEOFFMASK+0x44>
    80008340:	00001097          	auipc	ra,0x1
    80008344:	ab8080e7          	jalr	-1352(ra) # 80008df8 <__printf>
    80008348:	00003517          	auipc	a0,0x3
    8000834c:	13050513          	addi	a0,a0,304 # 8000b478 <_ZN10_BuddyNode8DATA_LENE+0x44>
    80008350:	00001097          	auipc	ra,0x1
    80008354:	aa8080e7          	jalr	-1368(ra) # 80008df8 <__printf>
    80008358:	00003517          	auipc	a0,0x3
    8000835c:	d1050513          	addi	a0,a0,-752 # 8000b068 <PAGEOFFMASK+0x44>
    80008360:	00001097          	auipc	ra,0x1
    80008364:	a98080e7          	jalr	-1384(ra) # 80008df8 <__printf>
    80008368:	00001097          	auipc	ra,0x1
    8000836c:	4b0080e7          	jalr	1200(ra) # 80009818 <kinit>
    80008370:	00000097          	auipc	ra,0x0
    80008374:	148080e7          	jalr	328(ra) # 800084b8 <trapinit>
    80008378:	00000097          	auipc	ra,0x0
    8000837c:	16c080e7          	jalr	364(ra) # 800084e4 <trapinithart>
    80008380:	00000097          	auipc	ra,0x0
    80008384:	5c0080e7          	jalr	1472(ra) # 80008940 <plicinit>
    80008388:	00000097          	auipc	ra,0x0
    8000838c:	5e0080e7          	jalr	1504(ra) # 80008968 <plicinithart>
    80008390:	00000097          	auipc	ra,0x0
    80008394:	078080e7          	jalr	120(ra) # 80008408 <userinit>
    80008398:	0ff0000f          	fence
    8000839c:	00100793          	li	a5,1
    800083a0:	00003517          	auipc	a0,0x3
    800083a4:	0f050513          	addi	a0,a0,240 # 8000b490 <_ZN10_BuddyNode8DATA_LENE+0x5c>
    800083a8:	00f4a023          	sw	a5,0(s1)
    800083ac:	00001097          	auipc	ra,0x1
    800083b0:	a4c080e7          	jalr	-1460(ra) # 80008df8 <__printf>
    800083b4:	0000006f          	j	800083b4 <system_main+0xd4>

00000000800083b8 <cpuid>:
    800083b8:	ff010113          	addi	sp,sp,-16
    800083bc:	00813423          	sd	s0,8(sp)
    800083c0:	01010413          	addi	s0,sp,16
    800083c4:	00020513          	mv	a0,tp
    800083c8:	00813403          	ld	s0,8(sp)
    800083cc:	0005051b          	sext.w	a0,a0
    800083d0:	01010113          	addi	sp,sp,16
    800083d4:	00008067          	ret

00000000800083d8 <mycpu>:
    800083d8:	ff010113          	addi	sp,sp,-16
    800083dc:	00813423          	sd	s0,8(sp)
    800083e0:	01010413          	addi	s0,sp,16
    800083e4:	00020793          	mv	a5,tp
    800083e8:	00813403          	ld	s0,8(sp)
    800083ec:	0007879b          	sext.w	a5,a5
    800083f0:	00779793          	slli	a5,a5,0x7
    800083f4:	00008517          	auipc	a0,0x8
    800083f8:	75c50513          	addi	a0,a0,1884 # 80010b50 <cpus>
    800083fc:	00f50533          	add	a0,a0,a5
    80008400:	01010113          	addi	sp,sp,16
    80008404:	00008067          	ret

0000000080008408 <userinit>:
    80008408:	ff010113          	addi	sp,sp,-16
    8000840c:	00813423          	sd	s0,8(sp)
    80008410:	01010413          	addi	s0,sp,16
    80008414:	00813403          	ld	s0,8(sp)
    80008418:	01010113          	addi	sp,sp,16
    8000841c:	fffff317          	auipc	t1,0xfffff
    80008420:	b1830067          	jr	-1256(t1) # 80006f34 <main>

0000000080008424 <either_copyout>:
    80008424:	ff010113          	addi	sp,sp,-16
    80008428:	00813023          	sd	s0,0(sp)
    8000842c:	00113423          	sd	ra,8(sp)
    80008430:	01010413          	addi	s0,sp,16
    80008434:	02051663          	bnez	a0,80008460 <either_copyout+0x3c>
    80008438:	00058513          	mv	a0,a1
    8000843c:	00060593          	mv	a1,a2
    80008440:	0006861b          	sext.w	a2,a3
    80008444:	00002097          	auipc	ra,0x2
    80008448:	c60080e7          	jalr	-928(ra) # 8000a0a4 <__memmove>
    8000844c:	00813083          	ld	ra,8(sp)
    80008450:	00013403          	ld	s0,0(sp)
    80008454:	00000513          	li	a0,0
    80008458:	01010113          	addi	sp,sp,16
    8000845c:	00008067          	ret
    80008460:	00003517          	auipc	a0,0x3
    80008464:	07050513          	addi	a0,a0,112 # 8000b4d0 <_ZN10_BuddyNode8DATA_LENE+0x9c>
    80008468:	00001097          	auipc	ra,0x1
    8000846c:	934080e7          	jalr	-1740(ra) # 80008d9c <panic>

0000000080008470 <either_copyin>:
    80008470:	ff010113          	addi	sp,sp,-16
    80008474:	00813023          	sd	s0,0(sp)
    80008478:	00113423          	sd	ra,8(sp)
    8000847c:	01010413          	addi	s0,sp,16
    80008480:	02059463          	bnez	a1,800084a8 <either_copyin+0x38>
    80008484:	00060593          	mv	a1,a2
    80008488:	0006861b          	sext.w	a2,a3
    8000848c:	00002097          	auipc	ra,0x2
    80008490:	c18080e7          	jalr	-1000(ra) # 8000a0a4 <__memmove>
    80008494:	00813083          	ld	ra,8(sp)
    80008498:	00013403          	ld	s0,0(sp)
    8000849c:	00000513          	li	a0,0
    800084a0:	01010113          	addi	sp,sp,16
    800084a4:	00008067          	ret
    800084a8:	00003517          	auipc	a0,0x3
    800084ac:	05050513          	addi	a0,a0,80 # 8000b4f8 <_ZN10_BuddyNode8DATA_LENE+0xc4>
    800084b0:	00001097          	auipc	ra,0x1
    800084b4:	8ec080e7          	jalr	-1812(ra) # 80008d9c <panic>

00000000800084b8 <trapinit>:
    800084b8:	ff010113          	addi	sp,sp,-16
    800084bc:	00813423          	sd	s0,8(sp)
    800084c0:	01010413          	addi	s0,sp,16
    800084c4:	00813403          	ld	s0,8(sp)
    800084c8:	00003597          	auipc	a1,0x3
    800084cc:	05858593          	addi	a1,a1,88 # 8000b520 <_ZN10_BuddyNode8DATA_LENE+0xec>
    800084d0:	00008517          	auipc	a0,0x8
    800084d4:	70050513          	addi	a0,a0,1792 # 80010bd0 <tickslock>
    800084d8:	01010113          	addi	sp,sp,16
    800084dc:	00001317          	auipc	t1,0x1
    800084e0:	5cc30067          	jr	1484(t1) # 80009aa8 <initlock>

00000000800084e4 <trapinithart>:
    800084e4:	ff010113          	addi	sp,sp,-16
    800084e8:	00813423          	sd	s0,8(sp)
    800084ec:	01010413          	addi	s0,sp,16
    800084f0:	00000797          	auipc	a5,0x0
    800084f4:	30078793          	addi	a5,a5,768 # 800087f0 <kernelvec>
    800084f8:	10579073          	csrw	stvec,a5
    800084fc:	00813403          	ld	s0,8(sp)
    80008500:	01010113          	addi	sp,sp,16
    80008504:	00008067          	ret

0000000080008508 <usertrap>:
    80008508:	ff010113          	addi	sp,sp,-16
    8000850c:	00813423          	sd	s0,8(sp)
    80008510:	01010413          	addi	s0,sp,16
    80008514:	00813403          	ld	s0,8(sp)
    80008518:	01010113          	addi	sp,sp,16
    8000851c:	00008067          	ret

0000000080008520 <usertrapret>:
    80008520:	ff010113          	addi	sp,sp,-16
    80008524:	00813423          	sd	s0,8(sp)
    80008528:	01010413          	addi	s0,sp,16
    8000852c:	00813403          	ld	s0,8(sp)
    80008530:	01010113          	addi	sp,sp,16
    80008534:	00008067          	ret

0000000080008538 <kerneltrap>:
    80008538:	fe010113          	addi	sp,sp,-32
    8000853c:	00813823          	sd	s0,16(sp)
    80008540:	00113c23          	sd	ra,24(sp)
    80008544:	00913423          	sd	s1,8(sp)
    80008548:	02010413          	addi	s0,sp,32
    8000854c:	142025f3          	csrr	a1,scause
    80008550:	100027f3          	csrr	a5,sstatus
    80008554:	0027f793          	andi	a5,a5,2
    80008558:	10079c63          	bnez	a5,80008670 <kerneltrap+0x138>
    8000855c:	142027f3          	csrr	a5,scause
    80008560:	0207ce63          	bltz	a5,8000859c <kerneltrap+0x64>
    80008564:	00003517          	auipc	a0,0x3
    80008568:	00450513          	addi	a0,a0,4 # 8000b568 <_ZN10_BuddyNode8DATA_LENE+0x134>
    8000856c:	00001097          	auipc	ra,0x1
    80008570:	88c080e7          	jalr	-1908(ra) # 80008df8 <__printf>
    80008574:	141025f3          	csrr	a1,sepc
    80008578:	14302673          	csrr	a2,stval
    8000857c:	00003517          	auipc	a0,0x3
    80008580:	ffc50513          	addi	a0,a0,-4 # 8000b578 <_ZN10_BuddyNode8DATA_LENE+0x144>
    80008584:	00001097          	auipc	ra,0x1
    80008588:	874080e7          	jalr	-1932(ra) # 80008df8 <__printf>
    8000858c:	00003517          	auipc	a0,0x3
    80008590:	00450513          	addi	a0,a0,4 # 8000b590 <_ZN10_BuddyNode8DATA_LENE+0x15c>
    80008594:	00001097          	auipc	ra,0x1
    80008598:	808080e7          	jalr	-2040(ra) # 80008d9c <panic>
    8000859c:	0ff7f713          	andi	a4,a5,255
    800085a0:	00900693          	li	a3,9
    800085a4:	04d70063          	beq	a4,a3,800085e4 <kerneltrap+0xac>
    800085a8:	fff00713          	li	a4,-1
    800085ac:	03f71713          	slli	a4,a4,0x3f
    800085b0:	00170713          	addi	a4,a4,1
    800085b4:	fae798e3          	bne	a5,a4,80008564 <kerneltrap+0x2c>
    800085b8:	00000097          	auipc	ra,0x0
    800085bc:	e00080e7          	jalr	-512(ra) # 800083b8 <cpuid>
    800085c0:	06050663          	beqz	a0,8000862c <kerneltrap+0xf4>
    800085c4:	144027f3          	csrr	a5,sip
    800085c8:	ffd7f793          	andi	a5,a5,-3
    800085cc:	14479073          	csrw	sip,a5
    800085d0:	01813083          	ld	ra,24(sp)
    800085d4:	01013403          	ld	s0,16(sp)
    800085d8:	00813483          	ld	s1,8(sp)
    800085dc:	02010113          	addi	sp,sp,32
    800085e0:	00008067          	ret
    800085e4:	00000097          	auipc	ra,0x0
    800085e8:	3d0080e7          	jalr	976(ra) # 800089b4 <plic_claim>
    800085ec:	00a00793          	li	a5,10
    800085f0:	00050493          	mv	s1,a0
    800085f4:	06f50863          	beq	a0,a5,80008664 <kerneltrap+0x12c>
    800085f8:	fc050ce3          	beqz	a0,800085d0 <kerneltrap+0x98>
    800085fc:	00050593          	mv	a1,a0
    80008600:	00003517          	auipc	a0,0x3
    80008604:	f4850513          	addi	a0,a0,-184 # 8000b548 <_ZN10_BuddyNode8DATA_LENE+0x114>
    80008608:	00000097          	auipc	ra,0x0
    8000860c:	7f0080e7          	jalr	2032(ra) # 80008df8 <__printf>
    80008610:	01013403          	ld	s0,16(sp)
    80008614:	01813083          	ld	ra,24(sp)
    80008618:	00048513          	mv	a0,s1
    8000861c:	00813483          	ld	s1,8(sp)
    80008620:	02010113          	addi	sp,sp,32
    80008624:	00000317          	auipc	t1,0x0
    80008628:	3c830067          	jr	968(t1) # 800089ec <plic_complete>
    8000862c:	00008517          	auipc	a0,0x8
    80008630:	5a450513          	addi	a0,a0,1444 # 80010bd0 <tickslock>
    80008634:	00001097          	auipc	ra,0x1
    80008638:	498080e7          	jalr	1176(ra) # 80009acc <acquire>
    8000863c:	00007717          	auipc	a4,0x7
    80008640:	39870713          	addi	a4,a4,920 # 8000f9d4 <ticks>
    80008644:	00072783          	lw	a5,0(a4)
    80008648:	00008517          	auipc	a0,0x8
    8000864c:	58850513          	addi	a0,a0,1416 # 80010bd0 <tickslock>
    80008650:	0017879b          	addiw	a5,a5,1
    80008654:	00f72023          	sw	a5,0(a4)
    80008658:	00001097          	auipc	ra,0x1
    8000865c:	540080e7          	jalr	1344(ra) # 80009b98 <release>
    80008660:	f65ff06f          	j	800085c4 <kerneltrap+0x8c>
    80008664:	00001097          	auipc	ra,0x1
    80008668:	09c080e7          	jalr	156(ra) # 80009700 <uartintr>
    8000866c:	fa5ff06f          	j	80008610 <kerneltrap+0xd8>
    80008670:	00003517          	auipc	a0,0x3
    80008674:	eb850513          	addi	a0,a0,-328 # 8000b528 <_ZN10_BuddyNode8DATA_LENE+0xf4>
    80008678:	00000097          	auipc	ra,0x0
    8000867c:	724080e7          	jalr	1828(ra) # 80008d9c <panic>

0000000080008680 <clockintr>:
    80008680:	fe010113          	addi	sp,sp,-32
    80008684:	00813823          	sd	s0,16(sp)
    80008688:	00913423          	sd	s1,8(sp)
    8000868c:	00113c23          	sd	ra,24(sp)
    80008690:	02010413          	addi	s0,sp,32
    80008694:	00008497          	auipc	s1,0x8
    80008698:	53c48493          	addi	s1,s1,1340 # 80010bd0 <tickslock>
    8000869c:	00048513          	mv	a0,s1
    800086a0:	00001097          	auipc	ra,0x1
    800086a4:	42c080e7          	jalr	1068(ra) # 80009acc <acquire>
    800086a8:	00007717          	auipc	a4,0x7
    800086ac:	32c70713          	addi	a4,a4,812 # 8000f9d4 <ticks>
    800086b0:	00072783          	lw	a5,0(a4)
    800086b4:	01013403          	ld	s0,16(sp)
    800086b8:	01813083          	ld	ra,24(sp)
    800086bc:	00048513          	mv	a0,s1
    800086c0:	0017879b          	addiw	a5,a5,1
    800086c4:	00813483          	ld	s1,8(sp)
    800086c8:	00f72023          	sw	a5,0(a4)
    800086cc:	02010113          	addi	sp,sp,32
    800086d0:	00001317          	auipc	t1,0x1
    800086d4:	4c830067          	jr	1224(t1) # 80009b98 <release>

00000000800086d8 <devintr>:
    800086d8:	142027f3          	csrr	a5,scause
    800086dc:	00000513          	li	a0,0
    800086e0:	0007c463          	bltz	a5,800086e8 <devintr+0x10>
    800086e4:	00008067          	ret
    800086e8:	fe010113          	addi	sp,sp,-32
    800086ec:	00813823          	sd	s0,16(sp)
    800086f0:	00113c23          	sd	ra,24(sp)
    800086f4:	00913423          	sd	s1,8(sp)
    800086f8:	02010413          	addi	s0,sp,32
    800086fc:	0ff7f713          	andi	a4,a5,255
    80008700:	00900693          	li	a3,9
    80008704:	04d70c63          	beq	a4,a3,8000875c <devintr+0x84>
    80008708:	fff00713          	li	a4,-1
    8000870c:	03f71713          	slli	a4,a4,0x3f
    80008710:	00170713          	addi	a4,a4,1
    80008714:	00e78c63          	beq	a5,a4,8000872c <devintr+0x54>
    80008718:	01813083          	ld	ra,24(sp)
    8000871c:	01013403          	ld	s0,16(sp)
    80008720:	00813483          	ld	s1,8(sp)
    80008724:	02010113          	addi	sp,sp,32
    80008728:	00008067          	ret
    8000872c:	00000097          	auipc	ra,0x0
    80008730:	c8c080e7          	jalr	-884(ra) # 800083b8 <cpuid>
    80008734:	06050663          	beqz	a0,800087a0 <devintr+0xc8>
    80008738:	144027f3          	csrr	a5,sip
    8000873c:	ffd7f793          	andi	a5,a5,-3
    80008740:	14479073          	csrw	sip,a5
    80008744:	01813083          	ld	ra,24(sp)
    80008748:	01013403          	ld	s0,16(sp)
    8000874c:	00813483          	ld	s1,8(sp)
    80008750:	00200513          	li	a0,2
    80008754:	02010113          	addi	sp,sp,32
    80008758:	00008067          	ret
    8000875c:	00000097          	auipc	ra,0x0
    80008760:	258080e7          	jalr	600(ra) # 800089b4 <plic_claim>
    80008764:	00a00793          	li	a5,10
    80008768:	00050493          	mv	s1,a0
    8000876c:	06f50663          	beq	a0,a5,800087d8 <devintr+0x100>
    80008770:	00100513          	li	a0,1
    80008774:	fa0482e3          	beqz	s1,80008718 <devintr+0x40>
    80008778:	00048593          	mv	a1,s1
    8000877c:	00003517          	auipc	a0,0x3
    80008780:	dcc50513          	addi	a0,a0,-564 # 8000b548 <_ZN10_BuddyNode8DATA_LENE+0x114>
    80008784:	00000097          	auipc	ra,0x0
    80008788:	674080e7          	jalr	1652(ra) # 80008df8 <__printf>
    8000878c:	00048513          	mv	a0,s1
    80008790:	00000097          	auipc	ra,0x0
    80008794:	25c080e7          	jalr	604(ra) # 800089ec <plic_complete>
    80008798:	00100513          	li	a0,1
    8000879c:	f7dff06f          	j	80008718 <devintr+0x40>
    800087a0:	00008517          	auipc	a0,0x8
    800087a4:	43050513          	addi	a0,a0,1072 # 80010bd0 <tickslock>
    800087a8:	00001097          	auipc	ra,0x1
    800087ac:	324080e7          	jalr	804(ra) # 80009acc <acquire>
    800087b0:	00007717          	auipc	a4,0x7
    800087b4:	22470713          	addi	a4,a4,548 # 8000f9d4 <ticks>
    800087b8:	00072783          	lw	a5,0(a4)
    800087bc:	00008517          	auipc	a0,0x8
    800087c0:	41450513          	addi	a0,a0,1044 # 80010bd0 <tickslock>
    800087c4:	0017879b          	addiw	a5,a5,1
    800087c8:	00f72023          	sw	a5,0(a4)
    800087cc:	00001097          	auipc	ra,0x1
    800087d0:	3cc080e7          	jalr	972(ra) # 80009b98 <release>
    800087d4:	f65ff06f          	j	80008738 <devintr+0x60>
    800087d8:	00001097          	auipc	ra,0x1
    800087dc:	f28080e7          	jalr	-216(ra) # 80009700 <uartintr>
    800087e0:	fadff06f          	j	8000878c <devintr+0xb4>
	...

00000000800087f0 <kernelvec>:
    800087f0:	f0010113          	addi	sp,sp,-256
    800087f4:	00113023          	sd	ra,0(sp)
    800087f8:	00213423          	sd	sp,8(sp)
    800087fc:	00313823          	sd	gp,16(sp)
    80008800:	00413c23          	sd	tp,24(sp)
    80008804:	02513023          	sd	t0,32(sp)
    80008808:	02613423          	sd	t1,40(sp)
    8000880c:	02713823          	sd	t2,48(sp)
    80008810:	02813c23          	sd	s0,56(sp)
    80008814:	04913023          	sd	s1,64(sp)
    80008818:	04a13423          	sd	a0,72(sp)
    8000881c:	04b13823          	sd	a1,80(sp)
    80008820:	04c13c23          	sd	a2,88(sp)
    80008824:	06d13023          	sd	a3,96(sp)
    80008828:	06e13423          	sd	a4,104(sp)
    8000882c:	06f13823          	sd	a5,112(sp)
    80008830:	07013c23          	sd	a6,120(sp)
    80008834:	09113023          	sd	a7,128(sp)
    80008838:	09213423          	sd	s2,136(sp)
    8000883c:	09313823          	sd	s3,144(sp)
    80008840:	09413c23          	sd	s4,152(sp)
    80008844:	0b513023          	sd	s5,160(sp)
    80008848:	0b613423          	sd	s6,168(sp)
    8000884c:	0b713823          	sd	s7,176(sp)
    80008850:	0b813c23          	sd	s8,184(sp)
    80008854:	0d913023          	sd	s9,192(sp)
    80008858:	0da13423          	sd	s10,200(sp)
    8000885c:	0db13823          	sd	s11,208(sp)
    80008860:	0dc13c23          	sd	t3,216(sp)
    80008864:	0fd13023          	sd	t4,224(sp)
    80008868:	0fe13423          	sd	t5,232(sp)
    8000886c:	0ff13823          	sd	t6,240(sp)
    80008870:	cc9ff0ef          	jal	ra,80008538 <kerneltrap>
    80008874:	00013083          	ld	ra,0(sp)
    80008878:	00813103          	ld	sp,8(sp)
    8000887c:	01013183          	ld	gp,16(sp)
    80008880:	02013283          	ld	t0,32(sp)
    80008884:	02813303          	ld	t1,40(sp)
    80008888:	03013383          	ld	t2,48(sp)
    8000888c:	03813403          	ld	s0,56(sp)
    80008890:	04013483          	ld	s1,64(sp)
    80008894:	04813503          	ld	a0,72(sp)
    80008898:	05013583          	ld	a1,80(sp)
    8000889c:	05813603          	ld	a2,88(sp)
    800088a0:	06013683          	ld	a3,96(sp)
    800088a4:	06813703          	ld	a4,104(sp)
    800088a8:	07013783          	ld	a5,112(sp)
    800088ac:	07813803          	ld	a6,120(sp)
    800088b0:	08013883          	ld	a7,128(sp)
    800088b4:	08813903          	ld	s2,136(sp)
    800088b8:	09013983          	ld	s3,144(sp)
    800088bc:	09813a03          	ld	s4,152(sp)
    800088c0:	0a013a83          	ld	s5,160(sp)
    800088c4:	0a813b03          	ld	s6,168(sp)
    800088c8:	0b013b83          	ld	s7,176(sp)
    800088cc:	0b813c03          	ld	s8,184(sp)
    800088d0:	0c013c83          	ld	s9,192(sp)
    800088d4:	0c813d03          	ld	s10,200(sp)
    800088d8:	0d013d83          	ld	s11,208(sp)
    800088dc:	0d813e03          	ld	t3,216(sp)
    800088e0:	0e013e83          	ld	t4,224(sp)
    800088e4:	0e813f03          	ld	t5,232(sp)
    800088e8:	0f013f83          	ld	t6,240(sp)
    800088ec:	10010113          	addi	sp,sp,256
    800088f0:	10200073          	sret
    800088f4:	00000013          	nop
    800088f8:	00000013          	nop
    800088fc:	00000013          	nop

0000000080008900 <timervec>:
    80008900:	34051573          	csrrw	a0,mscratch,a0
    80008904:	00b53023          	sd	a1,0(a0)
    80008908:	00c53423          	sd	a2,8(a0)
    8000890c:	00d53823          	sd	a3,16(a0)
    80008910:	01853583          	ld	a1,24(a0)
    80008914:	02053603          	ld	a2,32(a0)
    80008918:	0005b683          	ld	a3,0(a1)
    8000891c:	00c686b3          	add	a3,a3,a2
    80008920:	00d5b023          	sd	a3,0(a1)
    80008924:	00200593          	li	a1,2
    80008928:	14459073          	csrw	sip,a1
    8000892c:	01053683          	ld	a3,16(a0)
    80008930:	00853603          	ld	a2,8(a0)
    80008934:	00053583          	ld	a1,0(a0)
    80008938:	34051573          	csrrw	a0,mscratch,a0
    8000893c:	30200073          	mret

0000000080008940 <plicinit>:
    80008940:	ff010113          	addi	sp,sp,-16
    80008944:	00813423          	sd	s0,8(sp)
    80008948:	01010413          	addi	s0,sp,16
    8000894c:	00813403          	ld	s0,8(sp)
    80008950:	0c0007b7          	lui	a5,0xc000
    80008954:	00100713          	li	a4,1
    80008958:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000895c:	00e7a223          	sw	a4,4(a5)
    80008960:	01010113          	addi	sp,sp,16
    80008964:	00008067          	ret

0000000080008968 <plicinithart>:
    80008968:	ff010113          	addi	sp,sp,-16
    8000896c:	00813023          	sd	s0,0(sp)
    80008970:	00113423          	sd	ra,8(sp)
    80008974:	01010413          	addi	s0,sp,16
    80008978:	00000097          	auipc	ra,0x0
    8000897c:	a40080e7          	jalr	-1472(ra) # 800083b8 <cpuid>
    80008980:	0085171b          	slliw	a4,a0,0x8
    80008984:	0c0027b7          	lui	a5,0xc002
    80008988:	00e787b3          	add	a5,a5,a4
    8000898c:	40200713          	li	a4,1026
    80008990:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80008994:	00813083          	ld	ra,8(sp)
    80008998:	00013403          	ld	s0,0(sp)
    8000899c:	00d5151b          	slliw	a0,a0,0xd
    800089a0:	0c2017b7          	lui	a5,0xc201
    800089a4:	00a78533          	add	a0,a5,a0
    800089a8:	00052023          	sw	zero,0(a0)
    800089ac:	01010113          	addi	sp,sp,16
    800089b0:	00008067          	ret

00000000800089b4 <plic_claim>:
    800089b4:	ff010113          	addi	sp,sp,-16
    800089b8:	00813023          	sd	s0,0(sp)
    800089bc:	00113423          	sd	ra,8(sp)
    800089c0:	01010413          	addi	s0,sp,16
    800089c4:	00000097          	auipc	ra,0x0
    800089c8:	9f4080e7          	jalr	-1548(ra) # 800083b8 <cpuid>
    800089cc:	00813083          	ld	ra,8(sp)
    800089d0:	00013403          	ld	s0,0(sp)
    800089d4:	00d5151b          	slliw	a0,a0,0xd
    800089d8:	0c2017b7          	lui	a5,0xc201
    800089dc:	00a78533          	add	a0,a5,a0
    800089e0:	00452503          	lw	a0,4(a0)
    800089e4:	01010113          	addi	sp,sp,16
    800089e8:	00008067          	ret

00000000800089ec <plic_complete>:
    800089ec:	fe010113          	addi	sp,sp,-32
    800089f0:	00813823          	sd	s0,16(sp)
    800089f4:	00913423          	sd	s1,8(sp)
    800089f8:	00113c23          	sd	ra,24(sp)
    800089fc:	02010413          	addi	s0,sp,32
    80008a00:	00050493          	mv	s1,a0
    80008a04:	00000097          	auipc	ra,0x0
    80008a08:	9b4080e7          	jalr	-1612(ra) # 800083b8 <cpuid>
    80008a0c:	01813083          	ld	ra,24(sp)
    80008a10:	01013403          	ld	s0,16(sp)
    80008a14:	00d5179b          	slliw	a5,a0,0xd
    80008a18:	0c201737          	lui	a4,0xc201
    80008a1c:	00f707b3          	add	a5,a4,a5
    80008a20:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80008a24:	00813483          	ld	s1,8(sp)
    80008a28:	02010113          	addi	sp,sp,32
    80008a2c:	00008067          	ret

0000000080008a30 <consolewrite>:
    80008a30:	fb010113          	addi	sp,sp,-80
    80008a34:	04813023          	sd	s0,64(sp)
    80008a38:	04113423          	sd	ra,72(sp)
    80008a3c:	02913c23          	sd	s1,56(sp)
    80008a40:	03213823          	sd	s2,48(sp)
    80008a44:	03313423          	sd	s3,40(sp)
    80008a48:	03413023          	sd	s4,32(sp)
    80008a4c:	01513c23          	sd	s5,24(sp)
    80008a50:	05010413          	addi	s0,sp,80
    80008a54:	06c05c63          	blez	a2,80008acc <consolewrite+0x9c>
    80008a58:	00060993          	mv	s3,a2
    80008a5c:	00050a13          	mv	s4,a0
    80008a60:	00058493          	mv	s1,a1
    80008a64:	00000913          	li	s2,0
    80008a68:	fff00a93          	li	s5,-1
    80008a6c:	01c0006f          	j	80008a88 <consolewrite+0x58>
    80008a70:	fbf44503          	lbu	a0,-65(s0)
    80008a74:	0019091b          	addiw	s2,s2,1
    80008a78:	00148493          	addi	s1,s1,1
    80008a7c:	00001097          	auipc	ra,0x1
    80008a80:	a9c080e7          	jalr	-1380(ra) # 80009518 <uartputc>
    80008a84:	03298063          	beq	s3,s2,80008aa4 <consolewrite+0x74>
    80008a88:	00048613          	mv	a2,s1
    80008a8c:	00100693          	li	a3,1
    80008a90:	000a0593          	mv	a1,s4
    80008a94:	fbf40513          	addi	a0,s0,-65
    80008a98:	00000097          	auipc	ra,0x0
    80008a9c:	9d8080e7          	jalr	-1576(ra) # 80008470 <either_copyin>
    80008aa0:	fd5518e3          	bne	a0,s5,80008a70 <consolewrite+0x40>
    80008aa4:	04813083          	ld	ra,72(sp)
    80008aa8:	04013403          	ld	s0,64(sp)
    80008aac:	03813483          	ld	s1,56(sp)
    80008ab0:	02813983          	ld	s3,40(sp)
    80008ab4:	02013a03          	ld	s4,32(sp)
    80008ab8:	01813a83          	ld	s5,24(sp)
    80008abc:	00090513          	mv	a0,s2
    80008ac0:	03013903          	ld	s2,48(sp)
    80008ac4:	05010113          	addi	sp,sp,80
    80008ac8:	00008067          	ret
    80008acc:	00000913          	li	s2,0
    80008ad0:	fd5ff06f          	j	80008aa4 <consolewrite+0x74>

0000000080008ad4 <consoleread>:
    80008ad4:	f9010113          	addi	sp,sp,-112
    80008ad8:	06813023          	sd	s0,96(sp)
    80008adc:	04913c23          	sd	s1,88(sp)
    80008ae0:	05213823          	sd	s2,80(sp)
    80008ae4:	05313423          	sd	s3,72(sp)
    80008ae8:	05413023          	sd	s4,64(sp)
    80008aec:	03513c23          	sd	s5,56(sp)
    80008af0:	03613823          	sd	s6,48(sp)
    80008af4:	03713423          	sd	s7,40(sp)
    80008af8:	03813023          	sd	s8,32(sp)
    80008afc:	06113423          	sd	ra,104(sp)
    80008b00:	01913c23          	sd	s9,24(sp)
    80008b04:	07010413          	addi	s0,sp,112
    80008b08:	00060b93          	mv	s7,a2
    80008b0c:	00050913          	mv	s2,a0
    80008b10:	00058c13          	mv	s8,a1
    80008b14:	00060b1b          	sext.w	s6,a2
    80008b18:	00008497          	auipc	s1,0x8
    80008b1c:	0e048493          	addi	s1,s1,224 # 80010bf8 <cons>
    80008b20:	00400993          	li	s3,4
    80008b24:	fff00a13          	li	s4,-1
    80008b28:	00a00a93          	li	s5,10
    80008b2c:	05705e63          	blez	s7,80008b88 <consoleread+0xb4>
    80008b30:	09c4a703          	lw	a4,156(s1)
    80008b34:	0984a783          	lw	a5,152(s1)
    80008b38:	0007071b          	sext.w	a4,a4
    80008b3c:	08e78463          	beq	a5,a4,80008bc4 <consoleread+0xf0>
    80008b40:	07f7f713          	andi	a4,a5,127
    80008b44:	00e48733          	add	a4,s1,a4
    80008b48:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80008b4c:	0017869b          	addiw	a3,a5,1
    80008b50:	08d4ac23          	sw	a3,152(s1)
    80008b54:	00070c9b          	sext.w	s9,a4
    80008b58:	0b370663          	beq	a4,s3,80008c04 <consoleread+0x130>
    80008b5c:	00100693          	li	a3,1
    80008b60:	f9f40613          	addi	a2,s0,-97
    80008b64:	000c0593          	mv	a1,s8
    80008b68:	00090513          	mv	a0,s2
    80008b6c:	f8e40fa3          	sb	a4,-97(s0)
    80008b70:	00000097          	auipc	ra,0x0
    80008b74:	8b4080e7          	jalr	-1868(ra) # 80008424 <either_copyout>
    80008b78:	01450863          	beq	a0,s4,80008b88 <consoleread+0xb4>
    80008b7c:	001c0c13          	addi	s8,s8,1
    80008b80:	fffb8b9b          	addiw	s7,s7,-1
    80008b84:	fb5c94e3          	bne	s9,s5,80008b2c <consoleread+0x58>
    80008b88:	000b851b          	sext.w	a0,s7
    80008b8c:	06813083          	ld	ra,104(sp)
    80008b90:	06013403          	ld	s0,96(sp)
    80008b94:	05813483          	ld	s1,88(sp)
    80008b98:	05013903          	ld	s2,80(sp)
    80008b9c:	04813983          	ld	s3,72(sp)
    80008ba0:	04013a03          	ld	s4,64(sp)
    80008ba4:	03813a83          	ld	s5,56(sp)
    80008ba8:	02813b83          	ld	s7,40(sp)
    80008bac:	02013c03          	ld	s8,32(sp)
    80008bb0:	01813c83          	ld	s9,24(sp)
    80008bb4:	40ab053b          	subw	a0,s6,a0
    80008bb8:	03013b03          	ld	s6,48(sp)
    80008bbc:	07010113          	addi	sp,sp,112
    80008bc0:	00008067          	ret
    80008bc4:	00001097          	auipc	ra,0x1
    80008bc8:	1d8080e7          	jalr	472(ra) # 80009d9c <push_on>
    80008bcc:	0984a703          	lw	a4,152(s1)
    80008bd0:	09c4a783          	lw	a5,156(s1)
    80008bd4:	0007879b          	sext.w	a5,a5
    80008bd8:	fef70ce3          	beq	a4,a5,80008bd0 <consoleread+0xfc>
    80008bdc:	00001097          	auipc	ra,0x1
    80008be0:	234080e7          	jalr	564(ra) # 80009e10 <pop_on>
    80008be4:	0984a783          	lw	a5,152(s1)
    80008be8:	07f7f713          	andi	a4,a5,127
    80008bec:	00e48733          	add	a4,s1,a4
    80008bf0:	01874703          	lbu	a4,24(a4)
    80008bf4:	0017869b          	addiw	a3,a5,1
    80008bf8:	08d4ac23          	sw	a3,152(s1)
    80008bfc:	00070c9b          	sext.w	s9,a4
    80008c00:	f5371ee3          	bne	a4,s3,80008b5c <consoleread+0x88>
    80008c04:	000b851b          	sext.w	a0,s7
    80008c08:	f96bf2e3          	bgeu	s7,s6,80008b8c <consoleread+0xb8>
    80008c0c:	08f4ac23          	sw	a5,152(s1)
    80008c10:	f7dff06f          	j	80008b8c <consoleread+0xb8>

0000000080008c14 <consputc>:
    80008c14:	10000793          	li	a5,256
    80008c18:	00f50663          	beq	a0,a5,80008c24 <consputc+0x10>
    80008c1c:	00001317          	auipc	t1,0x1
    80008c20:	9f430067          	jr	-1548(t1) # 80009610 <uartputc_sync>
    80008c24:	ff010113          	addi	sp,sp,-16
    80008c28:	00113423          	sd	ra,8(sp)
    80008c2c:	00813023          	sd	s0,0(sp)
    80008c30:	01010413          	addi	s0,sp,16
    80008c34:	00800513          	li	a0,8
    80008c38:	00001097          	auipc	ra,0x1
    80008c3c:	9d8080e7          	jalr	-1576(ra) # 80009610 <uartputc_sync>
    80008c40:	02000513          	li	a0,32
    80008c44:	00001097          	auipc	ra,0x1
    80008c48:	9cc080e7          	jalr	-1588(ra) # 80009610 <uartputc_sync>
    80008c4c:	00013403          	ld	s0,0(sp)
    80008c50:	00813083          	ld	ra,8(sp)
    80008c54:	00800513          	li	a0,8
    80008c58:	01010113          	addi	sp,sp,16
    80008c5c:	00001317          	auipc	t1,0x1
    80008c60:	9b430067          	jr	-1612(t1) # 80009610 <uartputc_sync>

0000000080008c64 <consoleintr>:
    80008c64:	fe010113          	addi	sp,sp,-32
    80008c68:	00813823          	sd	s0,16(sp)
    80008c6c:	00913423          	sd	s1,8(sp)
    80008c70:	01213023          	sd	s2,0(sp)
    80008c74:	00113c23          	sd	ra,24(sp)
    80008c78:	02010413          	addi	s0,sp,32
    80008c7c:	00008917          	auipc	s2,0x8
    80008c80:	f7c90913          	addi	s2,s2,-132 # 80010bf8 <cons>
    80008c84:	00050493          	mv	s1,a0
    80008c88:	00090513          	mv	a0,s2
    80008c8c:	00001097          	auipc	ra,0x1
    80008c90:	e40080e7          	jalr	-448(ra) # 80009acc <acquire>
    80008c94:	02048c63          	beqz	s1,80008ccc <consoleintr+0x68>
    80008c98:	0a092783          	lw	a5,160(s2)
    80008c9c:	09892703          	lw	a4,152(s2)
    80008ca0:	07f00693          	li	a3,127
    80008ca4:	40e7873b          	subw	a4,a5,a4
    80008ca8:	02e6e263          	bltu	a3,a4,80008ccc <consoleintr+0x68>
    80008cac:	00d00713          	li	a4,13
    80008cb0:	04e48063          	beq	s1,a4,80008cf0 <consoleintr+0x8c>
    80008cb4:	07f7f713          	andi	a4,a5,127
    80008cb8:	00e90733          	add	a4,s2,a4
    80008cbc:	0017879b          	addiw	a5,a5,1
    80008cc0:	0af92023          	sw	a5,160(s2)
    80008cc4:	00970c23          	sb	s1,24(a4)
    80008cc8:	08f92e23          	sw	a5,156(s2)
    80008ccc:	01013403          	ld	s0,16(sp)
    80008cd0:	01813083          	ld	ra,24(sp)
    80008cd4:	00813483          	ld	s1,8(sp)
    80008cd8:	00013903          	ld	s2,0(sp)
    80008cdc:	00008517          	auipc	a0,0x8
    80008ce0:	f1c50513          	addi	a0,a0,-228 # 80010bf8 <cons>
    80008ce4:	02010113          	addi	sp,sp,32
    80008ce8:	00001317          	auipc	t1,0x1
    80008cec:	eb030067          	jr	-336(t1) # 80009b98 <release>
    80008cf0:	00a00493          	li	s1,10
    80008cf4:	fc1ff06f          	j	80008cb4 <consoleintr+0x50>

0000000080008cf8 <consoleinit>:
    80008cf8:	fe010113          	addi	sp,sp,-32
    80008cfc:	00113c23          	sd	ra,24(sp)
    80008d00:	00813823          	sd	s0,16(sp)
    80008d04:	00913423          	sd	s1,8(sp)
    80008d08:	02010413          	addi	s0,sp,32
    80008d0c:	00008497          	auipc	s1,0x8
    80008d10:	eec48493          	addi	s1,s1,-276 # 80010bf8 <cons>
    80008d14:	00048513          	mv	a0,s1
    80008d18:	00003597          	auipc	a1,0x3
    80008d1c:	88858593          	addi	a1,a1,-1912 # 8000b5a0 <_ZN10_BuddyNode8DATA_LENE+0x16c>
    80008d20:	00001097          	auipc	ra,0x1
    80008d24:	d88080e7          	jalr	-632(ra) # 80009aa8 <initlock>
    80008d28:	00000097          	auipc	ra,0x0
    80008d2c:	7ac080e7          	jalr	1964(ra) # 800094d4 <uartinit>
    80008d30:	01813083          	ld	ra,24(sp)
    80008d34:	01013403          	ld	s0,16(sp)
    80008d38:	00000797          	auipc	a5,0x0
    80008d3c:	d9c78793          	addi	a5,a5,-612 # 80008ad4 <consoleread>
    80008d40:	0af4bc23          	sd	a5,184(s1)
    80008d44:	00000797          	auipc	a5,0x0
    80008d48:	cec78793          	addi	a5,a5,-788 # 80008a30 <consolewrite>
    80008d4c:	0cf4b023          	sd	a5,192(s1)
    80008d50:	00813483          	ld	s1,8(sp)
    80008d54:	02010113          	addi	sp,sp,32
    80008d58:	00008067          	ret

0000000080008d5c <console_read>:
    80008d5c:	ff010113          	addi	sp,sp,-16
    80008d60:	00813423          	sd	s0,8(sp)
    80008d64:	01010413          	addi	s0,sp,16
    80008d68:	00813403          	ld	s0,8(sp)
    80008d6c:	00008317          	auipc	t1,0x8
    80008d70:	f4433303          	ld	t1,-188(t1) # 80010cb0 <devsw+0x10>
    80008d74:	01010113          	addi	sp,sp,16
    80008d78:	00030067          	jr	t1

0000000080008d7c <console_write>:
    80008d7c:	ff010113          	addi	sp,sp,-16
    80008d80:	00813423          	sd	s0,8(sp)
    80008d84:	01010413          	addi	s0,sp,16
    80008d88:	00813403          	ld	s0,8(sp)
    80008d8c:	00008317          	auipc	t1,0x8
    80008d90:	f2c33303          	ld	t1,-212(t1) # 80010cb8 <devsw+0x18>
    80008d94:	01010113          	addi	sp,sp,16
    80008d98:	00030067          	jr	t1

0000000080008d9c <panic>:
    80008d9c:	fe010113          	addi	sp,sp,-32
    80008da0:	00113c23          	sd	ra,24(sp)
    80008da4:	00813823          	sd	s0,16(sp)
    80008da8:	00913423          	sd	s1,8(sp)
    80008dac:	02010413          	addi	s0,sp,32
    80008db0:	00050493          	mv	s1,a0
    80008db4:	00002517          	auipc	a0,0x2
    80008db8:	7f450513          	addi	a0,a0,2036 # 8000b5a8 <_ZN10_BuddyNode8DATA_LENE+0x174>
    80008dbc:	00008797          	auipc	a5,0x8
    80008dc0:	f807ae23          	sw	zero,-100(a5) # 80010d58 <pr+0x18>
    80008dc4:	00000097          	auipc	ra,0x0
    80008dc8:	034080e7          	jalr	52(ra) # 80008df8 <__printf>
    80008dcc:	00048513          	mv	a0,s1
    80008dd0:	00000097          	auipc	ra,0x0
    80008dd4:	028080e7          	jalr	40(ra) # 80008df8 <__printf>
    80008dd8:	00002517          	auipc	a0,0x2
    80008ddc:	29050513          	addi	a0,a0,656 # 8000b068 <PAGEOFFMASK+0x44>
    80008de0:	00000097          	auipc	ra,0x0
    80008de4:	018080e7          	jalr	24(ra) # 80008df8 <__printf>
    80008de8:	00100793          	li	a5,1
    80008dec:	00007717          	auipc	a4,0x7
    80008df0:	bef72623          	sw	a5,-1044(a4) # 8000f9d8 <panicked>
    80008df4:	0000006f          	j	80008df4 <panic+0x58>

0000000080008df8 <__printf>:
    80008df8:	f3010113          	addi	sp,sp,-208
    80008dfc:	08813023          	sd	s0,128(sp)
    80008e00:	07313423          	sd	s3,104(sp)
    80008e04:	09010413          	addi	s0,sp,144
    80008e08:	05813023          	sd	s8,64(sp)
    80008e0c:	08113423          	sd	ra,136(sp)
    80008e10:	06913c23          	sd	s1,120(sp)
    80008e14:	07213823          	sd	s2,112(sp)
    80008e18:	07413023          	sd	s4,96(sp)
    80008e1c:	05513c23          	sd	s5,88(sp)
    80008e20:	05613823          	sd	s6,80(sp)
    80008e24:	05713423          	sd	s7,72(sp)
    80008e28:	03913c23          	sd	s9,56(sp)
    80008e2c:	03a13823          	sd	s10,48(sp)
    80008e30:	03b13423          	sd	s11,40(sp)
    80008e34:	00008317          	auipc	t1,0x8
    80008e38:	f0c30313          	addi	t1,t1,-244 # 80010d40 <pr>
    80008e3c:	01832c03          	lw	s8,24(t1)
    80008e40:	00b43423          	sd	a1,8(s0)
    80008e44:	00c43823          	sd	a2,16(s0)
    80008e48:	00d43c23          	sd	a3,24(s0)
    80008e4c:	02e43023          	sd	a4,32(s0)
    80008e50:	02f43423          	sd	a5,40(s0)
    80008e54:	03043823          	sd	a6,48(s0)
    80008e58:	03143c23          	sd	a7,56(s0)
    80008e5c:	00050993          	mv	s3,a0
    80008e60:	4a0c1663          	bnez	s8,8000930c <__printf+0x514>
    80008e64:	60098c63          	beqz	s3,8000947c <__printf+0x684>
    80008e68:	0009c503          	lbu	a0,0(s3)
    80008e6c:	00840793          	addi	a5,s0,8
    80008e70:	f6f43c23          	sd	a5,-136(s0)
    80008e74:	00000493          	li	s1,0
    80008e78:	22050063          	beqz	a0,80009098 <__printf+0x2a0>
    80008e7c:	00002a37          	lui	s4,0x2
    80008e80:	00018ab7          	lui	s5,0x18
    80008e84:	000f4b37          	lui	s6,0xf4
    80008e88:	00989bb7          	lui	s7,0x989
    80008e8c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80008e90:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80008e94:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80008e98:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80008e9c:	00148c9b          	addiw	s9,s1,1
    80008ea0:	02500793          	li	a5,37
    80008ea4:	01998933          	add	s2,s3,s9
    80008ea8:	38f51263          	bne	a0,a5,8000922c <__printf+0x434>
    80008eac:	00094783          	lbu	a5,0(s2)
    80008eb0:	00078c9b          	sext.w	s9,a5
    80008eb4:	1e078263          	beqz	a5,80009098 <__printf+0x2a0>
    80008eb8:	0024849b          	addiw	s1,s1,2
    80008ebc:	07000713          	li	a4,112
    80008ec0:	00998933          	add	s2,s3,s1
    80008ec4:	38e78a63          	beq	a5,a4,80009258 <__printf+0x460>
    80008ec8:	20f76863          	bltu	a4,a5,800090d8 <__printf+0x2e0>
    80008ecc:	42a78863          	beq	a5,a0,800092fc <__printf+0x504>
    80008ed0:	06400713          	li	a4,100
    80008ed4:	40e79663          	bne	a5,a4,800092e0 <__printf+0x4e8>
    80008ed8:	f7843783          	ld	a5,-136(s0)
    80008edc:	0007a603          	lw	a2,0(a5)
    80008ee0:	00878793          	addi	a5,a5,8
    80008ee4:	f6f43c23          	sd	a5,-136(s0)
    80008ee8:	42064a63          	bltz	a2,8000931c <__printf+0x524>
    80008eec:	00a00713          	li	a4,10
    80008ef0:	02e677bb          	remuw	a5,a2,a4
    80008ef4:	00002d97          	auipc	s11,0x2
    80008ef8:	6dcd8d93          	addi	s11,s11,1756 # 8000b5d0 <digits>
    80008efc:	00900593          	li	a1,9
    80008f00:	0006051b          	sext.w	a0,a2
    80008f04:	00000c93          	li	s9,0
    80008f08:	02079793          	slli	a5,a5,0x20
    80008f0c:	0207d793          	srli	a5,a5,0x20
    80008f10:	00fd87b3          	add	a5,s11,a5
    80008f14:	0007c783          	lbu	a5,0(a5)
    80008f18:	02e656bb          	divuw	a3,a2,a4
    80008f1c:	f8f40023          	sb	a5,-128(s0)
    80008f20:	14c5d863          	bge	a1,a2,80009070 <__printf+0x278>
    80008f24:	06300593          	li	a1,99
    80008f28:	00100c93          	li	s9,1
    80008f2c:	02e6f7bb          	remuw	a5,a3,a4
    80008f30:	02079793          	slli	a5,a5,0x20
    80008f34:	0207d793          	srli	a5,a5,0x20
    80008f38:	00fd87b3          	add	a5,s11,a5
    80008f3c:	0007c783          	lbu	a5,0(a5)
    80008f40:	02e6d73b          	divuw	a4,a3,a4
    80008f44:	f8f400a3          	sb	a5,-127(s0)
    80008f48:	12a5f463          	bgeu	a1,a0,80009070 <__printf+0x278>
    80008f4c:	00a00693          	li	a3,10
    80008f50:	00900593          	li	a1,9
    80008f54:	02d777bb          	remuw	a5,a4,a3
    80008f58:	02079793          	slli	a5,a5,0x20
    80008f5c:	0207d793          	srli	a5,a5,0x20
    80008f60:	00fd87b3          	add	a5,s11,a5
    80008f64:	0007c503          	lbu	a0,0(a5)
    80008f68:	02d757bb          	divuw	a5,a4,a3
    80008f6c:	f8a40123          	sb	a0,-126(s0)
    80008f70:	48e5f263          	bgeu	a1,a4,800093f4 <__printf+0x5fc>
    80008f74:	06300513          	li	a0,99
    80008f78:	02d7f5bb          	remuw	a1,a5,a3
    80008f7c:	02059593          	slli	a1,a1,0x20
    80008f80:	0205d593          	srli	a1,a1,0x20
    80008f84:	00bd85b3          	add	a1,s11,a1
    80008f88:	0005c583          	lbu	a1,0(a1)
    80008f8c:	02d7d7bb          	divuw	a5,a5,a3
    80008f90:	f8b401a3          	sb	a1,-125(s0)
    80008f94:	48e57263          	bgeu	a0,a4,80009418 <__printf+0x620>
    80008f98:	3e700513          	li	a0,999
    80008f9c:	02d7f5bb          	remuw	a1,a5,a3
    80008fa0:	02059593          	slli	a1,a1,0x20
    80008fa4:	0205d593          	srli	a1,a1,0x20
    80008fa8:	00bd85b3          	add	a1,s11,a1
    80008fac:	0005c583          	lbu	a1,0(a1)
    80008fb0:	02d7d7bb          	divuw	a5,a5,a3
    80008fb4:	f8b40223          	sb	a1,-124(s0)
    80008fb8:	46e57663          	bgeu	a0,a4,80009424 <__printf+0x62c>
    80008fbc:	02d7f5bb          	remuw	a1,a5,a3
    80008fc0:	02059593          	slli	a1,a1,0x20
    80008fc4:	0205d593          	srli	a1,a1,0x20
    80008fc8:	00bd85b3          	add	a1,s11,a1
    80008fcc:	0005c583          	lbu	a1,0(a1)
    80008fd0:	02d7d7bb          	divuw	a5,a5,a3
    80008fd4:	f8b402a3          	sb	a1,-123(s0)
    80008fd8:	46ea7863          	bgeu	s4,a4,80009448 <__printf+0x650>
    80008fdc:	02d7f5bb          	remuw	a1,a5,a3
    80008fe0:	02059593          	slli	a1,a1,0x20
    80008fe4:	0205d593          	srli	a1,a1,0x20
    80008fe8:	00bd85b3          	add	a1,s11,a1
    80008fec:	0005c583          	lbu	a1,0(a1)
    80008ff0:	02d7d7bb          	divuw	a5,a5,a3
    80008ff4:	f8b40323          	sb	a1,-122(s0)
    80008ff8:	3eeaf863          	bgeu	s5,a4,800093e8 <__printf+0x5f0>
    80008ffc:	02d7f5bb          	remuw	a1,a5,a3
    80009000:	02059593          	slli	a1,a1,0x20
    80009004:	0205d593          	srli	a1,a1,0x20
    80009008:	00bd85b3          	add	a1,s11,a1
    8000900c:	0005c583          	lbu	a1,0(a1)
    80009010:	02d7d7bb          	divuw	a5,a5,a3
    80009014:	f8b403a3          	sb	a1,-121(s0)
    80009018:	42eb7e63          	bgeu	s6,a4,80009454 <__printf+0x65c>
    8000901c:	02d7f5bb          	remuw	a1,a5,a3
    80009020:	02059593          	slli	a1,a1,0x20
    80009024:	0205d593          	srli	a1,a1,0x20
    80009028:	00bd85b3          	add	a1,s11,a1
    8000902c:	0005c583          	lbu	a1,0(a1)
    80009030:	02d7d7bb          	divuw	a5,a5,a3
    80009034:	f8b40423          	sb	a1,-120(s0)
    80009038:	42ebfc63          	bgeu	s7,a4,80009470 <__printf+0x678>
    8000903c:	02079793          	slli	a5,a5,0x20
    80009040:	0207d793          	srli	a5,a5,0x20
    80009044:	00fd8db3          	add	s11,s11,a5
    80009048:	000dc703          	lbu	a4,0(s11)
    8000904c:	00a00793          	li	a5,10
    80009050:	00900c93          	li	s9,9
    80009054:	f8e404a3          	sb	a4,-119(s0)
    80009058:	00065c63          	bgez	a2,80009070 <__printf+0x278>
    8000905c:	f9040713          	addi	a4,s0,-112
    80009060:	00f70733          	add	a4,a4,a5
    80009064:	02d00693          	li	a3,45
    80009068:	fed70823          	sb	a3,-16(a4)
    8000906c:	00078c93          	mv	s9,a5
    80009070:	f8040793          	addi	a5,s0,-128
    80009074:	01978cb3          	add	s9,a5,s9
    80009078:	f7f40d13          	addi	s10,s0,-129
    8000907c:	000cc503          	lbu	a0,0(s9)
    80009080:	fffc8c93          	addi	s9,s9,-1
    80009084:	00000097          	auipc	ra,0x0
    80009088:	b90080e7          	jalr	-1136(ra) # 80008c14 <consputc>
    8000908c:	ffac98e3          	bne	s9,s10,8000907c <__printf+0x284>
    80009090:	00094503          	lbu	a0,0(s2)
    80009094:	e00514e3          	bnez	a0,80008e9c <__printf+0xa4>
    80009098:	1a0c1663          	bnez	s8,80009244 <__printf+0x44c>
    8000909c:	08813083          	ld	ra,136(sp)
    800090a0:	08013403          	ld	s0,128(sp)
    800090a4:	07813483          	ld	s1,120(sp)
    800090a8:	07013903          	ld	s2,112(sp)
    800090ac:	06813983          	ld	s3,104(sp)
    800090b0:	06013a03          	ld	s4,96(sp)
    800090b4:	05813a83          	ld	s5,88(sp)
    800090b8:	05013b03          	ld	s6,80(sp)
    800090bc:	04813b83          	ld	s7,72(sp)
    800090c0:	04013c03          	ld	s8,64(sp)
    800090c4:	03813c83          	ld	s9,56(sp)
    800090c8:	03013d03          	ld	s10,48(sp)
    800090cc:	02813d83          	ld	s11,40(sp)
    800090d0:	0d010113          	addi	sp,sp,208
    800090d4:	00008067          	ret
    800090d8:	07300713          	li	a4,115
    800090dc:	1ce78a63          	beq	a5,a4,800092b0 <__printf+0x4b8>
    800090e0:	07800713          	li	a4,120
    800090e4:	1ee79e63          	bne	a5,a4,800092e0 <__printf+0x4e8>
    800090e8:	f7843783          	ld	a5,-136(s0)
    800090ec:	0007a703          	lw	a4,0(a5)
    800090f0:	00878793          	addi	a5,a5,8
    800090f4:	f6f43c23          	sd	a5,-136(s0)
    800090f8:	28074263          	bltz	a4,8000937c <__printf+0x584>
    800090fc:	00002d97          	auipc	s11,0x2
    80009100:	4d4d8d93          	addi	s11,s11,1236 # 8000b5d0 <digits>
    80009104:	00f77793          	andi	a5,a4,15
    80009108:	00fd87b3          	add	a5,s11,a5
    8000910c:	0007c683          	lbu	a3,0(a5)
    80009110:	00f00613          	li	a2,15
    80009114:	0007079b          	sext.w	a5,a4
    80009118:	f8d40023          	sb	a3,-128(s0)
    8000911c:	0047559b          	srliw	a1,a4,0x4
    80009120:	0047569b          	srliw	a3,a4,0x4
    80009124:	00000c93          	li	s9,0
    80009128:	0ee65063          	bge	a2,a4,80009208 <__printf+0x410>
    8000912c:	00f6f693          	andi	a3,a3,15
    80009130:	00dd86b3          	add	a3,s11,a3
    80009134:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80009138:	0087d79b          	srliw	a5,a5,0x8
    8000913c:	00100c93          	li	s9,1
    80009140:	f8d400a3          	sb	a3,-127(s0)
    80009144:	0cb67263          	bgeu	a2,a1,80009208 <__printf+0x410>
    80009148:	00f7f693          	andi	a3,a5,15
    8000914c:	00dd86b3          	add	a3,s11,a3
    80009150:	0006c583          	lbu	a1,0(a3)
    80009154:	00f00613          	li	a2,15
    80009158:	0047d69b          	srliw	a3,a5,0x4
    8000915c:	f8b40123          	sb	a1,-126(s0)
    80009160:	0047d593          	srli	a1,a5,0x4
    80009164:	28f67e63          	bgeu	a2,a5,80009400 <__printf+0x608>
    80009168:	00f6f693          	andi	a3,a3,15
    8000916c:	00dd86b3          	add	a3,s11,a3
    80009170:	0006c503          	lbu	a0,0(a3)
    80009174:	0087d813          	srli	a6,a5,0x8
    80009178:	0087d69b          	srliw	a3,a5,0x8
    8000917c:	f8a401a3          	sb	a0,-125(s0)
    80009180:	28b67663          	bgeu	a2,a1,8000940c <__printf+0x614>
    80009184:	00f6f693          	andi	a3,a3,15
    80009188:	00dd86b3          	add	a3,s11,a3
    8000918c:	0006c583          	lbu	a1,0(a3)
    80009190:	00c7d513          	srli	a0,a5,0xc
    80009194:	00c7d69b          	srliw	a3,a5,0xc
    80009198:	f8b40223          	sb	a1,-124(s0)
    8000919c:	29067a63          	bgeu	a2,a6,80009430 <__printf+0x638>
    800091a0:	00f6f693          	andi	a3,a3,15
    800091a4:	00dd86b3          	add	a3,s11,a3
    800091a8:	0006c583          	lbu	a1,0(a3)
    800091ac:	0107d813          	srli	a6,a5,0x10
    800091b0:	0107d69b          	srliw	a3,a5,0x10
    800091b4:	f8b402a3          	sb	a1,-123(s0)
    800091b8:	28a67263          	bgeu	a2,a0,8000943c <__printf+0x644>
    800091bc:	00f6f693          	andi	a3,a3,15
    800091c0:	00dd86b3          	add	a3,s11,a3
    800091c4:	0006c683          	lbu	a3,0(a3)
    800091c8:	0147d79b          	srliw	a5,a5,0x14
    800091cc:	f8d40323          	sb	a3,-122(s0)
    800091d0:	21067663          	bgeu	a2,a6,800093dc <__printf+0x5e4>
    800091d4:	02079793          	slli	a5,a5,0x20
    800091d8:	0207d793          	srli	a5,a5,0x20
    800091dc:	00fd8db3          	add	s11,s11,a5
    800091e0:	000dc683          	lbu	a3,0(s11)
    800091e4:	00800793          	li	a5,8
    800091e8:	00700c93          	li	s9,7
    800091ec:	f8d403a3          	sb	a3,-121(s0)
    800091f0:	00075c63          	bgez	a4,80009208 <__printf+0x410>
    800091f4:	f9040713          	addi	a4,s0,-112
    800091f8:	00f70733          	add	a4,a4,a5
    800091fc:	02d00693          	li	a3,45
    80009200:	fed70823          	sb	a3,-16(a4)
    80009204:	00078c93          	mv	s9,a5
    80009208:	f8040793          	addi	a5,s0,-128
    8000920c:	01978cb3          	add	s9,a5,s9
    80009210:	f7f40d13          	addi	s10,s0,-129
    80009214:	000cc503          	lbu	a0,0(s9)
    80009218:	fffc8c93          	addi	s9,s9,-1
    8000921c:	00000097          	auipc	ra,0x0
    80009220:	9f8080e7          	jalr	-1544(ra) # 80008c14 <consputc>
    80009224:	ff9d18e3          	bne	s10,s9,80009214 <__printf+0x41c>
    80009228:	0100006f          	j	80009238 <__printf+0x440>
    8000922c:	00000097          	auipc	ra,0x0
    80009230:	9e8080e7          	jalr	-1560(ra) # 80008c14 <consputc>
    80009234:	000c8493          	mv	s1,s9
    80009238:	00094503          	lbu	a0,0(s2)
    8000923c:	c60510e3          	bnez	a0,80008e9c <__printf+0xa4>
    80009240:	e40c0ee3          	beqz	s8,8000909c <__printf+0x2a4>
    80009244:	00008517          	auipc	a0,0x8
    80009248:	afc50513          	addi	a0,a0,-1284 # 80010d40 <pr>
    8000924c:	00001097          	auipc	ra,0x1
    80009250:	94c080e7          	jalr	-1716(ra) # 80009b98 <release>
    80009254:	e49ff06f          	j	8000909c <__printf+0x2a4>
    80009258:	f7843783          	ld	a5,-136(s0)
    8000925c:	03000513          	li	a0,48
    80009260:	01000d13          	li	s10,16
    80009264:	00878713          	addi	a4,a5,8
    80009268:	0007bc83          	ld	s9,0(a5)
    8000926c:	f6e43c23          	sd	a4,-136(s0)
    80009270:	00000097          	auipc	ra,0x0
    80009274:	9a4080e7          	jalr	-1628(ra) # 80008c14 <consputc>
    80009278:	07800513          	li	a0,120
    8000927c:	00000097          	auipc	ra,0x0
    80009280:	998080e7          	jalr	-1640(ra) # 80008c14 <consputc>
    80009284:	00002d97          	auipc	s11,0x2
    80009288:	34cd8d93          	addi	s11,s11,844 # 8000b5d0 <digits>
    8000928c:	03ccd793          	srli	a5,s9,0x3c
    80009290:	00fd87b3          	add	a5,s11,a5
    80009294:	0007c503          	lbu	a0,0(a5)
    80009298:	fffd0d1b          	addiw	s10,s10,-1
    8000929c:	004c9c93          	slli	s9,s9,0x4
    800092a0:	00000097          	auipc	ra,0x0
    800092a4:	974080e7          	jalr	-1676(ra) # 80008c14 <consputc>
    800092a8:	fe0d12e3          	bnez	s10,8000928c <__printf+0x494>
    800092ac:	f8dff06f          	j	80009238 <__printf+0x440>
    800092b0:	f7843783          	ld	a5,-136(s0)
    800092b4:	0007bc83          	ld	s9,0(a5)
    800092b8:	00878793          	addi	a5,a5,8
    800092bc:	f6f43c23          	sd	a5,-136(s0)
    800092c0:	000c9a63          	bnez	s9,800092d4 <__printf+0x4dc>
    800092c4:	1080006f          	j	800093cc <__printf+0x5d4>
    800092c8:	001c8c93          	addi	s9,s9,1
    800092cc:	00000097          	auipc	ra,0x0
    800092d0:	948080e7          	jalr	-1720(ra) # 80008c14 <consputc>
    800092d4:	000cc503          	lbu	a0,0(s9)
    800092d8:	fe0518e3          	bnez	a0,800092c8 <__printf+0x4d0>
    800092dc:	f5dff06f          	j	80009238 <__printf+0x440>
    800092e0:	02500513          	li	a0,37
    800092e4:	00000097          	auipc	ra,0x0
    800092e8:	930080e7          	jalr	-1744(ra) # 80008c14 <consputc>
    800092ec:	000c8513          	mv	a0,s9
    800092f0:	00000097          	auipc	ra,0x0
    800092f4:	924080e7          	jalr	-1756(ra) # 80008c14 <consputc>
    800092f8:	f41ff06f          	j	80009238 <__printf+0x440>
    800092fc:	02500513          	li	a0,37
    80009300:	00000097          	auipc	ra,0x0
    80009304:	914080e7          	jalr	-1772(ra) # 80008c14 <consputc>
    80009308:	f31ff06f          	j	80009238 <__printf+0x440>
    8000930c:	00030513          	mv	a0,t1
    80009310:	00000097          	auipc	ra,0x0
    80009314:	7bc080e7          	jalr	1980(ra) # 80009acc <acquire>
    80009318:	b4dff06f          	j	80008e64 <__printf+0x6c>
    8000931c:	40c0053b          	negw	a0,a2
    80009320:	00a00713          	li	a4,10
    80009324:	02e576bb          	remuw	a3,a0,a4
    80009328:	00002d97          	auipc	s11,0x2
    8000932c:	2a8d8d93          	addi	s11,s11,680 # 8000b5d0 <digits>
    80009330:	ff700593          	li	a1,-9
    80009334:	02069693          	slli	a3,a3,0x20
    80009338:	0206d693          	srli	a3,a3,0x20
    8000933c:	00dd86b3          	add	a3,s11,a3
    80009340:	0006c683          	lbu	a3,0(a3)
    80009344:	02e557bb          	divuw	a5,a0,a4
    80009348:	f8d40023          	sb	a3,-128(s0)
    8000934c:	10b65e63          	bge	a2,a1,80009468 <__printf+0x670>
    80009350:	06300593          	li	a1,99
    80009354:	02e7f6bb          	remuw	a3,a5,a4
    80009358:	02069693          	slli	a3,a3,0x20
    8000935c:	0206d693          	srli	a3,a3,0x20
    80009360:	00dd86b3          	add	a3,s11,a3
    80009364:	0006c683          	lbu	a3,0(a3)
    80009368:	02e7d73b          	divuw	a4,a5,a4
    8000936c:	00200793          	li	a5,2
    80009370:	f8d400a3          	sb	a3,-127(s0)
    80009374:	bca5ece3          	bltu	a1,a0,80008f4c <__printf+0x154>
    80009378:	ce5ff06f          	j	8000905c <__printf+0x264>
    8000937c:	40e007bb          	negw	a5,a4
    80009380:	00002d97          	auipc	s11,0x2
    80009384:	250d8d93          	addi	s11,s11,592 # 8000b5d0 <digits>
    80009388:	00f7f693          	andi	a3,a5,15
    8000938c:	00dd86b3          	add	a3,s11,a3
    80009390:	0006c583          	lbu	a1,0(a3)
    80009394:	ff100613          	li	a2,-15
    80009398:	0047d69b          	srliw	a3,a5,0x4
    8000939c:	f8b40023          	sb	a1,-128(s0)
    800093a0:	0047d59b          	srliw	a1,a5,0x4
    800093a4:	0ac75e63          	bge	a4,a2,80009460 <__printf+0x668>
    800093a8:	00f6f693          	andi	a3,a3,15
    800093ac:	00dd86b3          	add	a3,s11,a3
    800093b0:	0006c603          	lbu	a2,0(a3)
    800093b4:	00f00693          	li	a3,15
    800093b8:	0087d79b          	srliw	a5,a5,0x8
    800093bc:	f8c400a3          	sb	a2,-127(s0)
    800093c0:	d8b6e4e3          	bltu	a3,a1,80009148 <__printf+0x350>
    800093c4:	00200793          	li	a5,2
    800093c8:	e2dff06f          	j	800091f4 <__printf+0x3fc>
    800093cc:	00002c97          	auipc	s9,0x2
    800093d0:	1e4c8c93          	addi	s9,s9,484 # 8000b5b0 <_ZN10_BuddyNode8DATA_LENE+0x17c>
    800093d4:	02800513          	li	a0,40
    800093d8:	ef1ff06f          	j	800092c8 <__printf+0x4d0>
    800093dc:	00700793          	li	a5,7
    800093e0:	00600c93          	li	s9,6
    800093e4:	e0dff06f          	j	800091f0 <__printf+0x3f8>
    800093e8:	00700793          	li	a5,7
    800093ec:	00600c93          	li	s9,6
    800093f0:	c69ff06f          	j	80009058 <__printf+0x260>
    800093f4:	00300793          	li	a5,3
    800093f8:	00200c93          	li	s9,2
    800093fc:	c5dff06f          	j	80009058 <__printf+0x260>
    80009400:	00300793          	li	a5,3
    80009404:	00200c93          	li	s9,2
    80009408:	de9ff06f          	j	800091f0 <__printf+0x3f8>
    8000940c:	00400793          	li	a5,4
    80009410:	00300c93          	li	s9,3
    80009414:	dddff06f          	j	800091f0 <__printf+0x3f8>
    80009418:	00400793          	li	a5,4
    8000941c:	00300c93          	li	s9,3
    80009420:	c39ff06f          	j	80009058 <__printf+0x260>
    80009424:	00500793          	li	a5,5
    80009428:	00400c93          	li	s9,4
    8000942c:	c2dff06f          	j	80009058 <__printf+0x260>
    80009430:	00500793          	li	a5,5
    80009434:	00400c93          	li	s9,4
    80009438:	db9ff06f          	j	800091f0 <__printf+0x3f8>
    8000943c:	00600793          	li	a5,6
    80009440:	00500c93          	li	s9,5
    80009444:	dadff06f          	j	800091f0 <__printf+0x3f8>
    80009448:	00600793          	li	a5,6
    8000944c:	00500c93          	li	s9,5
    80009450:	c09ff06f          	j	80009058 <__printf+0x260>
    80009454:	00800793          	li	a5,8
    80009458:	00700c93          	li	s9,7
    8000945c:	bfdff06f          	j	80009058 <__printf+0x260>
    80009460:	00100793          	li	a5,1
    80009464:	d91ff06f          	j	800091f4 <__printf+0x3fc>
    80009468:	00100793          	li	a5,1
    8000946c:	bf1ff06f          	j	8000905c <__printf+0x264>
    80009470:	00900793          	li	a5,9
    80009474:	00800c93          	li	s9,8
    80009478:	be1ff06f          	j	80009058 <__printf+0x260>
    8000947c:	00002517          	auipc	a0,0x2
    80009480:	13c50513          	addi	a0,a0,316 # 8000b5b8 <_ZN10_BuddyNode8DATA_LENE+0x184>
    80009484:	00000097          	auipc	ra,0x0
    80009488:	918080e7          	jalr	-1768(ra) # 80008d9c <panic>

000000008000948c <printfinit>:
    8000948c:	fe010113          	addi	sp,sp,-32
    80009490:	00813823          	sd	s0,16(sp)
    80009494:	00913423          	sd	s1,8(sp)
    80009498:	00113c23          	sd	ra,24(sp)
    8000949c:	02010413          	addi	s0,sp,32
    800094a0:	00008497          	auipc	s1,0x8
    800094a4:	8a048493          	addi	s1,s1,-1888 # 80010d40 <pr>
    800094a8:	00048513          	mv	a0,s1
    800094ac:	00002597          	auipc	a1,0x2
    800094b0:	11c58593          	addi	a1,a1,284 # 8000b5c8 <_ZN10_BuddyNode8DATA_LENE+0x194>
    800094b4:	00000097          	auipc	ra,0x0
    800094b8:	5f4080e7          	jalr	1524(ra) # 80009aa8 <initlock>
    800094bc:	01813083          	ld	ra,24(sp)
    800094c0:	01013403          	ld	s0,16(sp)
    800094c4:	0004ac23          	sw	zero,24(s1)
    800094c8:	00813483          	ld	s1,8(sp)
    800094cc:	02010113          	addi	sp,sp,32
    800094d0:	00008067          	ret

00000000800094d4 <uartinit>:
    800094d4:	ff010113          	addi	sp,sp,-16
    800094d8:	00813423          	sd	s0,8(sp)
    800094dc:	01010413          	addi	s0,sp,16
    800094e0:	100007b7          	lui	a5,0x10000
    800094e4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800094e8:	f8000713          	li	a4,-128
    800094ec:	00e781a3          	sb	a4,3(a5)
    800094f0:	00300713          	li	a4,3
    800094f4:	00e78023          	sb	a4,0(a5)
    800094f8:	000780a3          	sb	zero,1(a5)
    800094fc:	00e781a3          	sb	a4,3(a5)
    80009500:	00700693          	li	a3,7
    80009504:	00d78123          	sb	a3,2(a5)
    80009508:	00e780a3          	sb	a4,1(a5)
    8000950c:	00813403          	ld	s0,8(sp)
    80009510:	01010113          	addi	sp,sp,16
    80009514:	00008067          	ret

0000000080009518 <uartputc>:
    80009518:	00006797          	auipc	a5,0x6
    8000951c:	4c07a783          	lw	a5,1216(a5) # 8000f9d8 <panicked>
    80009520:	00078463          	beqz	a5,80009528 <uartputc+0x10>
    80009524:	0000006f          	j	80009524 <uartputc+0xc>
    80009528:	fd010113          	addi	sp,sp,-48
    8000952c:	02813023          	sd	s0,32(sp)
    80009530:	00913c23          	sd	s1,24(sp)
    80009534:	01213823          	sd	s2,16(sp)
    80009538:	01313423          	sd	s3,8(sp)
    8000953c:	02113423          	sd	ra,40(sp)
    80009540:	03010413          	addi	s0,sp,48
    80009544:	00006917          	auipc	s2,0x6
    80009548:	49c90913          	addi	s2,s2,1180 # 8000f9e0 <uart_tx_r>
    8000954c:	00093783          	ld	a5,0(s2)
    80009550:	00006497          	auipc	s1,0x6
    80009554:	49848493          	addi	s1,s1,1176 # 8000f9e8 <uart_tx_w>
    80009558:	0004b703          	ld	a4,0(s1)
    8000955c:	02078693          	addi	a3,a5,32
    80009560:	00050993          	mv	s3,a0
    80009564:	02e69c63          	bne	a3,a4,8000959c <uartputc+0x84>
    80009568:	00001097          	auipc	ra,0x1
    8000956c:	834080e7          	jalr	-1996(ra) # 80009d9c <push_on>
    80009570:	00093783          	ld	a5,0(s2)
    80009574:	0004b703          	ld	a4,0(s1)
    80009578:	02078793          	addi	a5,a5,32
    8000957c:	00e79463          	bne	a5,a4,80009584 <uartputc+0x6c>
    80009580:	0000006f          	j	80009580 <uartputc+0x68>
    80009584:	00001097          	auipc	ra,0x1
    80009588:	88c080e7          	jalr	-1908(ra) # 80009e10 <pop_on>
    8000958c:	00093783          	ld	a5,0(s2)
    80009590:	0004b703          	ld	a4,0(s1)
    80009594:	02078693          	addi	a3,a5,32
    80009598:	fce688e3          	beq	a3,a4,80009568 <uartputc+0x50>
    8000959c:	01f77693          	andi	a3,a4,31
    800095a0:	00007597          	auipc	a1,0x7
    800095a4:	7c058593          	addi	a1,a1,1984 # 80010d60 <uart_tx_buf>
    800095a8:	00d586b3          	add	a3,a1,a3
    800095ac:	00170713          	addi	a4,a4,1
    800095b0:	01368023          	sb	s3,0(a3)
    800095b4:	00e4b023          	sd	a4,0(s1)
    800095b8:	10000637          	lui	a2,0x10000
    800095bc:	02f71063          	bne	a4,a5,800095dc <uartputc+0xc4>
    800095c0:	0340006f          	j	800095f4 <uartputc+0xdc>
    800095c4:	00074703          	lbu	a4,0(a4)
    800095c8:	00f93023          	sd	a5,0(s2)
    800095cc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800095d0:	00093783          	ld	a5,0(s2)
    800095d4:	0004b703          	ld	a4,0(s1)
    800095d8:	00f70e63          	beq	a4,a5,800095f4 <uartputc+0xdc>
    800095dc:	00564683          	lbu	a3,5(a2)
    800095e0:	01f7f713          	andi	a4,a5,31
    800095e4:	00e58733          	add	a4,a1,a4
    800095e8:	0206f693          	andi	a3,a3,32
    800095ec:	00178793          	addi	a5,a5,1
    800095f0:	fc069ae3          	bnez	a3,800095c4 <uartputc+0xac>
    800095f4:	02813083          	ld	ra,40(sp)
    800095f8:	02013403          	ld	s0,32(sp)
    800095fc:	01813483          	ld	s1,24(sp)
    80009600:	01013903          	ld	s2,16(sp)
    80009604:	00813983          	ld	s3,8(sp)
    80009608:	03010113          	addi	sp,sp,48
    8000960c:	00008067          	ret

0000000080009610 <uartputc_sync>:
    80009610:	ff010113          	addi	sp,sp,-16
    80009614:	00813423          	sd	s0,8(sp)
    80009618:	01010413          	addi	s0,sp,16
    8000961c:	00006717          	auipc	a4,0x6
    80009620:	3bc72703          	lw	a4,956(a4) # 8000f9d8 <panicked>
    80009624:	02071663          	bnez	a4,80009650 <uartputc_sync+0x40>
    80009628:	00050793          	mv	a5,a0
    8000962c:	100006b7          	lui	a3,0x10000
    80009630:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80009634:	02077713          	andi	a4,a4,32
    80009638:	fe070ce3          	beqz	a4,80009630 <uartputc_sync+0x20>
    8000963c:	0ff7f793          	andi	a5,a5,255
    80009640:	00f68023          	sb	a5,0(a3)
    80009644:	00813403          	ld	s0,8(sp)
    80009648:	01010113          	addi	sp,sp,16
    8000964c:	00008067          	ret
    80009650:	0000006f          	j	80009650 <uartputc_sync+0x40>

0000000080009654 <uartstart>:
    80009654:	ff010113          	addi	sp,sp,-16
    80009658:	00813423          	sd	s0,8(sp)
    8000965c:	01010413          	addi	s0,sp,16
    80009660:	00006617          	auipc	a2,0x6
    80009664:	38060613          	addi	a2,a2,896 # 8000f9e0 <uart_tx_r>
    80009668:	00006517          	auipc	a0,0x6
    8000966c:	38050513          	addi	a0,a0,896 # 8000f9e8 <uart_tx_w>
    80009670:	00063783          	ld	a5,0(a2)
    80009674:	00053703          	ld	a4,0(a0)
    80009678:	04f70263          	beq	a4,a5,800096bc <uartstart+0x68>
    8000967c:	100005b7          	lui	a1,0x10000
    80009680:	00007817          	auipc	a6,0x7
    80009684:	6e080813          	addi	a6,a6,1760 # 80010d60 <uart_tx_buf>
    80009688:	01c0006f          	j	800096a4 <uartstart+0x50>
    8000968c:	0006c703          	lbu	a4,0(a3)
    80009690:	00f63023          	sd	a5,0(a2)
    80009694:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80009698:	00063783          	ld	a5,0(a2)
    8000969c:	00053703          	ld	a4,0(a0)
    800096a0:	00f70e63          	beq	a4,a5,800096bc <uartstart+0x68>
    800096a4:	01f7f713          	andi	a4,a5,31
    800096a8:	00e806b3          	add	a3,a6,a4
    800096ac:	0055c703          	lbu	a4,5(a1)
    800096b0:	00178793          	addi	a5,a5,1
    800096b4:	02077713          	andi	a4,a4,32
    800096b8:	fc071ae3          	bnez	a4,8000968c <uartstart+0x38>
    800096bc:	00813403          	ld	s0,8(sp)
    800096c0:	01010113          	addi	sp,sp,16
    800096c4:	00008067          	ret

00000000800096c8 <uartgetc>:
    800096c8:	ff010113          	addi	sp,sp,-16
    800096cc:	00813423          	sd	s0,8(sp)
    800096d0:	01010413          	addi	s0,sp,16
    800096d4:	10000737          	lui	a4,0x10000
    800096d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800096dc:	0017f793          	andi	a5,a5,1
    800096e0:	00078c63          	beqz	a5,800096f8 <uartgetc+0x30>
    800096e4:	00074503          	lbu	a0,0(a4)
    800096e8:	0ff57513          	andi	a0,a0,255
    800096ec:	00813403          	ld	s0,8(sp)
    800096f0:	01010113          	addi	sp,sp,16
    800096f4:	00008067          	ret
    800096f8:	fff00513          	li	a0,-1
    800096fc:	ff1ff06f          	j	800096ec <uartgetc+0x24>

0000000080009700 <uartintr>:
    80009700:	100007b7          	lui	a5,0x10000
    80009704:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80009708:	0017f793          	andi	a5,a5,1
    8000970c:	0a078463          	beqz	a5,800097b4 <uartintr+0xb4>
    80009710:	fe010113          	addi	sp,sp,-32
    80009714:	00813823          	sd	s0,16(sp)
    80009718:	00913423          	sd	s1,8(sp)
    8000971c:	00113c23          	sd	ra,24(sp)
    80009720:	02010413          	addi	s0,sp,32
    80009724:	100004b7          	lui	s1,0x10000
    80009728:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000972c:	0ff57513          	andi	a0,a0,255
    80009730:	fffff097          	auipc	ra,0xfffff
    80009734:	534080e7          	jalr	1332(ra) # 80008c64 <consoleintr>
    80009738:	0054c783          	lbu	a5,5(s1)
    8000973c:	0017f793          	andi	a5,a5,1
    80009740:	fe0794e3          	bnez	a5,80009728 <uartintr+0x28>
    80009744:	00006617          	auipc	a2,0x6
    80009748:	29c60613          	addi	a2,a2,668 # 8000f9e0 <uart_tx_r>
    8000974c:	00006517          	auipc	a0,0x6
    80009750:	29c50513          	addi	a0,a0,668 # 8000f9e8 <uart_tx_w>
    80009754:	00063783          	ld	a5,0(a2)
    80009758:	00053703          	ld	a4,0(a0)
    8000975c:	04f70263          	beq	a4,a5,800097a0 <uartintr+0xa0>
    80009760:	100005b7          	lui	a1,0x10000
    80009764:	00007817          	auipc	a6,0x7
    80009768:	5fc80813          	addi	a6,a6,1532 # 80010d60 <uart_tx_buf>
    8000976c:	01c0006f          	j	80009788 <uartintr+0x88>
    80009770:	0006c703          	lbu	a4,0(a3)
    80009774:	00f63023          	sd	a5,0(a2)
    80009778:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000977c:	00063783          	ld	a5,0(a2)
    80009780:	00053703          	ld	a4,0(a0)
    80009784:	00f70e63          	beq	a4,a5,800097a0 <uartintr+0xa0>
    80009788:	01f7f713          	andi	a4,a5,31
    8000978c:	00e806b3          	add	a3,a6,a4
    80009790:	0055c703          	lbu	a4,5(a1)
    80009794:	00178793          	addi	a5,a5,1
    80009798:	02077713          	andi	a4,a4,32
    8000979c:	fc071ae3          	bnez	a4,80009770 <uartintr+0x70>
    800097a0:	01813083          	ld	ra,24(sp)
    800097a4:	01013403          	ld	s0,16(sp)
    800097a8:	00813483          	ld	s1,8(sp)
    800097ac:	02010113          	addi	sp,sp,32
    800097b0:	00008067          	ret
    800097b4:	00006617          	auipc	a2,0x6
    800097b8:	22c60613          	addi	a2,a2,556 # 8000f9e0 <uart_tx_r>
    800097bc:	00006517          	auipc	a0,0x6
    800097c0:	22c50513          	addi	a0,a0,556 # 8000f9e8 <uart_tx_w>
    800097c4:	00063783          	ld	a5,0(a2)
    800097c8:	00053703          	ld	a4,0(a0)
    800097cc:	04f70263          	beq	a4,a5,80009810 <uartintr+0x110>
    800097d0:	100005b7          	lui	a1,0x10000
    800097d4:	00007817          	auipc	a6,0x7
    800097d8:	58c80813          	addi	a6,a6,1420 # 80010d60 <uart_tx_buf>
    800097dc:	01c0006f          	j	800097f8 <uartintr+0xf8>
    800097e0:	0006c703          	lbu	a4,0(a3)
    800097e4:	00f63023          	sd	a5,0(a2)
    800097e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800097ec:	00063783          	ld	a5,0(a2)
    800097f0:	00053703          	ld	a4,0(a0)
    800097f4:	02f70063          	beq	a4,a5,80009814 <uartintr+0x114>
    800097f8:	01f7f713          	andi	a4,a5,31
    800097fc:	00e806b3          	add	a3,a6,a4
    80009800:	0055c703          	lbu	a4,5(a1)
    80009804:	00178793          	addi	a5,a5,1
    80009808:	02077713          	andi	a4,a4,32
    8000980c:	fc071ae3          	bnez	a4,800097e0 <uartintr+0xe0>
    80009810:	00008067          	ret
    80009814:	00008067          	ret

0000000080009818 <kinit>:
    80009818:	fc010113          	addi	sp,sp,-64
    8000981c:	02913423          	sd	s1,40(sp)
    80009820:	fffff7b7          	lui	a5,0xfffff
    80009824:	0000c497          	auipc	s1,0xc
    80009828:	b6b48493          	addi	s1,s1,-1173 # 8001538f <end+0xfff>
    8000982c:	02813823          	sd	s0,48(sp)
    80009830:	01313c23          	sd	s3,24(sp)
    80009834:	00f4f4b3          	and	s1,s1,a5
    80009838:	02113c23          	sd	ra,56(sp)
    8000983c:	03213023          	sd	s2,32(sp)
    80009840:	01413823          	sd	s4,16(sp)
    80009844:	01513423          	sd	s5,8(sp)
    80009848:	04010413          	addi	s0,sp,64
    8000984c:	000017b7          	lui	a5,0x1
    80009850:	01100993          	li	s3,17
    80009854:	00f487b3          	add	a5,s1,a5
    80009858:	01b99993          	slli	s3,s3,0x1b
    8000985c:	06f9e063          	bltu	s3,a5,800098bc <kinit+0xa4>
    80009860:	0000ba97          	auipc	s5,0xb
    80009864:	b30a8a93          	addi	s5,s5,-1232 # 80014390 <end>
    80009868:	0754ec63          	bltu	s1,s5,800098e0 <kinit+0xc8>
    8000986c:	0734fa63          	bgeu	s1,s3,800098e0 <kinit+0xc8>
    80009870:	00088a37          	lui	s4,0x88
    80009874:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80009878:	00006917          	auipc	s2,0x6
    8000987c:	17890913          	addi	s2,s2,376 # 8000f9f0 <kmem>
    80009880:	00ca1a13          	slli	s4,s4,0xc
    80009884:	0140006f          	j	80009898 <kinit+0x80>
    80009888:	000017b7          	lui	a5,0x1
    8000988c:	00f484b3          	add	s1,s1,a5
    80009890:	0554e863          	bltu	s1,s5,800098e0 <kinit+0xc8>
    80009894:	0534f663          	bgeu	s1,s3,800098e0 <kinit+0xc8>
    80009898:	00001637          	lui	a2,0x1
    8000989c:	00100593          	li	a1,1
    800098a0:	00048513          	mv	a0,s1
    800098a4:	00000097          	auipc	ra,0x0
    800098a8:	5e4080e7          	jalr	1508(ra) # 80009e88 <__memset>
    800098ac:	00093783          	ld	a5,0(s2)
    800098b0:	00f4b023          	sd	a5,0(s1)
    800098b4:	00993023          	sd	s1,0(s2)
    800098b8:	fd4498e3          	bne	s1,s4,80009888 <kinit+0x70>
    800098bc:	03813083          	ld	ra,56(sp)
    800098c0:	03013403          	ld	s0,48(sp)
    800098c4:	02813483          	ld	s1,40(sp)
    800098c8:	02013903          	ld	s2,32(sp)
    800098cc:	01813983          	ld	s3,24(sp)
    800098d0:	01013a03          	ld	s4,16(sp)
    800098d4:	00813a83          	ld	s5,8(sp)
    800098d8:	04010113          	addi	sp,sp,64
    800098dc:	00008067          	ret
    800098e0:	00002517          	auipc	a0,0x2
    800098e4:	d0850513          	addi	a0,a0,-760 # 8000b5e8 <digits+0x18>
    800098e8:	fffff097          	auipc	ra,0xfffff
    800098ec:	4b4080e7          	jalr	1204(ra) # 80008d9c <panic>

00000000800098f0 <freerange>:
    800098f0:	fc010113          	addi	sp,sp,-64
    800098f4:	000017b7          	lui	a5,0x1
    800098f8:	02913423          	sd	s1,40(sp)
    800098fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80009900:	009504b3          	add	s1,a0,s1
    80009904:	fffff537          	lui	a0,0xfffff
    80009908:	02813823          	sd	s0,48(sp)
    8000990c:	02113c23          	sd	ra,56(sp)
    80009910:	03213023          	sd	s2,32(sp)
    80009914:	01313c23          	sd	s3,24(sp)
    80009918:	01413823          	sd	s4,16(sp)
    8000991c:	01513423          	sd	s5,8(sp)
    80009920:	01613023          	sd	s6,0(sp)
    80009924:	04010413          	addi	s0,sp,64
    80009928:	00a4f4b3          	and	s1,s1,a0
    8000992c:	00f487b3          	add	a5,s1,a5
    80009930:	06f5e463          	bltu	a1,a5,80009998 <freerange+0xa8>
    80009934:	0000ba97          	auipc	s5,0xb
    80009938:	a5ca8a93          	addi	s5,s5,-1444 # 80014390 <end>
    8000993c:	0954e263          	bltu	s1,s5,800099c0 <freerange+0xd0>
    80009940:	01100993          	li	s3,17
    80009944:	01b99993          	slli	s3,s3,0x1b
    80009948:	0734fc63          	bgeu	s1,s3,800099c0 <freerange+0xd0>
    8000994c:	00058a13          	mv	s4,a1
    80009950:	00006917          	auipc	s2,0x6
    80009954:	0a090913          	addi	s2,s2,160 # 8000f9f0 <kmem>
    80009958:	00002b37          	lui	s6,0x2
    8000995c:	0140006f          	j	80009970 <freerange+0x80>
    80009960:	000017b7          	lui	a5,0x1
    80009964:	00f484b3          	add	s1,s1,a5
    80009968:	0554ec63          	bltu	s1,s5,800099c0 <freerange+0xd0>
    8000996c:	0534fa63          	bgeu	s1,s3,800099c0 <freerange+0xd0>
    80009970:	00001637          	lui	a2,0x1
    80009974:	00100593          	li	a1,1
    80009978:	00048513          	mv	a0,s1
    8000997c:	00000097          	auipc	ra,0x0
    80009980:	50c080e7          	jalr	1292(ra) # 80009e88 <__memset>
    80009984:	00093703          	ld	a4,0(s2)
    80009988:	016487b3          	add	a5,s1,s6
    8000998c:	00e4b023          	sd	a4,0(s1)
    80009990:	00993023          	sd	s1,0(s2)
    80009994:	fcfa76e3          	bgeu	s4,a5,80009960 <freerange+0x70>
    80009998:	03813083          	ld	ra,56(sp)
    8000999c:	03013403          	ld	s0,48(sp)
    800099a0:	02813483          	ld	s1,40(sp)
    800099a4:	02013903          	ld	s2,32(sp)
    800099a8:	01813983          	ld	s3,24(sp)
    800099ac:	01013a03          	ld	s4,16(sp)
    800099b0:	00813a83          	ld	s5,8(sp)
    800099b4:	00013b03          	ld	s6,0(sp)
    800099b8:	04010113          	addi	sp,sp,64
    800099bc:	00008067          	ret
    800099c0:	00002517          	auipc	a0,0x2
    800099c4:	c2850513          	addi	a0,a0,-984 # 8000b5e8 <digits+0x18>
    800099c8:	fffff097          	auipc	ra,0xfffff
    800099cc:	3d4080e7          	jalr	980(ra) # 80008d9c <panic>

00000000800099d0 <kfree>:
    800099d0:	fe010113          	addi	sp,sp,-32
    800099d4:	00813823          	sd	s0,16(sp)
    800099d8:	00113c23          	sd	ra,24(sp)
    800099dc:	00913423          	sd	s1,8(sp)
    800099e0:	02010413          	addi	s0,sp,32
    800099e4:	03451793          	slli	a5,a0,0x34
    800099e8:	04079c63          	bnez	a5,80009a40 <kfree+0x70>
    800099ec:	0000b797          	auipc	a5,0xb
    800099f0:	9a478793          	addi	a5,a5,-1628 # 80014390 <end>
    800099f4:	00050493          	mv	s1,a0
    800099f8:	04f56463          	bltu	a0,a5,80009a40 <kfree+0x70>
    800099fc:	01100793          	li	a5,17
    80009a00:	01b79793          	slli	a5,a5,0x1b
    80009a04:	02f57e63          	bgeu	a0,a5,80009a40 <kfree+0x70>
    80009a08:	00001637          	lui	a2,0x1
    80009a0c:	00100593          	li	a1,1
    80009a10:	00000097          	auipc	ra,0x0
    80009a14:	478080e7          	jalr	1144(ra) # 80009e88 <__memset>
    80009a18:	00006797          	auipc	a5,0x6
    80009a1c:	fd878793          	addi	a5,a5,-40 # 8000f9f0 <kmem>
    80009a20:	0007b703          	ld	a4,0(a5)
    80009a24:	01813083          	ld	ra,24(sp)
    80009a28:	01013403          	ld	s0,16(sp)
    80009a2c:	00e4b023          	sd	a4,0(s1)
    80009a30:	0097b023          	sd	s1,0(a5)
    80009a34:	00813483          	ld	s1,8(sp)
    80009a38:	02010113          	addi	sp,sp,32
    80009a3c:	00008067          	ret
    80009a40:	00002517          	auipc	a0,0x2
    80009a44:	ba850513          	addi	a0,a0,-1112 # 8000b5e8 <digits+0x18>
    80009a48:	fffff097          	auipc	ra,0xfffff
    80009a4c:	354080e7          	jalr	852(ra) # 80008d9c <panic>

0000000080009a50 <kalloc>:
    80009a50:	fe010113          	addi	sp,sp,-32
    80009a54:	00813823          	sd	s0,16(sp)
    80009a58:	00913423          	sd	s1,8(sp)
    80009a5c:	00113c23          	sd	ra,24(sp)
    80009a60:	02010413          	addi	s0,sp,32
    80009a64:	00006797          	auipc	a5,0x6
    80009a68:	f8c78793          	addi	a5,a5,-116 # 8000f9f0 <kmem>
    80009a6c:	0007b483          	ld	s1,0(a5)
    80009a70:	02048063          	beqz	s1,80009a90 <kalloc+0x40>
    80009a74:	0004b703          	ld	a4,0(s1)
    80009a78:	00001637          	lui	a2,0x1
    80009a7c:	00500593          	li	a1,5
    80009a80:	00048513          	mv	a0,s1
    80009a84:	00e7b023          	sd	a4,0(a5)
    80009a88:	00000097          	auipc	ra,0x0
    80009a8c:	400080e7          	jalr	1024(ra) # 80009e88 <__memset>
    80009a90:	01813083          	ld	ra,24(sp)
    80009a94:	01013403          	ld	s0,16(sp)
    80009a98:	00048513          	mv	a0,s1
    80009a9c:	00813483          	ld	s1,8(sp)
    80009aa0:	02010113          	addi	sp,sp,32
    80009aa4:	00008067          	ret

0000000080009aa8 <initlock>:
    80009aa8:	ff010113          	addi	sp,sp,-16
    80009aac:	00813423          	sd	s0,8(sp)
    80009ab0:	01010413          	addi	s0,sp,16
    80009ab4:	00813403          	ld	s0,8(sp)
    80009ab8:	00b53423          	sd	a1,8(a0)
    80009abc:	00052023          	sw	zero,0(a0)
    80009ac0:	00053823          	sd	zero,16(a0)
    80009ac4:	01010113          	addi	sp,sp,16
    80009ac8:	00008067          	ret

0000000080009acc <acquire>:
    80009acc:	fe010113          	addi	sp,sp,-32
    80009ad0:	00813823          	sd	s0,16(sp)
    80009ad4:	00913423          	sd	s1,8(sp)
    80009ad8:	00113c23          	sd	ra,24(sp)
    80009adc:	01213023          	sd	s2,0(sp)
    80009ae0:	02010413          	addi	s0,sp,32
    80009ae4:	00050493          	mv	s1,a0
    80009ae8:	10002973          	csrr	s2,sstatus
    80009aec:	100027f3          	csrr	a5,sstatus
    80009af0:	ffd7f793          	andi	a5,a5,-3
    80009af4:	10079073          	csrw	sstatus,a5
    80009af8:	fffff097          	auipc	ra,0xfffff
    80009afc:	8e0080e7          	jalr	-1824(ra) # 800083d8 <mycpu>
    80009b00:	07852783          	lw	a5,120(a0)
    80009b04:	06078e63          	beqz	a5,80009b80 <acquire+0xb4>
    80009b08:	fffff097          	auipc	ra,0xfffff
    80009b0c:	8d0080e7          	jalr	-1840(ra) # 800083d8 <mycpu>
    80009b10:	07852783          	lw	a5,120(a0)
    80009b14:	0004a703          	lw	a4,0(s1)
    80009b18:	0017879b          	addiw	a5,a5,1
    80009b1c:	06f52c23          	sw	a5,120(a0)
    80009b20:	04071063          	bnez	a4,80009b60 <acquire+0x94>
    80009b24:	00100713          	li	a4,1
    80009b28:	00070793          	mv	a5,a4
    80009b2c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80009b30:	0007879b          	sext.w	a5,a5
    80009b34:	fe079ae3          	bnez	a5,80009b28 <acquire+0x5c>
    80009b38:	0ff0000f          	fence
    80009b3c:	fffff097          	auipc	ra,0xfffff
    80009b40:	89c080e7          	jalr	-1892(ra) # 800083d8 <mycpu>
    80009b44:	01813083          	ld	ra,24(sp)
    80009b48:	01013403          	ld	s0,16(sp)
    80009b4c:	00a4b823          	sd	a0,16(s1)
    80009b50:	00013903          	ld	s2,0(sp)
    80009b54:	00813483          	ld	s1,8(sp)
    80009b58:	02010113          	addi	sp,sp,32
    80009b5c:	00008067          	ret
    80009b60:	0104b903          	ld	s2,16(s1)
    80009b64:	fffff097          	auipc	ra,0xfffff
    80009b68:	874080e7          	jalr	-1932(ra) # 800083d8 <mycpu>
    80009b6c:	faa91ce3          	bne	s2,a0,80009b24 <acquire+0x58>
    80009b70:	00002517          	auipc	a0,0x2
    80009b74:	a8050513          	addi	a0,a0,-1408 # 8000b5f0 <digits+0x20>
    80009b78:	fffff097          	auipc	ra,0xfffff
    80009b7c:	224080e7          	jalr	548(ra) # 80008d9c <panic>
    80009b80:	00195913          	srli	s2,s2,0x1
    80009b84:	fffff097          	auipc	ra,0xfffff
    80009b88:	854080e7          	jalr	-1964(ra) # 800083d8 <mycpu>
    80009b8c:	00197913          	andi	s2,s2,1
    80009b90:	07252e23          	sw	s2,124(a0)
    80009b94:	f75ff06f          	j	80009b08 <acquire+0x3c>

0000000080009b98 <release>:
    80009b98:	fe010113          	addi	sp,sp,-32
    80009b9c:	00813823          	sd	s0,16(sp)
    80009ba0:	00113c23          	sd	ra,24(sp)
    80009ba4:	00913423          	sd	s1,8(sp)
    80009ba8:	01213023          	sd	s2,0(sp)
    80009bac:	02010413          	addi	s0,sp,32
    80009bb0:	00052783          	lw	a5,0(a0)
    80009bb4:	00079a63          	bnez	a5,80009bc8 <release+0x30>
    80009bb8:	00002517          	auipc	a0,0x2
    80009bbc:	a4050513          	addi	a0,a0,-1472 # 8000b5f8 <digits+0x28>
    80009bc0:	fffff097          	auipc	ra,0xfffff
    80009bc4:	1dc080e7          	jalr	476(ra) # 80008d9c <panic>
    80009bc8:	01053903          	ld	s2,16(a0)
    80009bcc:	00050493          	mv	s1,a0
    80009bd0:	fffff097          	auipc	ra,0xfffff
    80009bd4:	808080e7          	jalr	-2040(ra) # 800083d8 <mycpu>
    80009bd8:	fea910e3          	bne	s2,a0,80009bb8 <release+0x20>
    80009bdc:	0004b823          	sd	zero,16(s1)
    80009be0:	0ff0000f          	fence
    80009be4:	0f50000f          	fence	iorw,ow
    80009be8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80009bec:	ffffe097          	auipc	ra,0xffffe
    80009bf0:	7ec080e7          	jalr	2028(ra) # 800083d8 <mycpu>
    80009bf4:	100027f3          	csrr	a5,sstatus
    80009bf8:	0027f793          	andi	a5,a5,2
    80009bfc:	04079a63          	bnez	a5,80009c50 <release+0xb8>
    80009c00:	07852783          	lw	a5,120(a0)
    80009c04:	02f05e63          	blez	a5,80009c40 <release+0xa8>
    80009c08:	fff7871b          	addiw	a4,a5,-1
    80009c0c:	06e52c23          	sw	a4,120(a0)
    80009c10:	00071c63          	bnez	a4,80009c28 <release+0x90>
    80009c14:	07c52783          	lw	a5,124(a0)
    80009c18:	00078863          	beqz	a5,80009c28 <release+0x90>
    80009c1c:	100027f3          	csrr	a5,sstatus
    80009c20:	0027e793          	ori	a5,a5,2
    80009c24:	10079073          	csrw	sstatus,a5
    80009c28:	01813083          	ld	ra,24(sp)
    80009c2c:	01013403          	ld	s0,16(sp)
    80009c30:	00813483          	ld	s1,8(sp)
    80009c34:	00013903          	ld	s2,0(sp)
    80009c38:	02010113          	addi	sp,sp,32
    80009c3c:	00008067          	ret
    80009c40:	00002517          	auipc	a0,0x2
    80009c44:	9d850513          	addi	a0,a0,-1576 # 8000b618 <digits+0x48>
    80009c48:	fffff097          	auipc	ra,0xfffff
    80009c4c:	154080e7          	jalr	340(ra) # 80008d9c <panic>
    80009c50:	00002517          	auipc	a0,0x2
    80009c54:	9b050513          	addi	a0,a0,-1616 # 8000b600 <digits+0x30>
    80009c58:	fffff097          	auipc	ra,0xfffff
    80009c5c:	144080e7          	jalr	324(ra) # 80008d9c <panic>

0000000080009c60 <holding>:
    80009c60:	00052783          	lw	a5,0(a0)
    80009c64:	00079663          	bnez	a5,80009c70 <holding+0x10>
    80009c68:	00000513          	li	a0,0
    80009c6c:	00008067          	ret
    80009c70:	fe010113          	addi	sp,sp,-32
    80009c74:	00813823          	sd	s0,16(sp)
    80009c78:	00913423          	sd	s1,8(sp)
    80009c7c:	00113c23          	sd	ra,24(sp)
    80009c80:	02010413          	addi	s0,sp,32
    80009c84:	01053483          	ld	s1,16(a0)
    80009c88:	ffffe097          	auipc	ra,0xffffe
    80009c8c:	750080e7          	jalr	1872(ra) # 800083d8 <mycpu>
    80009c90:	01813083          	ld	ra,24(sp)
    80009c94:	01013403          	ld	s0,16(sp)
    80009c98:	40a48533          	sub	a0,s1,a0
    80009c9c:	00153513          	seqz	a0,a0
    80009ca0:	00813483          	ld	s1,8(sp)
    80009ca4:	02010113          	addi	sp,sp,32
    80009ca8:	00008067          	ret

0000000080009cac <push_off>:
    80009cac:	fe010113          	addi	sp,sp,-32
    80009cb0:	00813823          	sd	s0,16(sp)
    80009cb4:	00113c23          	sd	ra,24(sp)
    80009cb8:	00913423          	sd	s1,8(sp)
    80009cbc:	02010413          	addi	s0,sp,32
    80009cc0:	100024f3          	csrr	s1,sstatus
    80009cc4:	100027f3          	csrr	a5,sstatus
    80009cc8:	ffd7f793          	andi	a5,a5,-3
    80009ccc:	10079073          	csrw	sstatus,a5
    80009cd0:	ffffe097          	auipc	ra,0xffffe
    80009cd4:	708080e7          	jalr	1800(ra) # 800083d8 <mycpu>
    80009cd8:	07852783          	lw	a5,120(a0)
    80009cdc:	02078663          	beqz	a5,80009d08 <push_off+0x5c>
    80009ce0:	ffffe097          	auipc	ra,0xffffe
    80009ce4:	6f8080e7          	jalr	1784(ra) # 800083d8 <mycpu>
    80009ce8:	07852783          	lw	a5,120(a0)
    80009cec:	01813083          	ld	ra,24(sp)
    80009cf0:	01013403          	ld	s0,16(sp)
    80009cf4:	0017879b          	addiw	a5,a5,1
    80009cf8:	06f52c23          	sw	a5,120(a0)
    80009cfc:	00813483          	ld	s1,8(sp)
    80009d00:	02010113          	addi	sp,sp,32
    80009d04:	00008067          	ret
    80009d08:	0014d493          	srli	s1,s1,0x1
    80009d0c:	ffffe097          	auipc	ra,0xffffe
    80009d10:	6cc080e7          	jalr	1740(ra) # 800083d8 <mycpu>
    80009d14:	0014f493          	andi	s1,s1,1
    80009d18:	06952e23          	sw	s1,124(a0)
    80009d1c:	fc5ff06f          	j	80009ce0 <push_off+0x34>

0000000080009d20 <pop_off>:
    80009d20:	ff010113          	addi	sp,sp,-16
    80009d24:	00813023          	sd	s0,0(sp)
    80009d28:	00113423          	sd	ra,8(sp)
    80009d2c:	01010413          	addi	s0,sp,16
    80009d30:	ffffe097          	auipc	ra,0xffffe
    80009d34:	6a8080e7          	jalr	1704(ra) # 800083d8 <mycpu>
    80009d38:	100027f3          	csrr	a5,sstatus
    80009d3c:	0027f793          	andi	a5,a5,2
    80009d40:	04079663          	bnez	a5,80009d8c <pop_off+0x6c>
    80009d44:	07852783          	lw	a5,120(a0)
    80009d48:	02f05a63          	blez	a5,80009d7c <pop_off+0x5c>
    80009d4c:	fff7871b          	addiw	a4,a5,-1
    80009d50:	06e52c23          	sw	a4,120(a0)
    80009d54:	00071c63          	bnez	a4,80009d6c <pop_off+0x4c>
    80009d58:	07c52783          	lw	a5,124(a0)
    80009d5c:	00078863          	beqz	a5,80009d6c <pop_off+0x4c>
    80009d60:	100027f3          	csrr	a5,sstatus
    80009d64:	0027e793          	ori	a5,a5,2
    80009d68:	10079073          	csrw	sstatus,a5
    80009d6c:	00813083          	ld	ra,8(sp)
    80009d70:	00013403          	ld	s0,0(sp)
    80009d74:	01010113          	addi	sp,sp,16
    80009d78:	00008067          	ret
    80009d7c:	00002517          	auipc	a0,0x2
    80009d80:	89c50513          	addi	a0,a0,-1892 # 8000b618 <digits+0x48>
    80009d84:	fffff097          	auipc	ra,0xfffff
    80009d88:	018080e7          	jalr	24(ra) # 80008d9c <panic>
    80009d8c:	00002517          	auipc	a0,0x2
    80009d90:	87450513          	addi	a0,a0,-1932 # 8000b600 <digits+0x30>
    80009d94:	fffff097          	auipc	ra,0xfffff
    80009d98:	008080e7          	jalr	8(ra) # 80008d9c <panic>

0000000080009d9c <push_on>:
    80009d9c:	fe010113          	addi	sp,sp,-32
    80009da0:	00813823          	sd	s0,16(sp)
    80009da4:	00113c23          	sd	ra,24(sp)
    80009da8:	00913423          	sd	s1,8(sp)
    80009dac:	02010413          	addi	s0,sp,32
    80009db0:	100024f3          	csrr	s1,sstatus
    80009db4:	100027f3          	csrr	a5,sstatus
    80009db8:	0027e793          	ori	a5,a5,2
    80009dbc:	10079073          	csrw	sstatus,a5
    80009dc0:	ffffe097          	auipc	ra,0xffffe
    80009dc4:	618080e7          	jalr	1560(ra) # 800083d8 <mycpu>
    80009dc8:	07852783          	lw	a5,120(a0)
    80009dcc:	02078663          	beqz	a5,80009df8 <push_on+0x5c>
    80009dd0:	ffffe097          	auipc	ra,0xffffe
    80009dd4:	608080e7          	jalr	1544(ra) # 800083d8 <mycpu>
    80009dd8:	07852783          	lw	a5,120(a0)
    80009ddc:	01813083          	ld	ra,24(sp)
    80009de0:	01013403          	ld	s0,16(sp)
    80009de4:	0017879b          	addiw	a5,a5,1
    80009de8:	06f52c23          	sw	a5,120(a0)
    80009dec:	00813483          	ld	s1,8(sp)
    80009df0:	02010113          	addi	sp,sp,32
    80009df4:	00008067          	ret
    80009df8:	0014d493          	srli	s1,s1,0x1
    80009dfc:	ffffe097          	auipc	ra,0xffffe
    80009e00:	5dc080e7          	jalr	1500(ra) # 800083d8 <mycpu>
    80009e04:	0014f493          	andi	s1,s1,1
    80009e08:	06952e23          	sw	s1,124(a0)
    80009e0c:	fc5ff06f          	j	80009dd0 <push_on+0x34>

0000000080009e10 <pop_on>:
    80009e10:	ff010113          	addi	sp,sp,-16
    80009e14:	00813023          	sd	s0,0(sp)
    80009e18:	00113423          	sd	ra,8(sp)
    80009e1c:	01010413          	addi	s0,sp,16
    80009e20:	ffffe097          	auipc	ra,0xffffe
    80009e24:	5b8080e7          	jalr	1464(ra) # 800083d8 <mycpu>
    80009e28:	100027f3          	csrr	a5,sstatus
    80009e2c:	0027f793          	andi	a5,a5,2
    80009e30:	04078463          	beqz	a5,80009e78 <pop_on+0x68>
    80009e34:	07852783          	lw	a5,120(a0)
    80009e38:	02f05863          	blez	a5,80009e68 <pop_on+0x58>
    80009e3c:	fff7879b          	addiw	a5,a5,-1
    80009e40:	06f52c23          	sw	a5,120(a0)
    80009e44:	07853783          	ld	a5,120(a0)
    80009e48:	00079863          	bnez	a5,80009e58 <pop_on+0x48>
    80009e4c:	100027f3          	csrr	a5,sstatus
    80009e50:	ffd7f793          	andi	a5,a5,-3
    80009e54:	10079073          	csrw	sstatus,a5
    80009e58:	00813083          	ld	ra,8(sp)
    80009e5c:	00013403          	ld	s0,0(sp)
    80009e60:	01010113          	addi	sp,sp,16
    80009e64:	00008067          	ret
    80009e68:	00001517          	auipc	a0,0x1
    80009e6c:	7d850513          	addi	a0,a0,2008 # 8000b640 <digits+0x70>
    80009e70:	fffff097          	auipc	ra,0xfffff
    80009e74:	f2c080e7          	jalr	-212(ra) # 80008d9c <panic>
    80009e78:	00001517          	auipc	a0,0x1
    80009e7c:	7a850513          	addi	a0,a0,1960 # 8000b620 <digits+0x50>
    80009e80:	fffff097          	auipc	ra,0xfffff
    80009e84:	f1c080e7          	jalr	-228(ra) # 80008d9c <panic>

0000000080009e88 <__memset>:
    80009e88:	ff010113          	addi	sp,sp,-16
    80009e8c:	00813423          	sd	s0,8(sp)
    80009e90:	01010413          	addi	s0,sp,16
    80009e94:	1a060e63          	beqz	a2,8000a050 <__memset+0x1c8>
    80009e98:	40a007b3          	neg	a5,a0
    80009e9c:	0077f793          	andi	a5,a5,7
    80009ea0:	00778693          	addi	a3,a5,7
    80009ea4:	00b00813          	li	a6,11
    80009ea8:	0ff5f593          	andi	a1,a1,255
    80009eac:	fff6071b          	addiw	a4,a2,-1
    80009eb0:	1b06e663          	bltu	a3,a6,8000a05c <__memset+0x1d4>
    80009eb4:	1cd76463          	bltu	a4,a3,8000a07c <__memset+0x1f4>
    80009eb8:	1a078e63          	beqz	a5,8000a074 <__memset+0x1ec>
    80009ebc:	00b50023          	sb	a1,0(a0)
    80009ec0:	00100713          	li	a4,1
    80009ec4:	1ae78463          	beq	a5,a4,8000a06c <__memset+0x1e4>
    80009ec8:	00b500a3          	sb	a1,1(a0)
    80009ecc:	00200713          	li	a4,2
    80009ed0:	1ae78a63          	beq	a5,a4,8000a084 <__memset+0x1fc>
    80009ed4:	00b50123          	sb	a1,2(a0)
    80009ed8:	00300713          	li	a4,3
    80009edc:	18e78463          	beq	a5,a4,8000a064 <__memset+0x1dc>
    80009ee0:	00b501a3          	sb	a1,3(a0)
    80009ee4:	00400713          	li	a4,4
    80009ee8:	1ae78263          	beq	a5,a4,8000a08c <__memset+0x204>
    80009eec:	00b50223          	sb	a1,4(a0)
    80009ef0:	00500713          	li	a4,5
    80009ef4:	1ae78063          	beq	a5,a4,8000a094 <__memset+0x20c>
    80009ef8:	00b502a3          	sb	a1,5(a0)
    80009efc:	00700713          	li	a4,7
    80009f00:	18e79e63          	bne	a5,a4,8000a09c <__memset+0x214>
    80009f04:	00b50323          	sb	a1,6(a0)
    80009f08:	00700e93          	li	t4,7
    80009f0c:	00859713          	slli	a4,a1,0x8
    80009f10:	00e5e733          	or	a4,a1,a4
    80009f14:	01059e13          	slli	t3,a1,0x10
    80009f18:	01c76e33          	or	t3,a4,t3
    80009f1c:	01859313          	slli	t1,a1,0x18
    80009f20:	006e6333          	or	t1,t3,t1
    80009f24:	02059893          	slli	a7,a1,0x20
    80009f28:	40f60e3b          	subw	t3,a2,a5
    80009f2c:	011368b3          	or	a7,t1,a7
    80009f30:	02859813          	slli	a6,a1,0x28
    80009f34:	0108e833          	or	a6,a7,a6
    80009f38:	03059693          	slli	a3,a1,0x30
    80009f3c:	003e589b          	srliw	a7,t3,0x3
    80009f40:	00d866b3          	or	a3,a6,a3
    80009f44:	03859713          	slli	a4,a1,0x38
    80009f48:	00389813          	slli	a6,a7,0x3
    80009f4c:	00f507b3          	add	a5,a0,a5
    80009f50:	00e6e733          	or	a4,a3,a4
    80009f54:	000e089b          	sext.w	a7,t3
    80009f58:	00f806b3          	add	a3,a6,a5
    80009f5c:	00e7b023          	sd	a4,0(a5)
    80009f60:	00878793          	addi	a5,a5,8
    80009f64:	fed79ce3          	bne	a5,a3,80009f5c <__memset+0xd4>
    80009f68:	ff8e7793          	andi	a5,t3,-8
    80009f6c:	0007871b          	sext.w	a4,a5
    80009f70:	01d787bb          	addw	a5,a5,t4
    80009f74:	0ce88e63          	beq	a7,a4,8000a050 <__memset+0x1c8>
    80009f78:	00f50733          	add	a4,a0,a5
    80009f7c:	00b70023          	sb	a1,0(a4)
    80009f80:	0017871b          	addiw	a4,a5,1
    80009f84:	0cc77663          	bgeu	a4,a2,8000a050 <__memset+0x1c8>
    80009f88:	00e50733          	add	a4,a0,a4
    80009f8c:	00b70023          	sb	a1,0(a4)
    80009f90:	0027871b          	addiw	a4,a5,2
    80009f94:	0ac77e63          	bgeu	a4,a2,8000a050 <__memset+0x1c8>
    80009f98:	00e50733          	add	a4,a0,a4
    80009f9c:	00b70023          	sb	a1,0(a4)
    80009fa0:	0037871b          	addiw	a4,a5,3
    80009fa4:	0ac77663          	bgeu	a4,a2,8000a050 <__memset+0x1c8>
    80009fa8:	00e50733          	add	a4,a0,a4
    80009fac:	00b70023          	sb	a1,0(a4)
    80009fb0:	0047871b          	addiw	a4,a5,4
    80009fb4:	08c77e63          	bgeu	a4,a2,8000a050 <__memset+0x1c8>
    80009fb8:	00e50733          	add	a4,a0,a4
    80009fbc:	00b70023          	sb	a1,0(a4)
    80009fc0:	0057871b          	addiw	a4,a5,5
    80009fc4:	08c77663          	bgeu	a4,a2,8000a050 <__memset+0x1c8>
    80009fc8:	00e50733          	add	a4,a0,a4
    80009fcc:	00b70023          	sb	a1,0(a4)
    80009fd0:	0067871b          	addiw	a4,a5,6
    80009fd4:	06c77e63          	bgeu	a4,a2,8000a050 <__memset+0x1c8>
    80009fd8:	00e50733          	add	a4,a0,a4
    80009fdc:	00b70023          	sb	a1,0(a4)
    80009fe0:	0077871b          	addiw	a4,a5,7
    80009fe4:	06c77663          	bgeu	a4,a2,8000a050 <__memset+0x1c8>
    80009fe8:	00e50733          	add	a4,a0,a4
    80009fec:	00b70023          	sb	a1,0(a4)
    80009ff0:	0087871b          	addiw	a4,a5,8
    80009ff4:	04c77e63          	bgeu	a4,a2,8000a050 <__memset+0x1c8>
    80009ff8:	00e50733          	add	a4,a0,a4
    80009ffc:	00b70023          	sb	a1,0(a4)
    8000a000:	0097871b          	addiw	a4,a5,9
    8000a004:	04c77663          	bgeu	a4,a2,8000a050 <__memset+0x1c8>
    8000a008:	00e50733          	add	a4,a0,a4
    8000a00c:	00b70023          	sb	a1,0(a4)
    8000a010:	00a7871b          	addiw	a4,a5,10
    8000a014:	02c77e63          	bgeu	a4,a2,8000a050 <__memset+0x1c8>
    8000a018:	00e50733          	add	a4,a0,a4
    8000a01c:	00b70023          	sb	a1,0(a4)
    8000a020:	00b7871b          	addiw	a4,a5,11
    8000a024:	02c77663          	bgeu	a4,a2,8000a050 <__memset+0x1c8>
    8000a028:	00e50733          	add	a4,a0,a4
    8000a02c:	00b70023          	sb	a1,0(a4)
    8000a030:	00c7871b          	addiw	a4,a5,12
    8000a034:	00c77e63          	bgeu	a4,a2,8000a050 <__memset+0x1c8>
    8000a038:	00e50733          	add	a4,a0,a4
    8000a03c:	00b70023          	sb	a1,0(a4)
    8000a040:	00d7879b          	addiw	a5,a5,13
    8000a044:	00c7f663          	bgeu	a5,a2,8000a050 <__memset+0x1c8>
    8000a048:	00f507b3          	add	a5,a0,a5
    8000a04c:	00b78023          	sb	a1,0(a5)
    8000a050:	00813403          	ld	s0,8(sp)
    8000a054:	01010113          	addi	sp,sp,16
    8000a058:	00008067          	ret
    8000a05c:	00b00693          	li	a3,11
    8000a060:	e55ff06f          	j	80009eb4 <__memset+0x2c>
    8000a064:	00300e93          	li	t4,3
    8000a068:	ea5ff06f          	j	80009f0c <__memset+0x84>
    8000a06c:	00100e93          	li	t4,1
    8000a070:	e9dff06f          	j	80009f0c <__memset+0x84>
    8000a074:	00000e93          	li	t4,0
    8000a078:	e95ff06f          	j	80009f0c <__memset+0x84>
    8000a07c:	00000793          	li	a5,0
    8000a080:	ef9ff06f          	j	80009f78 <__memset+0xf0>
    8000a084:	00200e93          	li	t4,2
    8000a088:	e85ff06f          	j	80009f0c <__memset+0x84>
    8000a08c:	00400e93          	li	t4,4
    8000a090:	e7dff06f          	j	80009f0c <__memset+0x84>
    8000a094:	00500e93          	li	t4,5
    8000a098:	e75ff06f          	j	80009f0c <__memset+0x84>
    8000a09c:	00600e93          	li	t4,6
    8000a0a0:	e6dff06f          	j	80009f0c <__memset+0x84>

000000008000a0a4 <__memmove>:
    8000a0a4:	ff010113          	addi	sp,sp,-16
    8000a0a8:	00813423          	sd	s0,8(sp)
    8000a0ac:	01010413          	addi	s0,sp,16
    8000a0b0:	0e060863          	beqz	a2,8000a1a0 <__memmove+0xfc>
    8000a0b4:	fff6069b          	addiw	a3,a2,-1
    8000a0b8:	0006881b          	sext.w	a6,a3
    8000a0bc:	0ea5e863          	bltu	a1,a0,8000a1ac <__memmove+0x108>
    8000a0c0:	00758713          	addi	a4,a1,7
    8000a0c4:	00a5e7b3          	or	a5,a1,a0
    8000a0c8:	40a70733          	sub	a4,a4,a0
    8000a0cc:	0077f793          	andi	a5,a5,7
    8000a0d0:	00f73713          	sltiu	a4,a4,15
    8000a0d4:	00174713          	xori	a4,a4,1
    8000a0d8:	0017b793          	seqz	a5,a5
    8000a0dc:	00e7f7b3          	and	a5,a5,a4
    8000a0e0:	10078863          	beqz	a5,8000a1f0 <__memmove+0x14c>
    8000a0e4:	00900793          	li	a5,9
    8000a0e8:	1107f463          	bgeu	a5,a6,8000a1f0 <__memmove+0x14c>
    8000a0ec:	0036581b          	srliw	a6,a2,0x3
    8000a0f0:	fff8081b          	addiw	a6,a6,-1
    8000a0f4:	02081813          	slli	a6,a6,0x20
    8000a0f8:	01d85893          	srli	a7,a6,0x1d
    8000a0fc:	00858813          	addi	a6,a1,8
    8000a100:	00058793          	mv	a5,a1
    8000a104:	00050713          	mv	a4,a0
    8000a108:	01088833          	add	a6,a7,a6
    8000a10c:	0007b883          	ld	a7,0(a5)
    8000a110:	00878793          	addi	a5,a5,8
    8000a114:	00870713          	addi	a4,a4,8
    8000a118:	ff173c23          	sd	a7,-8(a4)
    8000a11c:	ff0798e3          	bne	a5,a6,8000a10c <__memmove+0x68>
    8000a120:	ff867713          	andi	a4,a2,-8
    8000a124:	02071793          	slli	a5,a4,0x20
    8000a128:	0207d793          	srli	a5,a5,0x20
    8000a12c:	00f585b3          	add	a1,a1,a5
    8000a130:	40e686bb          	subw	a3,a3,a4
    8000a134:	00f507b3          	add	a5,a0,a5
    8000a138:	06e60463          	beq	a2,a4,8000a1a0 <__memmove+0xfc>
    8000a13c:	0005c703          	lbu	a4,0(a1)
    8000a140:	00e78023          	sb	a4,0(a5)
    8000a144:	04068e63          	beqz	a3,8000a1a0 <__memmove+0xfc>
    8000a148:	0015c603          	lbu	a2,1(a1)
    8000a14c:	00100713          	li	a4,1
    8000a150:	00c780a3          	sb	a2,1(a5)
    8000a154:	04e68663          	beq	a3,a4,8000a1a0 <__memmove+0xfc>
    8000a158:	0025c603          	lbu	a2,2(a1)
    8000a15c:	00200713          	li	a4,2
    8000a160:	00c78123          	sb	a2,2(a5)
    8000a164:	02e68e63          	beq	a3,a4,8000a1a0 <__memmove+0xfc>
    8000a168:	0035c603          	lbu	a2,3(a1)
    8000a16c:	00300713          	li	a4,3
    8000a170:	00c781a3          	sb	a2,3(a5)
    8000a174:	02e68663          	beq	a3,a4,8000a1a0 <__memmove+0xfc>
    8000a178:	0045c603          	lbu	a2,4(a1)
    8000a17c:	00400713          	li	a4,4
    8000a180:	00c78223          	sb	a2,4(a5)
    8000a184:	00e68e63          	beq	a3,a4,8000a1a0 <__memmove+0xfc>
    8000a188:	0055c603          	lbu	a2,5(a1)
    8000a18c:	00500713          	li	a4,5
    8000a190:	00c782a3          	sb	a2,5(a5)
    8000a194:	00e68663          	beq	a3,a4,8000a1a0 <__memmove+0xfc>
    8000a198:	0065c703          	lbu	a4,6(a1)
    8000a19c:	00e78323          	sb	a4,6(a5)
    8000a1a0:	00813403          	ld	s0,8(sp)
    8000a1a4:	01010113          	addi	sp,sp,16
    8000a1a8:	00008067          	ret
    8000a1ac:	02061713          	slli	a4,a2,0x20
    8000a1b0:	02075713          	srli	a4,a4,0x20
    8000a1b4:	00e587b3          	add	a5,a1,a4
    8000a1b8:	f0f574e3          	bgeu	a0,a5,8000a0c0 <__memmove+0x1c>
    8000a1bc:	02069613          	slli	a2,a3,0x20
    8000a1c0:	02065613          	srli	a2,a2,0x20
    8000a1c4:	fff64613          	not	a2,a2
    8000a1c8:	00e50733          	add	a4,a0,a4
    8000a1cc:	00c78633          	add	a2,a5,a2
    8000a1d0:	fff7c683          	lbu	a3,-1(a5)
    8000a1d4:	fff78793          	addi	a5,a5,-1
    8000a1d8:	fff70713          	addi	a4,a4,-1
    8000a1dc:	00d70023          	sb	a3,0(a4)
    8000a1e0:	fec798e3          	bne	a5,a2,8000a1d0 <__memmove+0x12c>
    8000a1e4:	00813403          	ld	s0,8(sp)
    8000a1e8:	01010113          	addi	sp,sp,16
    8000a1ec:	00008067          	ret
    8000a1f0:	02069713          	slli	a4,a3,0x20
    8000a1f4:	02075713          	srli	a4,a4,0x20
    8000a1f8:	00170713          	addi	a4,a4,1
    8000a1fc:	00e50733          	add	a4,a0,a4
    8000a200:	00050793          	mv	a5,a0
    8000a204:	0005c683          	lbu	a3,0(a1)
    8000a208:	00178793          	addi	a5,a5,1
    8000a20c:	00158593          	addi	a1,a1,1
    8000a210:	fed78fa3          	sb	a3,-1(a5)
    8000a214:	fee798e3          	bne	a5,a4,8000a204 <__memmove+0x160>
    8000a218:	f89ff06f          	j	8000a1a0 <__memmove+0xfc>
	...

Disassembly of section user.text:

00000000800110f0 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
lr.w t0, (a0)          # Load original value.
    800110f0:	100522af          	lr.w	t0,(a0)
bne t0, a1, fail       # Doesn’t match, so fail.
    800110f4:	00b29a63          	bne	t0,a1,80011108 <fail>
sc.w t0, a2, (a0)      # Try to update.
    800110f8:	18c522af          	sc.w	t0,a2,(a0)
bnez t0, copy_and_swap # Retry if store-conditional failed.
    800110fc:	fe029ae3          	bnez	t0,800110f0 <copy_and_swap>
li a0, 0               # Set return to success.
    80011100:	00000513          	li	a0,0
jr ra                  # Return.
    80011104:	00008067          	ret

0000000080011108 <fail>:
fail:
li a0, 1               # Set return to failure.
    80011108:	00100513          	li	a0,1
    8001110c:	00008067          	ret

0000000080011110 <_Z9mem_allocm>:
//

#include "../h/syscall_c.h"
#include "../h/ABI.h"

void* mem_alloc(size_t size) {
    80011110:	ff010113          	addi	sp,sp,-16
    80011114:	00113423          	sd	ra,8(sp)
    80011118:	00813023          	sd	s0,0(sp)
    8001111c:	01010413          	addi	s0,sp,16
    80011120:	00050593          	mv	a1,a0
    return (void*)ABIcall(0x01ul, (uint64)size);
    80011124:	00000893          	li	a7,0
    80011128:	00000813          	li	a6,0
    8001112c:	00000793          	li	a5,0
    80011130:	00000713          	li	a4,0
    80011134:	00000693          	li	a3,0
    80011138:	00000613          	li	a2,0
    8001113c:	00100513          	li	a0,1
    80011140:	00002097          	auipc	ra,0x2
    80011144:	71c080e7          	jalr	1820(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    80011148:	00813083          	ld	ra,8(sp)
    8001114c:	00013403          	ld	s0,0(sp)
    80011150:	01010113          	addi	sp,sp,16
    80011154:	00008067          	ret

0000000080011158 <_Z8mem_freePv>:
int mem_free(void* addr) {
    80011158:	ff010113          	addi	sp,sp,-16
    8001115c:	00113423          	sd	ra,8(sp)
    80011160:	00813023          	sd	s0,0(sp)
    80011164:	01010413          	addi	s0,sp,16
    80011168:	00050593          	mv	a1,a0
    return (int)ABIcall(0x02ul, (uint64)addr);
    8001116c:	00000893          	li	a7,0
    80011170:	00000813          	li	a6,0
    80011174:	00000793          	li	a5,0
    80011178:	00000713          	li	a4,0
    8001117c:	00000693          	li	a3,0
    80011180:	00000613          	li	a2,0
    80011184:	00200513          	li	a0,2
    80011188:	00002097          	auipc	ra,0x2
    8001118c:	6d4080e7          	jalr	1748(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    80011190:	0005051b          	sext.w	a0,a0
    80011194:	00813083          	ld	ra,8(sp)
    80011198:	00013403          	ld	s0,0(sp)
    8001119c:	01010113          	addi	sp,sp,16
    800111a0:	00008067          	ret

00000000800111a4 <_Z13thread_createPP7_ThreadPFPvS2_ES2_mii>:

int thread_create(thread_t* handle, void*(*startRoutine)(void*), void* arg, size_t stackSize, int priority, int options) {
    800111a4:	fc010113          	addi	sp,sp,-64
    800111a8:	02113c23          	sd	ra,56(sp)
    800111ac:	02813823          	sd	s0,48(sp)
    800111b0:	02913423          	sd	s1,40(sp)
    800111b4:	03213023          	sd	s2,32(sp)
    800111b8:	01313c23          	sd	s3,24(sp)
    800111bc:	01413823          	sd	s4,16(sp)
    800111c0:	01513423          	sd	s5,8(sp)
    800111c4:	01613023          	sd	s6,0(sp)
    800111c8:	04010413          	addi	s0,sp,64
    800111cc:	00050913          	mv	s2,a0
    800111d0:	00058993          	mv	s3,a1
    800111d4:	00060a13          	mv	s4,a2
    800111d8:	00068493          	mv	s1,a3
    800111dc:	00070a93          	mv	s5,a4
    800111e0:	00078b13          	mv	s6,a5
    char* sp = (char*) mem_alloc(stackSize); if (!sp) return -1;
    800111e4:	00068513          	mv	a0,a3
    800111e8:	00000097          	auipc	ra,0x0
    800111ec:	f28080e7          	jalr	-216(ra) # 80011110 <_Z9mem_allocm>
    800111f0:	04050c63          	beqz	a0,80011248 <_Z13thread_createPP7_ThreadPFPvS2_ES2_mii+0xa4>
    sp = sp + stackSize;
    return (int)ABIcall(0x11ul, (uint64)handle, (uint64)startRoutine, (uint64)arg, (uint64)sp, (uint64)stackSize, (uint64)priority, (uint64)options);
    800111f4:	000b0893          	mv	a7,s6
    800111f8:	000a8813          	mv	a6,s5
    800111fc:	00048793          	mv	a5,s1
    80011200:	00950733          	add	a4,a0,s1
    80011204:	000a0693          	mv	a3,s4
    80011208:	00098613          	mv	a2,s3
    8001120c:	00090593          	mv	a1,s2
    80011210:	01100513          	li	a0,17
    80011214:	00002097          	auipc	ra,0x2
    80011218:	648080e7          	jalr	1608(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
    8001121c:	0005051b          	sext.w	a0,a0
}
    80011220:	03813083          	ld	ra,56(sp)
    80011224:	03013403          	ld	s0,48(sp)
    80011228:	02813483          	ld	s1,40(sp)
    8001122c:	02013903          	ld	s2,32(sp)
    80011230:	01813983          	ld	s3,24(sp)
    80011234:	01013a03          	ld	s4,16(sp)
    80011238:	00813a83          	ld	s5,8(sp)
    8001123c:	00013b03          	ld	s6,0(sp)
    80011240:	04010113          	addi	sp,sp,64
    80011244:	00008067          	ret
    char* sp = (char*) mem_alloc(stackSize); if (!sp) return -1;
    80011248:	fff00513          	li	a0,-1
    8001124c:	fd5ff06f          	j	80011220 <_Z13thread_createPP7_ThreadPFPvS2_ES2_mii+0x7c>

0000000080011250 <_Z13thread_createPP7_ThreadPFvPvES2_mii>:
int thread_create(thread_t* handle, void(*startRoutine)(void*), void* arg, size_t stackSize, int priority, int options) {
    80011250:	fc010113          	addi	sp,sp,-64
    80011254:	02113c23          	sd	ra,56(sp)
    80011258:	02813823          	sd	s0,48(sp)
    8001125c:	02913423          	sd	s1,40(sp)
    80011260:	03213023          	sd	s2,32(sp)
    80011264:	01313c23          	sd	s3,24(sp)
    80011268:	01413823          	sd	s4,16(sp)
    8001126c:	01513423          	sd	s5,8(sp)
    80011270:	01613023          	sd	s6,0(sp)
    80011274:	04010413          	addi	s0,sp,64
    80011278:	00050913          	mv	s2,a0
    8001127c:	00058993          	mv	s3,a1
    80011280:	00060a13          	mv	s4,a2
    80011284:	00068493          	mv	s1,a3
    80011288:	00070a93          	mv	s5,a4
    8001128c:	00078b13          	mv	s6,a5
    char* sp = (char*) mem_alloc(stackSize); if(!sp) return -1;
    80011290:	00068513          	mv	a0,a3
    80011294:	00000097          	auipc	ra,0x0
    80011298:	e7c080e7          	jalr	-388(ra) # 80011110 <_Z9mem_allocm>
    8001129c:	04050c63          	beqz	a0,800112f4 <_Z13thread_createPP7_ThreadPFvPvES2_mii+0xa4>
    sp = sp + stackSize;
    return (int)ABIcall(0x12ul, (uint64)handle, (uint64)startRoutine, (uint64)arg, (uint64)sp, (uint64)stackSize, (uint64)priority, (uint64)options);
    800112a0:	000b0893          	mv	a7,s6
    800112a4:	000a8813          	mv	a6,s5
    800112a8:	00048793          	mv	a5,s1
    800112ac:	00950733          	add	a4,a0,s1
    800112b0:	000a0693          	mv	a3,s4
    800112b4:	00098613          	mv	a2,s3
    800112b8:	00090593          	mv	a1,s2
    800112bc:	01200513          	li	a0,18
    800112c0:	00002097          	auipc	ra,0x2
    800112c4:	59c080e7          	jalr	1436(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
    800112c8:	0005051b          	sext.w	a0,a0
}
    800112cc:	03813083          	ld	ra,56(sp)
    800112d0:	03013403          	ld	s0,48(sp)
    800112d4:	02813483          	ld	s1,40(sp)
    800112d8:	02013903          	ld	s2,32(sp)
    800112dc:	01813983          	ld	s3,24(sp)
    800112e0:	01013a03          	ld	s4,16(sp)
    800112e4:	00813a83          	ld	s5,8(sp)
    800112e8:	00013b03          	ld	s6,0(sp)
    800112ec:	04010113          	addi	sp,sp,64
    800112f0:	00008067          	ret
    char* sp = (char*) mem_alloc(stackSize); if(!sp) return -1;
    800112f4:	fff00513          	li	a0,-1
    800112f8:	fd5ff06f          	j	800112cc <_Z13thread_createPP7_ThreadPFvPvES2_mii+0x7c>

00000000800112fc <_Z13thread_createPP7_ThreadPFvvEPvmii>:
int thread_create(thread_t* handle, void(*startRoutine)(void), void* arg, size_t stackSize, int priority, int options) {
    800112fc:	ff010113          	addi	sp,sp,-16
    80011300:	00113423          	sd	ra,8(sp)
    80011304:	00813023          	sd	s0,0(sp)
    80011308:	01010413          	addi	s0,sp,16
    return thread_create(handle, (void(*)(void*))startRoutine, arg, stackSize, priority, options);
    8001130c:	00000097          	auipc	ra,0x0
    80011310:	f44080e7          	jalr	-188(ra) # 80011250 <_Z13thread_createPP7_ThreadPFvPvES2_mii>
}
    80011314:	00813083          	ld	ra,8(sp)
    80011318:	00013403          	ld	s0,0(sp)
    8001131c:	01010113          	addi	sp,sp,16
    80011320:	00008067          	ret

0000000080011324 <_Z11thread_exitPv>:
int thread_exit(void* ret) {
    80011324:	ff010113          	addi	sp,sp,-16
    80011328:	00113423          	sd	ra,8(sp)
    8001132c:	00813023          	sd	s0,0(sp)
    80011330:	01010413          	addi	s0,sp,16
    80011334:	00050593          	mv	a1,a0
    return (int)ABIcall(0x13ul, (uint64)ret);
    80011338:	00000893          	li	a7,0
    8001133c:	00000813          	li	a6,0
    80011340:	00000793          	li	a5,0
    80011344:	00000713          	li	a4,0
    80011348:	00000693          	li	a3,0
    8001134c:	00000613          	li	a2,0
    80011350:	01300513          	li	a0,19
    80011354:	00002097          	auipc	ra,0x2
    80011358:	508080e7          	jalr	1288(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    8001135c:	0005051b          	sext.w	a0,a0
    80011360:	00813083          	ld	ra,8(sp)
    80011364:	00013403          	ld	s0,0(sp)
    80011368:	01010113          	addi	sp,sp,16
    8001136c:	00008067          	ret

0000000080011370 <_Z15thread_dispatchv>:
void thread_dispatch() {
    80011370:	ff010113          	addi	sp,sp,-16
    80011374:	00113423          	sd	ra,8(sp)
    80011378:	00813023          	sd	s0,0(sp)
    8001137c:	01010413          	addi	s0,sp,16
    ABIcall(0x14ul);
    80011380:	00000893          	li	a7,0
    80011384:	00000813          	li	a6,0
    80011388:	00000793          	li	a5,0
    8001138c:	00000713          	li	a4,0
    80011390:	00000693          	li	a3,0
    80011394:	00000613          	li	a2,0
    80011398:	00000593          	li	a1,0
    8001139c:	01400513          	li	a0,20
    800113a0:	00002097          	auipc	ra,0x2
    800113a4:	4bc080e7          	jalr	1212(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    800113a8:	00813083          	ld	ra,8(sp)
    800113ac:	00013403          	ld	s0,0(sp)
    800113b0:	01010113          	addi	sp,sp,16
    800113b4:	00008067          	ret

00000000800113b8 <_Z12thread_startP7_Thread>:
int thread_start(thread_t handle) {
    800113b8:	ff010113          	addi	sp,sp,-16
    800113bc:	00113423          	sd	ra,8(sp)
    800113c0:	00813023          	sd	s0,0(sp)
    800113c4:	01010413          	addi	s0,sp,16
    800113c8:	00050593          	mv	a1,a0
    return (int)ABIcall(0x15ul, (uint64)handle);
    800113cc:	00000893          	li	a7,0
    800113d0:	00000813          	li	a6,0
    800113d4:	00000793          	li	a5,0
    800113d8:	00000713          	li	a4,0
    800113dc:	00000693          	li	a3,0
    800113e0:	00000613          	li	a2,0
    800113e4:	01500513          	li	a0,21
    800113e8:	00002097          	auipc	ra,0x2
    800113ec:	474080e7          	jalr	1140(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    800113f0:	0005051b          	sext.w	a0,a0
    800113f4:	00813083          	ld	ra,8(sp)
    800113f8:	00013403          	ld	s0,0(sp)
    800113fc:	01010113          	addi	sp,sp,16
    80011400:	00008067          	ret

0000000080011404 <_Z11thread_joinP7_ThreadPPv>:
int thread_join(thread_t handle, void** pret) {
    80011404:	ff010113          	addi	sp,sp,-16
    80011408:	00113423          	sd	ra,8(sp)
    8001140c:	00813023          	sd	s0,0(sp)
    80011410:	01010413          	addi	s0,sp,16
    80011414:	00058613          	mv	a2,a1
    return (int)ABIcall(0x16ul, (uint64)handle, (uint64)pret);
    80011418:	00000893          	li	a7,0
    8001141c:	00000813          	li	a6,0
    80011420:	00000793          	li	a5,0
    80011424:	00000713          	li	a4,0
    80011428:	00000693          	li	a3,0
    8001142c:	00050593          	mv	a1,a0
    80011430:	01600513          	li	a0,22
    80011434:	00002097          	auipc	ra,0x2
    80011438:	428080e7          	jalr	1064(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    8001143c:	0005051b          	sext.w	a0,a0
    80011440:	00813083          	ld	ra,8(sp)
    80011444:	00013403          	ld	s0,0(sp)
    80011448:	01010113          	addi	sp,sp,16
    8001144c:	00008067          	ret

0000000080011450 <_Z17thread_join_limitP7_ThreadPPvm>:
int thread_join_limit(thread_t handle, void** pret, time_t limit) {
    80011450:	ff010113          	addi	sp,sp,-16
    80011454:	00113423          	sd	ra,8(sp)
    80011458:	00813023          	sd	s0,0(sp)
    8001145c:	01010413          	addi	s0,sp,16
    80011460:	00060693          	mv	a3,a2
    return (int)ABIcall(0x17ul, (uint64)handle, (uint64)pret, (uint64)limit);
    80011464:	00000893          	li	a7,0
    80011468:	00000813          	li	a6,0
    8001146c:	00000793          	li	a5,0
    80011470:	00000713          	li	a4,0
    80011474:	00058613          	mv	a2,a1
    80011478:	00050593          	mv	a1,a0
    8001147c:	01700513          	li	a0,23
    80011480:	00002097          	auipc	ra,0x2
    80011484:	3dc080e7          	jalr	988(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    80011488:	0005051b          	sext.w	a0,a0
    8001148c:	00813083          	ld	ra,8(sp)
    80011490:	00013403          	ld	s0,0(sp)
    80011494:	01010113          	addi	sp,sp,16
    80011498:	00008067          	ret

000000008001149c <_Z16thread_interruptP7_Thread>:
int thread_interrupt(thread_t handle) {
    8001149c:	ff010113          	addi	sp,sp,-16
    800114a0:	00113423          	sd	ra,8(sp)
    800114a4:	00813023          	sd	s0,0(sp)
    800114a8:	01010413          	addi	s0,sp,16
    800114ac:	00050593          	mv	a1,a0
    return (int)ABIcall(0x18ul, (uint64)handle);
    800114b0:	00000893          	li	a7,0
    800114b4:	00000813          	li	a6,0
    800114b8:	00000793          	li	a5,0
    800114bc:	00000713          	li	a4,0
    800114c0:	00000693          	li	a3,0
    800114c4:	00000613          	li	a2,0
    800114c8:	01800513          	li	a0,24
    800114cc:	00002097          	auipc	ra,0x2
    800114d0:	390080e7          	jalr	912(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    800114d4:	0005051b          	sext.w	a0,a0
    800114d8:	00813083          	ld	ra,8(sp)
    800114dc:	00013403          	ld	s0,0(sp)
    800114e0:	01010113          	addi	sp,sp,16
    800114e4:	00008067          	ret

00000000800114e8 <_Z18thread_interruptedv>:
int thread_interrupted() {
    800114e8:	ff010113          	addi	sp,sp,-16
    800114ec:	00113423          	sd	ra,8(sp)
    800114f0:	00813023          	sd	s0,0(sp)
    800114f4:	01010413          	addi	s0,sp,16
    return (int)ABIcall(0x19ul);
    800114f8:	00000893          	li	a7,0
    800114fc:	00000813          	li	a6,0
    80011500:	00000793          	li	a5,0
    80011504:	00000713          	li	a4,0
    80011508:	00000693          	li	a3,0
    8001150c:	00000613          	li	a2,0
    80011510:	00000593          	li	a1,0
    80011514:	01900513          	li	a0,25
    80011518:	00002097          	auipc	ra,0x2
    8001151c:	344080e7          	jalr	836(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    80011520:	0005051b          	sext.w	a0,a0
    80011524:	00813083          	ld	ra,8(sp)
    80011528:	00013403          	ld	s0,0(sp)
    8001152c:	01010113          	addi	sp,sp,16
    80011530:	00008067          	ret

0000000080011534 <_Z8sem_openPP4_Semj>:

int sem_open(sem_t* handle, unsigned init) {
    80011534:	ff010113          	addi	sp,sp,-16
    80011538:	00113423          	sd	ra,8(sp)
    8001153c:	00813023          	sd	s0,0(sp)
    80011540:	01010413          	addi	s0,sp,16
    return (int)ABIcall(0x21ul, (uint64)handle, (uint64)init);
    80011544:	00000893          	li	a7,0
    80011548:	00000813          	li	a6,0
    8001154c:	00000793          	li	a5,0
    80011550:	00000713          	li	a4,0
    80011554:	00000693          	li	a3,0
    80011558:	02059613          	slli	a2,a1,0x20
    8001155c:	02065613          	srli	a2,a2,0x20
    80011560:	00050593          	mv	a1,a0
    80011564:	02100513          	li	a0,33
    80011568:	00002097          	auipc	ra,0x2
    8001156c:	2f4080e7          	jalr	756(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    80011570:	0005051b          	sext.w	a0,a0
    80011574:	00813083          	ld	ra,8(sp)
    80011578:	00013403          	ld	s0,0(sp)
    8001157c:	01010113          	addi	sp,sp,16
    80011580:	00008067          	ret

0000000080011584 <_Z9sem_closeP4_Sem>:
int sem_close(sem_t handle) {
    80011584:	ff010113          	addi	sp,sp,-16
    80011588:	00113423          	sd	ra,8(sp)
    8001158c:	00813023          	sd	s0,0(sp)
    80011590:	01010413          	addi	s0,sp,16
    80011594:	00050593          	mv	a1,a0
    return (int)ABIcall(0x22ul, (uint64)handle);
    80011598:	00000893          	li	a7,0
    8001159c:	00000813          	li	a6,0
    800115a0:	00000793          	li	a5,0
    800115a4:	00000713          	li	a4,0
    800115a8:	00000693          	li	a3,0
    800115ac:	00000613          	li	a2,0
    800115b0:	02200513          	li	a0,34
    800115b4:	00002097          	auipc	ra,0x2
    800115b8:	2a8080e7          	jalr	680(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    800115bc:	0005051b          	sext.w	a0,a0
    800115c0:	00813083          	ld	ra,8(sp)
    800115c4:	00013403          	ld	s0,0(sp)
    800115c8:	01010113          	addi	sp,sp,16
    800115cc:	00008067          	ret

00000000800115d0 <_Z8sem_waitP4_Sem>:
int sem_wait(sem_t handle) {
    800115d0:	ff010113          	addi	sp,sp,-16
    800115d4:	00113423          	sd	ra,8(sp)
    800115d8:	00813023          	sd	s0,0(sp)
    800115dc:	01010413          	addi	s0,sp,16
    800115e0:	00050593          	mv	a1,a0
    return (int)ABIcall(0x23ul, (uint64)handle);
    800115e4:	00000893          	li	a7,0
    800115e8:	00000813          	li	a6,0
    800115ec:	00000793          	li	a5,0
    800115f0:	00000713          	li	a4,0
    800115f4:	00000693          	li	a3,0
    800115f8:	00000613          	li	a2,0
    800115fc:	02300513          	li	a0,35
    80011600:	00002097          	auipc	ra,0x2
    80011604:	25c080e7          	jalr	604(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    80011608:	0005051b          	sext.w	a0,a0
    8001160c:	00813083          	ld	ra,8(sp)
    80011610:	00013403          	ld	s0,0(sp)
    80011614:	01010113          	addi	sp,sp,16
    80011618:	00008067          	ret

000000008001161c <_Z10sem_signalP4_Sem>:
int sem_signal(sem_t handle) {
    8001161c:	ff010113          	addi	sp,sp,-16
    80011620:	00113423          	sd	ra,8(sp)
    80011624:	00813023          	sd	s0,0(sp)
    80011628:	01010413          	addi	s0,sp,16
    8001162c:	00050593          	mv	a1,a0
    return (int)ABIcall(0x24ul, (uint64)handle);
    80011630:	00000893          	li	a7,0
    80011634:	00000813          	li	a6,0
    80011638:	00000793          	li	a5,0
    8001163c:	00000713          	li	a4,0
    80011640:	00000693          	li	a3,0
    80011644:	00000613          	li	a2,0
    80011648:	02400513          	li	a0,36
    8001164c:	00002097          	auipc	ra,0x2
    80011650:	210080e7          	jalr	528(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    80011654:	0005051b          	sext.w	a0,a0
    80011658:	00813083          	ld	ra,8(sp)
    8001165c:	00013403          	ld	s0,0(sp)
    80011660:	01010113          	addi	sp,sp,16
    80011664:	00008067          	ret

0000000080011668 <_Z11sem_wait_orP4_SemS0_>:
int sem_wait_or(sem_t sem1, sem_t sem2) {
    80011668:	ff010113          	addi	sp,sp,-16
    8001166c:	00113423          	sd	ra,8(sp)
    80011670:	00813023          	sd	s0,0(sp)
    80011674:	01010413          	addi	s0,sp,16
    80011678:	00058613          	mv	a2,a1
    return (int)ABIcall(0x25ul, (uint64)sem1, (uint64)sem2);
    8001167c:	00000893          	li	a7,0
    80011680:	00000813          	li	a6,0
    80011684:	00000793          	li	a5,0
    80011688:	00000713          	li	a4,0
    8001168c:	00000693          	li	a3,0
    80011690:	00050593          	mv	a1,a0
    80011694:	02500513          	li	a0,37
    80011698:	00002097          	auipc	ra,0x2
    8001169c:	1c4080e7          	jalr	452(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    800116a0:	0005051b          	sext.w	a0,a0
    800116a4:	00813083          	ld	ra,8(sp)
    800116a8:	00013403          	ld	s0,0(sp)
    800116ac:	01010113          	addi	sp,sp,16
    800116b0:	00008067          	ret

00000000800116b4 <_Z12sem_wait_andP4_SemS0_>:
int sem_wait_and(sem_t sem1, sem_t sem2) {
    800116b4:	ff010113          	addi	sp,sp,-16
    800116b8:	00113423          	sd	ra,8(sp)
    800116bc:	00813023          	sd	s0,0(sp)
    800116c0:	01010413          	addi	s0,sp,16
    800116c4:	00058613          	mv	a2,a1
    return (int)ABIcall(0x26ul, (uint64)sem1, (uint64)sem2);
    800116c8:	00000893          	li	a7,0
    800116cc:	00000813          	li	a6,0
    800116d0:	00000793          	li	a5,0
    800116d4:	00000713          	li	a4,0
    800116d8:	00000693          	li	a3,0
    800116dc:	00050593          	mv	a1,a0
    800116e0:	02600513          	li	a0,38
    800116e4:	00002097          	auipc	ra,0x2
    800116e8:	178080e7          	jalr	376(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    800116ec:	0005051b          	sext.w	a0,a0
    800116f0:	00813083          	ld	ra,8(sp)
    800116f4:	00013403          	ld	s0,0(sp)
    800116f8:	01010113          	addi	sp,sp,16
    800116fc:	00008067          	ret

0000000080011700 <_Z14sem_wait_limitP4_Semm>:
int sem_wait_limit(sem_t sem, time_t limit) {
    80011700:	ff010113          	addi	sp,sp,-16
    80011704:	00113423          	sd	ra,8(sp)
    80011708:	00813023          	sd	s0,0(sp)
    8001170c:	01010413          	addi	s0,sp,16
    80011710:	00058613          	mv	a2,a1
    return (int)ABIcall(0x27ul, (uint64)sem, (uint64)limit);
    80011714:	00000893          	li	a7,0
    80011718:	00000813          	li	a6,0
    8001171c:	00000793          	li	a5,0
    80011720:	00000713          	li	a4,0
    80011724:	00000693          	li	a3,0
    80011728:	00050593          	mv	a1,a0
    8001172c:	02700513          	li	a0,39
    80011730:	00002097          	auipc	ra,0x2
    80011734:	12c080e7          	jalr	300(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    80011738:	0005051b          	sext.w	a0,a0
    8001173c:	00813083          	ld	ra,8(sp)
    80011740:	00013403          	ld	s0,0(sp)
    80011744:	01010113          	addi	sp,sp,16
    80011748:	00008067          	ret

000000008001174c <_Z17sem_wait_or_limitP4_SemS0_m>:
int sem_wait_or_limit(sem_t sem1, sem_t sem2, time_t limit) {
    8001174c:	ff010113          	addi	sp,sp,-16
    80011750:	00113423          	sd	ra,8(sp)
    80011754:	00813023          	sd	s0,0(sp)
    80011758:	01010413          	addi	s0,sp,16
    8001175c:	00060693          	mv	a3,a2
    return (int)ABIcall(0x28ul, (uint64)sem1, (uint64)sem2, (uint64)limit);
    80011760:	00000893          	li	a7,0
    80011764:	00000813          	li	a6,0
    80011768:	00000793          	li	a5,0
    8001176c:	00000713          	li	a4,0
    80011770:	00058613          	mv	a2,a1
    80011774:	00050593          	mv	a1,a0
    80011778:	02800513          	li	a0,40
    8001177c:	00002097          	auipc	ra,0x2
    80011780:	0e0080e7          	jalr	224(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    80011784:	0005051b          	sext.w	a0,a0
    80011788:	00813083          	ld	ra,8(sp)
    8001178c:	00013403          	ld	s0,0(sp)
    80011790:	01010113          	addi	sp,sp,16
    80011794:	00008067          	ret

0000000080011798 <_Z18sem_wait_and_limitP4_SemS0_m>:
int sem_wait_and_limit(sem_t sem1, sem_t sem2, time_t limit) {
    80011798:	ff010113          	addi	sp,sp,-16
    8001179c:	00113423          	sd	ra,8(sp)
    800117a0:	00813023          	sd	s0,0(sp)
    800117a4:	01010413          	addi	s0,sp,16
    800117a8:	00060693          	mv	a3,a2
    return (int)ABIcall(0x29ul, (uint64)sem1, (uint64)sem2, (uint64)limit);
    800117ac:	00000893          	li	a7,0
    800117b0:	00000813          	li	a6,0
    800117b4:	00000793          	li	a5,0
    800117b8:	00000713          	li	a4,0
    800117bc:	00058613          	mv	a2,a1
    800117c0:	00050593          	mv	a1,a0
    800117c4:	02900513          	li	a0,41
    800117c8:	00002097          	auipc	ra,0x2
    800117cc:	094080e7          	jalr	148(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    800117d0:	0005051b          	sext.w	a0,a0
    800117d4:	00813083          	ld	ra,8(sp)
    800117d8:	00013403          	ld	s0,0(sp)
    800117dc:	01010113          	addi	sp,sp,16
    800117e0:	00008067          	ret

00000000800117e4 <_Z10time_sleepm>:

int time_sleep(time_t time) {
    800117e4:	ff010113          	addi	sp,sp,-16
    800117e8:	00113423          	sd	ra,8(sp)
    800117ec:	00813023          	sd	s0,0(sp)
    800117f0:	01010413          	addi	s0,sp,16
    800117f4:	00050593          	mv	a1,a0
    return (int)ABIcall(0x31ul, (uint64)time);
    800117f8:	00000893          	li	a7,0
    800117fc:	00000813          	li	a6,0
    80011800:	00000793          	li	a5,0
    80011804:	00000713          	li	a4,0
    80011808:	00000693          	li	a3,0
    8001180c:	00000613          	li	a2,0
    80011810:	03100513          	li	a0,49
    80011814:	00002097          	auipc	ra,0x2
    80011818:	048080e7          	jalr	72(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    8001181c:	0005051b          	sext.w	a0,a0
    80011820:	00813083          	ld	ra,8(sp)
    80011824:	00013403          	ld	s0,0(sp)
    80011828:	01010113          	addi	sp,sp,16
    8001182c:	00008067          	ret

0000000080011830 <_Z8get_timev>:
int get_time() {
    80011830:	ff010113          	addi	sp,sp,-16
    80011834:	00113423          	sd	ra,8(sp)
    80011838:	00813023          	sd	s0,0(sp)
    8001183c:	01010413          	addi	s0,sp,16
    return (int)ABIcall(0x32ul);
    80011840:	00000893          	li	a7,0
    80011844:	00000813          	li	a6,0
    80011848:	00000793          	li	a5,0
    8001184c:	00000713          	li	a4,0
    80011850:	00000693          	li	a3,0
    80011854:	00000613          	li	a2,0
    80011858:	00000593          	li	a1,0
    8001185c:	03200513          	li	a0,50
    80011860:	00002097          	auipc	ra,0x2
    80011864:	ffc080e7          	jalr	-4(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    80011868:	0005051b          	sext.w	a0,a0
    8001186c:	00813083          	ld	ra,8(sp)
    80011870:	00013403          	ld	s0,0(sp)
    80011874:	01010113          	addi	sp,sp,16
    80011878:	00008067          	ret

000000008001187c <_Z4getcv>:

char getc() {
    8001187c:	ff010113          	addi	sp,sp,-16
    80011880:	00113423          	sd	ra,8(sp)
    80011884:	00813023          	sd	s0,0(sp)
    80011888:	01010413          	addi	s0,sp,16
    return (char)ABIcall(0x41ul);
    8001188c:	00000893          	li	a7,0
    80011890:	00000813          	li	a6,0
    80011894:	00000793          	li	a5,0
    80011898:	00000713          	li	a4,0
    8001189c:	00000693          	li	a3,0
    800118a0:	00000613          	li	a2,0
    800118a4:	00000593          	li	a1,0
    800118a8:	04100513          	li	a0,65
    800118ac:	00002097          	auipc	ra,0x2
    800118b0:	fb0080e7          	jalr	-80(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    800118b4:	0ff57513          	andi	a0,a0,255
    800118b8:	00813083          	ld	ra,8(sp)
    800118bc:	00013403          	ld	s0,0(sp)
    800118c0:	01010113          	addi	sp,sp,16
    800118c4:	00008067          	ret

00000000800118c8 <_Z4putcc>:
void putc(char c) {
    800118c8:	ff010113          	addi	sp,sp,-16
    800118cc:	00113423          	sd	ra,8(sp)
    800118d0:	00813023          	sd	s0,0(sp)
    800118d4:	01010413          	addi	s0,sp,16
    800118d8:	00050593          	mv	a1,a0
    ABIcall(0x42ul, (uint64)c);
    800118dc:	00000893          	li	a7,0
    800118e0:	00000813          	li	a6,0
    800118e4:	00000793          	li	a5,0
    800118e8:	00000713          	li	a4,0
    800118ec:	00000693          	li	a3,0
    800118f0:	00000613          	li	a2,0
    800118f4:	04200513          	li	a0,66
    800118f8:	00002097          	auipc	ra,0x2
    800118fc:	f64080e7          	jalr	-156(ra) # 8001385c <_Z7ABIcallmmmmmmmm>
}
    80011900:	00813083          	ld	ra,8(sp)
    80011904:	00013403          	ld	s0,0(sp)
    80011908:	01010113          	addi	sp,sp,16
    8001190c:	00008067          	ret

0000000080011910 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80011910:	fe010113          	addi	sp,sp,-32
    80011914:	00113c23          	sd	ra,24(sp)
    80011918:	00813823          	sd	s0,16(sp)
    8001191c:	00913423          	sd	s1,8(sp)
    80011920:	02010413          	addi	s0,sp,32
    80011924:	00050493          	mv	s1,a0
    LOCK();
    80011928:	00100613          	li	a2,1
    8001192c:	00000593          	li	a1,0
    80011930:	00003517          	auipc	a0,0x3
    80011934:	a4050513          	addi	a0,a0,-1472 # 80014370 <lockPrint>
    80011938:	fffff097          	auipc	ra,0xfffff
    8001193c:	7b8080e7          	jalr	1976(ra) # 800110f0 <copy_and_swap>
    80011940:	fe0514e3          	bnez	a0,80011928 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80011944:	0004c503          	lbu	a0,0(s1)
    80011948:	00050a63          	beqz	a0,8001195c <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    8001194c:	00000097          	auipc	ra,0x0
    80011950:	f7c080e7          	jalr	-132(ra) # 800118c8 <_Z4putcc>
        string++;
    80011954:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80011958:	fedff06f          	j	80011944 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    8001195c:	00000613          	li	a2,0
    80011960:	00100593          	li	a1,1
    80011964:	00003517          	auipc	a0,0x3
    80011968:	a0c50513          	addi	a0,a0,-1524 # 80014370 <lockPrint>
    8001196c:	fffff097          	auipc	ra,0xfffff
    80011970:	784080e7          	jalr	1924(ra) # 800110f0 <copy_and_swap>
    80011974:	fe0514e3          	bnez	a0,8001195c <_Z11printStringPKc+0x4c>
}
    80011978:	01813083          	ld	ra,24(sp)
    8001197c:	01013403          	ld	s0,16(sp)
    80011980:	00813483          	ld	s1,8(sp)
    80011984:	02010113          	addi	sp,sp,32
    80011988:	00008067          	ret

000000008001198c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8001198c:	fd010113          	addi	sp,sp,-48
    80011990:	02113423          	sd	ra,40(sp)
    80011994:	02813023          	sd	s0,32(sp)
    80011998:	00913c23          	sd	s1,24(sp)
    8001199c:	01213823          	sd	s2,16(sp)
    800119a0:	01313423          	sd	s3,8(sp)
    800119a4:	01413023          	sd	s4,0(sp)
    800119a8:	03010413          	addi	s0,sp,48
    800119ac:	00050993          	mv	s3,a0
    800119b0:	00058a13          	mv	s4,a1
    LOCK();
    800119b4:	00100613          	li	a2,1
    800119b8:	00000593          	li	a1,0
    800119bc:	00003517          	auipc	a0,0x3
    800119c0:	9b450513          	addi	a0,a0,-1612 # 80014370 <lockPrint>
    800119c4:	fffff097          	auipc	ra,0xfffff
    800119c8:	72c080e7          	jalr	1836(ra) # 800110f0 <copy_and_swap>
    800119cc:	fe0514e3          	bnez	a0,800119b4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800119d0:	00000913          	li	s2,0
    800119d4:	00090493          	mv	s1,s2
    800119d8:	0019091b          	addiw	s2,s2,1
    800119dc:	03495a63          	bge	s2,s4,80011a10 <_Z9getStringPci+0x84>
        cc = getc();
    800119e0:	00000097          	auipc	ra,0x0
    800119e4:	e9c080e7          	jalr	-356(ra) # 8001187c <_Z4getcv>
        if(cc < 1)
    800119e8:	02050463          	beqz	a0,80011a10 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800119ec:	009984b3          	add	s1,s3,s1
    800119f0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800119f4:	00a00793          	li	a5,10
    800119f8:	00f50a63          	beq	a0,a5,80011a0c <_Z9getStringPci+0x80>
    800119fc:	00d00793          	li	a5,13
    80011a00:	fcf51ae3          	bne	a0,a5,800119d4 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80011a04:	00090493          	mv	s1,s2
    80011a08:	0080006f          	j	80011a10 <_Z9getStringPci+0x84>
    80011a0c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80011a10:	009984b3          	add	s1,s3,s1
    80011a14:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80011a18:	00000613          	li	a2,0
    80011a1c:	00100593          	li	a1,1
    80011a20:	00003517          	auipc	a0,0x3
    80011a24:	95050513          	addi	a0,a0,-1712 # 80014370 <lockPrint>
    80011a28:	fffff097          	auipc	ra,0xfffff
    80011a2c:	6c8080e7          	jalr	1736(ra) # 800110f0 <copy_and_swap>
    80011a30:	fe0514e3          	bnez	a0,80011a18 <_Z9getStringPci+0x8c>
    return buf;
}
    80011a34:	00098513          	mv	a0,s3
    80011a38:	02813083          	ld	ra,40(sp)
    80011a3c:	02013403          	ld	s0,32(sp)
    80011a40:	01813483          	ld	s1,24(sp)
    80011a44:	01013903          	ld	s2,16(sp)
    80011a48:	00813983          	ld	s3,8(sp)
    80011a4c:	00013a03          	ld	s4,0(sp)
    80011a50:	03010113          	addi	sp,sp,48
    80011a54:	00008067          	ret

0000000080011a58 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80011a58:	ff010113          	addi	sp,sp,-16
    80011a5c:	00813423          	sd	s0,8(sp)
    80011a60:	01010413          	addi	s0,sp,16
    80011a64:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80011a68:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80011a6c:	0006c603          	lbu	a2,0(a3)
    80011a70:	fd06071b          	addiw	a4,a2,-48
    80011a74:	0ff77713          	andi	a4,a4,255
    80011a78:	00900793          	li	a5,9
    80011a7c:	02e7e063          	bltu	a5,a4,80011a9c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80011a80:	0025179b          	slliw	a5,a0,0x2
    80011a84:	00a787bb          	addw	a5,a5,a0
    80011a88:	0017979b          	slliw	a5,a5,0x1
    80011a8c:	00168693          	addi	a3,a3,1
    80011a90:	00c787bb          	addw	a5,a5,a2
    80011a94:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80011a98:	fd5ff06f          	j	80011a6c <_Z11stringToIntPKc+0x14>
    return n;
}
    80011a9c:	00813403          	ld	s0,8(sp)
    80011aa0:	01010113          	addi	sp,sp,16
    80011aa4:	00008067          	ret

0000000080011aa8 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80011aa8:	fc010113          	addi	sp,sp,-64
    80011aac:	02113c23          	sd	ra,56(sp)
    80011ab0:	02813823          	sd	s0,48(sp)
    80011ab4:	02913423          	sd	s1,40(sp)
    80011ab8:	03213023          	sd	s2,32(sp)
    80011abc:	01313c23          	sd	s3,24(sp)
    80011ac0:	04010413          	addi	s0,sp,64
    80011ac4:	00050493          	mv	s1,a0
    80011ac8:	00058913          	mv	s2,a1
    80011acc:	00060993          	mv	s3,a2
    LOCK();
    80011ad0:	00100613          	li	a2,1
    80011ad4:	00000593          	li	a1,0
    80011ad8:	00003517          	auipc	a0,0x3
    80011adc:	89850513          	addi	a0,a0,-1896 # 80014370 <lockPrint>
    80011ae0:	fffff097          	auipc	ra,0xfffff
    80011ae4:	610080e7          	jalr	1552(ra) # 800110f0 <copy_and_swap>
    80011ae8:	fe0514e3          	bnez	a0,80011ad0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80011aec:	00098463          	beqz	s3,80011af4 <_Z8printIntiii+0x4c>
    80011af0:	0804c463          	bltz	s1,80011b78 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80011af4:	0004851b          	sext.w	a0,s1
    neg = 0;
    80011af8:	00000593          	li	a1,0
    }

    i = 0;
    80011afc:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80011b00:	0009079b          	sext.w	a5,s2
    80011b04:	0325773b          	remuw	a4,a0,s2
    80011b08:	00048613          	mv	a2,s1
    80011b0c:	0014849b          	addiw	s1,s1,1
    80011b10:	02071693          	slli	a3,a4,0x20
    80011b14:	0206d693          	srli	a3,a3,0x20
    80011b18:	00002717          	auipc	a4,0x2
    80011b1c:	72870713          	addi	a4,a4,1832 # 80014240 <digits>
    80011b20:	00d70733          	add	a4,a4,a3
    80011b24:	00074683          	lbu	a3,0(a4)
    80011b28:	fd040713          	addi	a4,s0,-48
    80011b2c:	00c70733          	add	a4,a4,a2
    80011b30:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80011b34:	0005071b          	sext.w	a4,a0
    80011b38:	0325553b          	divuw	a0,a0,s2
    80011b3c:	fcf772e3          	bgeu	a4,a5,80011b00 <_Z8printIntiii+0x58>
    if(neg)
    80011b40:	00058c63          	beqz	a1,80011b58 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80011b44:	fd040793          	addi	a5,s0,-48
    80011b48:	009784b3          	add	s1,a5,s1
    80011b4c:	02d00793          	li	a5,45
    80011b50:	fef48823          	sb	a5,-16(s1)
    80011b54:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80011b58:	fff4849b          	addiw	s1,s1,-1
    80011b5c:	0204c463          	bltz	s1,80011b84 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80011b60:	fd040793          	addi	a5,s0,-48
    80011b64:	009787b3          	add	a5,a5,s1
    80011b68:	ff07c503          	lbu	a0,-16(a5)
    80011b6c:	00000097          	auipc	ra,0x0
    80011b70:	d5c080e7          	jalr	-676(ra) # 800118c8 <_Z4putcc>
    80011b74:	fe5ff06f          	j	80011b58 <_Z8printIntiii+0xb0>
        x = -xx;
    80011b78:	4090053b          	negw	a0,s1
        neg = 1;
    80011b7c:	00100593          	li	a1,1
        x = -xx;
    80011b80:	f7dff06f          	j	80011afc <_Z8printIntiii+0x54>

    UNLOCK();
    80011b84:	00000613          	li	a2,0
    80011b88:	00100593          	li	a1,1
    80011b8c:	00002517          	auipc	a0,0x2
    80011b90:	7e450513          	addi	a0,a0,2020 # 80014370 <lockPrint>
    80011b94:	fffff097          	auipc	ra,0xfffff
    80011b98:	55c080e7          	jalr	1372(ra) # 800110f0 <copy_and_swap>
    80011b9c:	fe0514e3          	bnez	a0,80011b84 <_Z8printIntiii+0xdc>
    80011ba0:	03813083          	ld	ra,56(sp)
    80011ba4:	03013403          	ld	s0,48(sp)
    80011ba8:	02813483          	ld	s1,40(sp)
    80011bac:	02013903          	ld	s2,32(sp)
    80011bb0:	01813983          	ld	s3,24(sp)
    80011bb4:	04010113          	addi	sp,sp,64
    80011bb8:	00008067          	ret

0000000080011bbc <_ZN9BufferCPPC1Ei>:
#include "../h/buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80011bbc:	fd010113          	addi	sp,sp,-48
    80011bc0:	02113423          	sd	ra,40(sp)
    80011bc4:	02813023          	sd	s0,32(sp)
    80011bc8:	00913c23          	sd	s1,24(sp)
    80011bcc:	01213823          	sd	s2,16(sp)
    80011bd0:	01313423          	sd	s3,8(sp)
    80011bd4:	03010413          	addi	s0,sp,48
    80011bd8:	00050493          	mv	s1,a0
    80011bdc:	00058993          	mv	s3,a1
    80011be0:	0015879b          	addiw	a5,a1,1
    80011be4:	0007851b          	sext.w	a0,a5
    80011be8:	00f4a023          	sw	a5,0(s1)
    80011bec:	0004a823          	sw	zero,16(s1)
    80011bf0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80011bf4:	00251513          	slli	a0,a0,0x2
    80011bf8:	fffff097          	auipc	ra,0xfffff
    80011bfc:	518080e7          	jalr	1304(ra) # 80011110 <_Z9mem_allocm>
    80011c00:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80011c04:	01000513          	li	a0,16
    80011c08:	00002097          	auipc	ra,0x2
    80011c0c:	808080e7          	jalr	-2040(ra) # 80013410 <_Znwm>
    80011c10:	00050913          	mv	s2,a0
    80011c14:	00050863          	beqz	a0,80011c24 <_ZN9BufferCPPC1Ei+0x68>
    80011c18:	00000593          	li	a1,0
    80011c1c:	00002097          	auipc	ra,0x2
    80011c20:	a30080e7          	jalr	-1488(ra) # 8001364c <_ZN9SemaphoreC1Ej>
    80011c24:	0324b023          	sd	s2,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80011c28:	01000513          	li	a0,16
    80011c2c:	00001097          	auipc	ra,0x1
    80011c30:	7e4080e7          	jalr	2020(ra) # 80013410 <_Znwm>
    80011c34:	00050913          	mv	s2,a0
    80011c38:	00050863          	beqz	a0,80011c48 <_ZN9BufferCPPC1Ei+0x8c>
    80011c3c:	00098593          	mv	a1,s3
    80011c40:	00002097          	auipc	ra,0x2
    80011c44:	a0c080e7          	jalr	-1524(ra) # 8001364c <_ZN9SemaphoreC1Ej>
    80011c48:	0124bc23          	sd	s2,24(s1)
    mutexHead = new Semaphore(1);
    80011c4c:	01000513          	li	a0,16
    80011c50:	00001097          	auipc	ra,0x1
    80011c54:	7c0080e7          	jalr	1984(ra) # 80013410 <_Znwm>
    80011c58:	00050913          	mv	s2,a0
    80011c5c:	00050863          	beqz	a0,80011c6c <_ZN9BufferCPPC1Ei+0xb0>
    80011c60:	00100593          	li	a1,1
    80011c64:	00002097          	auipc	ra,0x2
    80011c68:	9e8080e7          	jalr	-1560(ra) # 8001364c <_ZN9SemaphoreC1Ej>
    80011c6c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80011c70:	01000513          	li	a0,16
    80011c74:	00001097          	auipc	ra,0x1
    80011c78:	79c080e7          	jalr	1948(ra) # 80013410 <_Znwm>
    80011c7c:	00050913          	mv	s2,a0
    80011c80:	00050863          	beqz	a0,80011c90 <_ZN9BufferCPPC1Ei+0xd4>
    80011c84:	00100593          	li	a1,1
    80011c88:	00002097          	auipc	ra,0x2
    80011c8c:	9c4080e7          	jalr	-1596(ra) # 8001364c <_ZN9SemaphoreC1Ej>
    80011c90:	0324b823          	sd	s2,48(s1)
}
    80011c94:	02813083          	ld	ra,40(sp)
    80011c98:	02013403          	ld	s0,32(sp)
    80011c9c:	01813483          	ld	s1,24(sp)
    80011ca0:	01013903          	ld	s2,16(sp)
    80011ca4:	00813983          	ld	s3,8(sp)
    80011ca8:	03010113          	addi	sp,sp,48
    80011cac:	00008067          	ret
    80011cb0:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80011cb4:	00090513          	mv	a0,s2
    80011cb8:	00001097          	auipc	ra,0x1
    80011cbc:	780080e7          	jalr	1920(ra) # 80013438 <_ZdlPv>
    80011cc0:	00048513          	mv	a0,s1
    80011cc4:	fffff097          	auipc	ra,0xfffff
    80011cc8:	f24080e7          	jalr	-220(ra) # 80010be8 <_Unwind_Resume>
    80011ccc:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80011cd0:	00090513          	mv	a0,s2
    80011cd4:	00001097          	auipc	ra,0x1
    80011cd8:	764080e7          	jalr	1892(ra) # 80013438 <_ZdlPv>
    80011cdc:	00048513          	mv	a0,s1
    80011ce0:	fffff097          	auipc	ra,0xfffff
    80011ce4:	f08080e7          	jalr	-248(ra) # 80010be8 <_Unwind_Resume>
    80011ce8:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80011cec:	00090513          	mv	a0,s2
    80011cf0:	00001097          	auipc	ra,0x1
    80011cf4:	748080e7          	jalr	1864(ra) # 80013438 <_ZdlPv>
    80011cf8:	00048513          	mv	a0,s1
    80011cfc:	fffff097          	auipc	ra,0xfffff
    80011d00:	eec080e7          	jalr	-276(ra) # 80010be8 <_Unwind_Resume>
    80011d04:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80011d08:	00090513          	mv	a0,s2
    80011d0c:	00001097          	auipc	ra,0x1
    80011d10:	72c080e7          	jalr	1836(ra) # 80013438 <_ZdlPv>
    80011d14:	00048513          	mv	a0,s1
    80011d18:	fffff097          	auipc	ra,0xfffff
    80011d1c:	ed0080e7          	jalr	-304(ra) # 80010be8 <_Unwind_Resume>

0000000080011d20 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80011d20:	fe010113          	addi	sp,sp,-32
    80011d24:	00113c23          	sd	ra,24(sp)
    80011d28:	00813823          	sd	s0,16(sp)
    80011d2c:	00913423          	sd	s1,8(sp)
    80011d30:	01213023          	sd	s2,0(sp)
    80011d34:	02010413          	addi	s0,sp,32
    80011d38:	00050493          	mv	s1,a0
    80011d3c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80011d40:	01853503          	ld	a0,24(a0)
    80011d44:	00002097          	auipc	ra,0x2
    80011d48:	958080e7          	jalr	-1704(ra) # 8001369c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80011d4c:	0304b503          	ld	a0,48(s1)
    80011d50:	00002097          	auipc	ra,0x2
    80011d54:	94c080e7          	jalr	-1716(ra) # 8001369c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80011d58:	0084b783          	ld	a5,8(s1)
    80011d5c:	0144a703          	lw	a4,20(s1)
    80011d60:	00271713          	slli	a4,a4,0x2
    80011d64:	00e787b3          	add	a5,a5,a4
    80011d68:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80011d6c:	0144a783          	lw	a5,20(s1)
    80011d70:	0017879b          	addiw	a5,a5,1
    80011d74:	0004a703          	lw	a4,0(s1)
    80011d78:	02e7e7bb          	remw	a5,a5,a4
    80011d7c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80011d80:	0304b503          	ld	a0,48(s1)
    80011d84:	00002097          	auipc	ra,0x2
    80011d88:	950080e7          	jalr	-1712(ra) # 800136d4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80011d8c:	0204b503          	ld	a0,32(s1)
    80011d90:	00002097          	auipc	ra,0x2
    80011d94:	944080e7          	jalr	-1724(ra) # 800136d4 <_ZN9Semaphore6signalEv>

}
    80011d98:	01813083          	ld	ra,24(sp)
    80011d9c:	01013403          	ld	s0,16(sp)
    80011da0:	00813483          	ld	s1,8(sp)
    80011da4:	00013903          	ld	s2,0(sp)
    80011da8:	02010113          	addi	sp,sp,32
    80011dac:	00008067          	ret

0000000080011db0 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80011db0:	fe010113          	addi	sp,sp,-32
    80011db4:	00113c23          	sd	ra,24(sp)
    80011db8:	00813823          	sd	s0,16(sp)
    80011dbc:	00913423          	sd	s1,8(sp)
    80011dc0:	01213023          	sd	s2,0(sp)
    80011dc4:	02010413          	addi	s0,sp,32
    80011dc8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80011dcc:	02053503          	ld	a0,32(a0)
    80011dd0:	00002097          	auipc	ra,0x2
    80011dd4:	8cc080e7          	jalr	-1844(ra) # 8001369c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80011dd8:	0284b503          	ld	a0,40(s1)
    80011ddc:	00002097          	auipc	ra,0x2
    80011de0:	8c0080e7          	jalr	-1856(ra) # 8001369c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80011de4:	0084b703          	ld	a4,8(s1)
    80011de8:	0104a783          	lw	a5,16(s1)
    80011dec:	00279693          	slli	a3,a5,0x2
    80011df0:	00d70733          	add	a4,a4,a3
    80011df4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80011df8:	0017879b          	addiw	a5,a5,1
    80011dfc:	0004a703          	lw	a4,0(s1)
    80011e00:	02e7e7bb          	remw	a5,a5,a4
    80011e04:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80011e08:	0284b503          	ld	a0,40(s1)
    80011e0c:	00002097          	auipc	ra,0x2
    80011e10:	8c8080e7          	jalr	-1848(ra) # 800136d4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80011e14:	0184b503          	ld	a0,24(s1)
    80011e18:	00002097          	auipc	ra,0x2
    80011e1c:	8bc080e7          	jalr	-1860(ra) # 800136d4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80011e20:	00090513          	mv	a0,s2
    80011e24:	01813083          	ld	ra,24(sp)
    80011e28:	01013403          	ld	s0,16(sp)
    80011e2c:	00813483          	ld	s1,8(sp)
    80011e30:	00013903          	ld	s2,0(sp)
    80011e34:	02010113          	addi	sp,sp,32
    80011e38:	00008067          	ret

0000000080011e3c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80011e3c:	fe010113          	addi	sp,sp,-32
    80011e40:	00113c23          	sd	ra,24(sp)
    80011e44:	00813823          	sd	s0,16(sp)
    80011e48:	00913423          	sd	s1,8(sp)
    80011e4c:	01213023          	sd	s2,0(sp)
    80011e50:	02010413          	addi	s0,sp,32
    80011e54:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80011e58:	02853503          	ld	a0,40(a0)
    80011e5c:	00002097          	auipc	ra,0x2
    80011e60:	840080e7          	jalr	-1984(ra) # 8001369c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80011e64:	0304b503          	ld	a0,48(s1)
    80011e68:	00002097          	auipc	ra,0x2
    80011e6c:	834080e7          	jalr	-1996(ra) # 8001369c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80011e70:	0144a783          	lw	a5,20(s1)
    80011e74:	0104a903          	lw	s2,16(s1)
    80011e78:	0327ce63          	blt	a5,s2,80011eb4 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80011e7c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80011e80:	0304b503          	ld	a0,48(s1)
    80011e84:	00002097          	auipc	ra,0x2
    80011e88:	850080e7          	jalr	-1968(ra) # 800136d4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80011e8c:	0284b503          	ld	a0,40(s1)
    80011e90:	00002097          	auipc	ra,0x2
    80011e94:	844080e7          	jalr	-1980(ra) # 800136d4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80011e98:	00090513          	mv	a0,s2
    80011e9c:	01813083          	ld	ra,24(sp)
    80011ea0:	01013403          	ld	s0,16(sp)
    80011ea4:	00813483          	ld	s1,8(sp)
    80011ea8:	00013903          	ld	s2,0(sp)
    80011eac:	02010113          	addi	sp,sp,32
    80011eb0:	00008067          	ret
        ret = cap - head + tail;
    80011eb4:	0004a703          	lw	a4,0(s1)
    80011eb8:	4127093b          	subw	s2,a4,s2
    80011ebc:	00f9093b          	addw	s2,s2,a5
    80011ec0:	fc1ff06f          	j	80011e80 <_ZN9BufferCPP6getCntEv+0x44>

0000000080011ec4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80011ec4:	fe010113          	addi	sp,sp,-32
    80011ec8:	00113c23          	sd	ra,24(sp)
    80011ecc:	00813823          	sd	s0,16(sp)
    80011ed0:	00913423          	sd	s1,8(sp)
    80011ed4:	02010413          	addi	s0,sp,32
    80011ed8:	00050493          	mv	s1,a0
    Console::putc('\n');
    80011edc:	00a00513          	li	a0,10
    80011ee0:	00002097          	auipc	ra,0x2
    80011ee4:	8cc080e7          	jalr	-1844(ra) # 800137ac <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80011ee8:	00002517          	auipc	a0,0x2
    80011eec:	13050513          	addi	a0,a0,304 # 80014018 <MAX_PRIORITY+0x8>
    80011ef0:	00000097          	auipc	ra,0x0
    80011ef4:	a20080e7          	jalr	-1504(ra) # 80011910 <_Z11printStringPKc>
    while (getCnt()) {
    80011ef8:	00048513          	mv	a0,s1
    80011efc:	00000097          	auipc	ra,0x0
    80011f00:	f40080e7          	jalr	-192(ra) # 80011e3c <_ZN9BufferCPP6getCntEv>
    80011f04:	02050c63          	beqz	a0,80011f3c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80011f08:	0084b783          	ld	a5,8(s1)
    80011f0c:	0104a703          	lw	a4,16(s1)
    80011f10:	00271713          	slli	a4,a4,0x2
    80011f14:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80011f18:	0007c503          	lbu	a0,0(a5)
    80011f1c:	00002097          	auipc	ra,0x2
    80011f20:	890080e7          	jalr	-1904(ra) # 800137ac <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80011f24:	0104a783          	lw	a5,16(s1)
    80011f28:	0017879b          	addiw	a5,a5,1
    80011f2c:	0004a703          	lw	a4,0(s1)
    80011f30:	02e7e7bb          	remw	a5,a5,a4
    80011f34:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80011f38:	fc1ff06f          	j	80011ef8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80011f3c:	02100513          	li	a0,33
    80011f40:	00002097          	auipc	ra,0x2
    80011f44:	86c080e7          	jalr	-1940(ra) # 800137ac <_ZN7Console4putcEc>
    Console::putc('\n');
    80011f48:	00a00513          	li	a0,10
    80011f4c:	00002097          	auipc	ra,0x2
    80011f50:	860080e7          	jalr	-1952(ra) # 800137ac <_ZN7Console4putcEc>
    mem_free(buffer);
    80011f54:	0084b503          	ld	a0,8(s1)
    80011f58:	fffff097          	auipc	ra,0xfffff
    80011f5c:	200080e7          	jalr	512(ra) # 80011158 <_Z8mem_freePv>
    delete itemAvailable;
    80011f60:	0204b503          	ld	a0,32(s1)
    80011f64:	00050863          	beqz	a0,80011f74 <_ZN9BufferCPPD1Ev+0xb0>
    80011f68:	00053783          	ld	a5,0(a0)
    80011f6c:	0087b783          	ld	a5,8(a5)
    80011f70:	000780e7          	jalr	a5
    delete spaceAvailable;
    80011f74:	0184b503          	ld	a0,24(s1)
    80011f78:	00050863          	beqz	a0,80011f88 <_ZN9BufferCPPD1Ev+0xc4>
    80011f7c:	00053783          	ld	a5,0(a0)
    80011f80:	0087b783          	ld	a5,8(a5)
    80011f84:	000780e7          	jalr	a5
    delete mutexTail;
    80011f88:	0304b503          	ld	a0,48(s1)
    80011f8c:	00050863          	beqz	a0,80011f9c <_ZN9BufferCPPD1Ev+0xd8>
    80011f90:	00053783          	ld	a5,0(a0)
    80011f94:	0087b783          	ld	a5,8(a5)
    80011f98:	000780e7          	jalr	a5
    delete mutexHead;
    80011f9c:	0284b503          	ld	a0,40(s1)
    80011fa0:	00050863          	beqz	a0,80011fb0 <_ZN9BufferCPPD1Ev+0xec>
    80011fa4:	00053783          	ld	a5,0(a0)
    80011fa8:	0087b783          	ld	a5,8(a5)
    80011fac:	000780e7          	jalr	a5
}
    80011fb0:	01813083          	ld	ra,24(sp)
    80011fb4:	01013403          	ld	s0,16(sp)
    80011fb8:	00813483          	ld	s1,8(sp)
    80011fbc:	02010113          	addi	sp,sp,32
    80011fc0:	00008067          	ret

0000000080011fc4 <_Z1fPv>:
    kmem_cache_info_buff(12);
    for (int i = 50; i < 100; i++) arrs[i] = (int*)kmalloc(1000*sizeof(int));
    kmem_cache_info_buff(12);
}

void f(void*) {}
    80011fc4:	ff010113          	addi	sp,sp,-16
    80011fc8:	00813423          	sd	s0,8(sp)
    80011fcc:	01010413          	addi	s0,sp,16
    80011fd0:	00813403          	ld	s0,8(sp)
    80011fd4:	01010113          	addi	sp,sp,16
    80011fd8:	00008067          	ret

0000000080011fdc <_Z7CarCtorPv>:
void CarCtor(void* car) {
    80011fdc:	ff010113          	addi	sp,sp,-16
    80011fe0:	00113423          	sd	ra,8(sp)
    80011fe4:	00813023          	sd	s0,0(sp)
    80011fe8:	01010413          	addi	s0,sp,16
    80011fec:	00050593          	mv	a1,a0
    new (car) Car();
    80011ff0:	01000513          	li	a0,16
    80011ff4:	ffff0097          	auipc	ra,0xffff0
    80011ff8:	038080e7          	jalr	56(ra) # 8000202c <_ZnwmPv>
    80011ffc:	00050c63          	beqz	a0,80012014 <_Z7CarCtorPv+0x38>
        this->name = name;
    80012000:	00002797          	auipc	a5,0x2
    80012004:	03078793          	addi	a5,a5,48 # 80014030 <MAX_PRIORITY+0x20>
    80012008:	00f53023          	sd	a5,0(a0)
        this->wheels = wheels;
    8001200c:	00400793          	li	a5,4
    80012010:	00f52423          	sw	a5,8(a0)
}
    80012014:	00813083          	ld	ra,8(sp)
    80012018:	00013403          	ld	s0,0(sp)
    8001201c:	01010113          	addi	sp,sp,16
    80012020:	00008067          	ret

0000000080012024 <_Z11printstringPKc>:
void printstring(const char* s) {
    80012024:	fe010113          	addi	sp,sp,-32
    80012028:	00113c23          	sd	ra,24(sp)
    8001202c:	00813823          	sd	s0,16(sp)
    80012030:	00913423          	sd	s1,8(sp)
    80012034:	02010413          	addi	s0,sp,32
    80012038:	00050493          	mv	s1,a0
    while (*s) putc(*s++);
    8001203c:	0004c503          	lbu	a0,0(s1)
    80012040:	00050a63          	beqz	a0,80012054 <_Z11printstringPKc+0x30>
    80012044:	00148493          	addi	s1,s1,1
    80012048:	00000097          	auipc	ra,0x0
    8001204c:	880080e7          	jalr	-1920(ra) # 800118c8 <_Z4putcc>
    80012050:	fedff06f          	j	8001203c <_Z11printstringPKc+0x18>
}
    80012054:	01813083          	ld	ra,24(sp)
    80012058:	01013403          	ld	s0,16(sp)
    8001205c:	00813483          	ld	s1,8(sp)
    80012060:	02010113          	addi	sp,sp,32
    80012064:	00008067          	ret

0000000080012068 <_Z8printNumm>:
void printNum(uint64 x) {
    80012068:	fb010113          	addi	sp,sp,-80
    8001206c:	04113423          	sd	ra,72(sp)
    80012070:	04813023          	sd	s0,64(sp)
    80012074:	05010413          	addi	s0,sp,80
    int i = 0;
    80012078:	00000793          	li	a5,0
    while (x) {
    8001207c:	02050463          	beqz	a0,800120a4 <_Z8printNumm+0x3c>
        buff[i++] = '0' + x % 10;
    80012080:	00a00693          	li	a3,10
    80012084:	02d57733          	remu	a4,a0,a3
    80012088:	03070713          	addi	a4,a4,48
    8001208c:	ff040613          	addi	a2,s0,-16
    80012090:	00f60633          	add	a2,a2,a5
    80012094:	fee60023          	sb	a4,-32(a2) # fe0 <_entry-0x7ffff020>
        x /= 10;
    80012098:	02d55533          	divu	a0,a0,a3
        buff[i++] = '0' + x % 10;
    8001209c:	0017879b          	addiw	a5,a5,1
    while (x) {
    800120a0:	fddff06f          	j	8001207c <_Z8printNumm+0x14>
    char buff2[31]; int j = 0;
    800120a4:	00000713          	li	a4,0
    while (i--) {
    800120a8:	fff7869b          	addiw	a3,a5,-1
    800120ac:	02078463          	beqz	a5,800120d4 <_Z8printNumm+0x6c>
        buff2[j++] = buff[i];
    800120b0:	ff040793          	addi	a5,s0,-16
    800120b4:	00d787b3          	add	a5,a5,a3
    800120b8:	fe07c603          	lbu	a2,-32(a5)
    800120bc:	ff040793          	addi	a5,s0,-16
    800120c0:	00e787b3          	add	a5,a5,a4
    800120c4:	fcc78023          	sb	a2,-64(a5)
    800120c8:	0017071b          	addiw	a4,a4,1
    while (i--) {
    800120cc:	00068793          	mv	a5,a3
    800120d0:	fd9ff06f          	j	800120a8 <_Z8printNumm+0x40>
    buff2[j] = '\0';
    800120d4:	ff040793          	addi	a5,s0,-16
    800120d8:	00e78733          	add	a4,a5,a4
    800120dc:	fc070023          	sb	zero,-64(a4)
    printstring(buff2);
    800120e0:	fb040513          	addi	a0,s0,-80
    800120e4:	00000097          	auipc	ra,0x0
    800120e8:	f40080e7          	jalr	-192(ra) # 80012024 <_Z11printstringPKc>
};
    800120ec:	04813083          	ld	ra,72(sp)
    800120f0:	04013403          	ld	s0,64(sp)
    800120f4:	05010113          	addi	sp,sp,80
    800120f8:	00008067          	ret

00000000800120fc <_Z4linev>:
void line() {
    800120fc:	ff010113          	addi	sp,sp,-16
    80012100:	00113423          	sd	ra,8(sp)
    80012104:	00813023          	sd	s0,0(sp)
    80012108:	01010413          	addi	s0,sp,16
    printstring("----------------------------------------\n");
    8001210c:	00002517          	auipc	a0,0x2
    80012110:	f3450513          	addi	a0,a0,-204 # 80014040 <MAX_PRIORITY+0x30>
    80012114:	00000097          	auipc	ra,0x0
    80012118:	f10080e7          	jalr	-240(ra) # 80012024 <_Z11printstringPKc>
}
    8001211c:	00813083          	ld	ra,8(sp)
    80012120:	00013403          	ld	s0,0(sp)
    80012124:	01010113          	addi	sp,sp,16
    80012128:	00008067          	ret

000000008001212c <_Z9testBuddyv>:
void testBuddy() {
    8001212c:	fd010113          	addi	sp,sp,-48
    80012130:	02113423          	sd	ra,40(sp)
    80012134:	02813023          	sd	s0,32(sp)
    80012138:	00913c23          	sd	s1,24(sp)
    8001213c:	01213823          	sd	s2,16(sp)
    80012140:	01313423          	sd	s3,8(sp)
    80012144:	03010413          	addi	s0,sp,48
    char* heap = new char[200];
    80012148:	0c800513          	li	a0,200
    8001214c:	00001097          	auipc	ra,0x1
    80012150:	37c080e7          	jalr	892(ra) # 800134c8 <_Znam>
    80012154:	00050913          	mv	s2,a0
    _BuddyTree* tree = new (heap) _BuddyTree(heap + 200, 10, 0);
    80012158:	00050593          	mv	a1,a0
    8001215c:	03000513          	li	a0,48
    80012160:	ffff0097          	auipc	ra,0xffff0
    80012164:	ecc080e7          	jalr	-308(ra) # 8000202c <_ZnwmPv>
    80012168:	00050493          	mv	s1,a0
    8001216c:	00050c63          	beqz	a0,80012184 <_Z9testBuddyv+0x58>
    80012170:	00000693          	li	a3,0
    80012174:	00a00613          	li	a2,10
    80012178:	0c890593          	addi	a1,s2,200
    8001217c:	ffff4097          	auipc	ra,0xffff4
    80012180:	604080e7          	jalr	1540(ra) # 80006780 <_ZN10_BuddyTreeC1EPvmm>
    tree->print(); line();
    80012184:	00048513          	mv	a0,s1
    80012188:	ffff5097          	auipc	ra,0xffff5
    8001218c:	a30080e7          	jalr	-1488(ra) # 80006bb8 <_ZN10_BuddyTree5printEv>
    80012190:	00000097          	auipc	ra,0x0
    80012194:	f6c080e7          	jalr	-148(ra) # 800120fc <_Z4linev>
    void* p1 = tree->alloc(10);
    80012198:	00a00593          	li	a1,10
    8001219c:	00048513          	mv	a0,s1
    800121a0:	ffff5097          	auipc	ra,0xffff5
    800121a4:	894080e7          	jalr	-1900(ra) # 80006a34 <_ZN10_BuddyTree5allocEm>
    800121a8:	00050993          	mv	s3,a0
    tree->print(); line();
    800121ac:	00048513          	mv	a0,s1
    800121b0:	ffff5097          	auipc	ra,0xffff5
    800121b4:	a08080e7          	jalr	-1528(ra) # 80006bb8 <_ZN10_BuddyTree5printEv>
    800121b8:	00000097          	auipc	ra,0x0
    800121bc:	f44080e7          	jalr	-188(ra) # 800120fc <_Z4linev>
    tree->alloc(20);
    800121c0:	01400593          	li	a1,20
    800121c4:	00048513          	mv	a0,s1
    800121c8:	ffff5097          	auipc	ra,0xffff5
    800121cc:	86c080e7          	jalr	-1940(ra) # 80006a34 <_ZN10_BuddyTree5allocEm>
    tree->print(); line();
    800121d0:	00048513          	mv	a0,s1
    800121d4:	ffff5097          	auipc	ra,0xffff5
    800121d8:	9e4080e7          	jalr	-1564(ra) # 80006bb8 <_ZN10_BuddyTree5printEv>
    800121dc:	00000097          	auipc	ra,0x0
    800121e0:	f20080e7          	jalr	-224(ra) # 800120fc <_Z4linev>
    tree->alloc(35);
    800121e4:	02300593          	li	a1,35
    800121e8:	00048513          	mv	a0,s1
    800121ec:	ffff5097          	auipc	ra,0xffff5
    800121f0:	848080e7          	jalr	-1976(ra) # 80006a34 <_ZN10_BuddyTree5allocEm>
    tree->print(); line();
    800121f4:	00048513          	mv	a0,s1
    800121f8:	ffff5097          	auipc	ra,0xffff5
    800121fc:	9c0080e7          	jalr	-1600(ra) # 80006bb8 <_ZN10_BuddyTree5printEv>
    80012200:	00000097          	auipc	ra,0x0
    80012204:	efc080e7          	jalr	-260(ra) # 800120fc <_Z4linev>
    void* p4 = tree->alloc(10);
    80012208:	00a00593          	li	a1,10
    8001220c:	00048513          	mv	a0,s1
    80012210:	ffff5097          	auipc	ra,0xffff5
    80012214:	824080e7          	jalr	-2012(ra) # 80006a34 <_ZN10_BuddyTree5allocEm>
    80012218:	00050913          	mv	s2,a0
    tree->print(); line();
    8001221c:	00048513          	mv	a0,s1
    80012220:	ffff5097          	auipc	ra,0xffff5
    80012224:	998080e7          	jalr	-1640(ra) # 80006bb8 <_ZN10_BuddyTree5printEv>
    80012228:	00000097          	auipc	ra,0x0
    8001222c:	ed4080e7          	jalr	-300(ra) # 800120fc <_Z4linev>
    tree->dealloc(p1);
    80012230:	00098593          	mv	a1,s3
    80012234:	00048513          	mv	a0,s1
    80012238:	ffff5097          	auipc	ra,0xffff5
    8001223c:	840080e7          	jalr	-1984(ra) # 80006a78 <_ZN10_BuddyTree7deallocEPv>
    tree->print(); line();
    80012240:	00048513          	mv	a0,s1
    80012244:	ffff5097          	auipc	ra,0xffff5
    80012248:	974080e7          	jalr	-1676(ra) # 80006bb8 <_ZN10_BuddyTree5printEv>
    8001224c:	00000097          	auipc	ra,0x0
    80012250:	eb0080e7          	jalr	-336(ra) # 800120fc <_Z4linev>
    tree->dealloc(p4);
    80012254:	00090593          	mv	a1,s2
    80012258:	00048513          	mv	a0,s1
    8001225c:	ffff5097          	auipc	ra,0xffff5
    80012260:	81c080e7          	jalr	-2020(ra) # 80006a78 <_ZN10_BuddyTree7deallocEPv>
    tree->print(); line();
    80012264:	00048513          	mv	a0,s1
    80012268:	ffff5097          	auipc	ra,0xffff5
    8001226c:	950080e7          	jalr	-1712(ra) # 80006bb8 <_ZN10_BuddyTree5printEv>
    80012270:	00000097          	auipc	ra,0x0
    80012274:	e8c080e7          	jalr	-372(ra) # 800120fc <_Z4linev>
}
    80012278:	02813083          	ld	ra,40(sp)
    8001227c:	02013403          	ld	s0,32(sp)
    80012280:	01813483          	ld	s1,24(sp)
    80012284:	01013903          	ld	s2,16(sp)
    80012288:	00813983          	ld	s3,8(sp)
    8001228c:	03010113          	addi	sp,sp,48
    80012290:	00008067          	ret

0000000080012294 <_Z9testCachev>:
void testCache() {
    80012294:	81010113          	addi	sp,sp,-2032
    80012298:	7e113423          	sd	ra,2024(sp)
    8001229c:	7e813023          	sd	s0,2016(sp)
    800122a0:	7c913c23          	sd	s1,2008(sp)
    800122a4:	7d213823          	sd	s2,2000(sp)
    800122a8:	7d313423          	sd	s3,1992(sp)
    800122ac:	7d413023          	sd	s4,1984(sp)
    800122b0:	7f010413          	addi	s0,sp,2032
    800122b4:	ffffa2b7          	lui	t0,0xffffa
    800122b8:	86028293          	addi	t0,t0,-1952 # ffffffffffff9860 <end+0xffffffff7ffe54d0>
    800122bc:	00510133          	add	sp,sp,t0
    kmem_cache_t* carCache = kmem_cache_create("MojKes1", sizeof(Car), CarCtor, nullptr);
    800122c0:	00000693          	li	a3,0
    800122c4:	00000617          	auipc	a2,0x0
    800122c8:	d1860613          	addi	a2,a2,-744 # 80011fdc <_Z7CarCtorPv>
    800122cc:	01000593          	li	a1,16
    800122d0:	00002517          	auipc	a0,0x2
    800122d4:	da050513          	addi	a0,a0,-608 # 80014070 <MAX_PRIORITY+0x60>
    800122d8:	fffef097          	auipc	ra,0xfffef
    800122dc:	14c080e7          	jalr	332(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    800122e0:	00050993          	mv	s3,a0
    Car* car = (Car*)kmem_cache_alloc(carCache);
    800122e4:	fffef097          	auipc	ra,0xfffef
    800122e8:	190080e7          	jalr	400(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
    800122ec:	00050493          	mv	s1,a0
        printstring("Auto");
    800122f0:	00002517          	auipc	a0,0x2
    800122f4:	d8850513          	addi	a0,a0,-632 # 80014078 <MAX_PRIORITY+0x68>
    800122f8:	00000097          	auipc	ra,0x0
    800122fc:	d2c080e7          	jalr	-724(ra) # 80012024 <_Z11printstringPKc>
        printstring(name);
    80012300:	0004b503          	ld	a0,0(s1)
    80012304:	00000097          	auipc	ra,0x0
    80012308:	d20080e7          	jalr	-736(ra) # 80012024 <_Z11printstringPKc>
        printstring(" | Tockova: ");
    8001230c:	00002517          	auipc	a0,0x2
    80012310:	d7450513          	addi	a0,a0,-652 # 80014080 <MAX_PRIORITY+0x70>
    80012314:	00000097          	auipc	ra,0x0
    80012318:	d10080e7          	jalr	-752(ra) # 80012024 <_Z11printstringPKc>
        printNum(wheels);
    8001231c:	0084a503          	lw	a0,8(s1)
    80012320:	00000097          	auipc	ra,0x0
    80012324:	d48080e7          	jalr	-696(ra) # 80012068 <_Z8printNumm>
        putc('\n');
    80012328:	00a00513          	li	a0,10
    8001232c:	fffff097          	auipc	ra,0xfffff
    80012330:	59c080e7          	jalr	1436(ra) # 800118c8 <_Z4putcc>
    kmem_cache_free(carCache, car);
    80012334:	00048593          	mv	a1,s1
    80012338:	00098513          	mv	a0,s3
    8001233c:	fffef097          	auipc	ra,0xfffef
    80012340:	160080e7          	jalr	352(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
    int ret = kmem_cache_shrink(carCache);
    80012344:	00098513          	mv	a0,s3
    80012348:	fffef097          	auipc	ra,0xfffef
    8001234c:	104080e7          	jalr	260(ra) # 8000144c <_Z17kmem_cache_shrinkP12kmem_cache_t>
    if (ret) printstring("SHRINK!\n");
    80012350:	0a050863          	beqz	a0,80012400 <_Z9testCachev+0x16c>
    80012354:	00002517          	auipc	a0,0x2
    80012358:	d3c50513          	addi	a0,a0,-708 # 80014090 <MAX_PRIORITY+0x80>
    8001235c:	00000097          	auipc	ra,0x0
    80012360:	cc8080e7          	jalr	-824(ra) # 80012024 <_Z11printstringPKc>
    kmem_cache_shrink(carCache);
    80012364:	00098513          	mv	a0,s3
    80012368:	fffef097          	auipc	ra,0xfffef
    8001236c:	0e4080e7          	jalr	228(ra) # 8000144c <_Z17kmem_cache_shrinkP12kmem_cache_t>
    kmem_cache_free(carCache, nullptr);
    80012370:	00000593          	li	a1,0
    80012374:	00098513          	mv	a0,s3
    80012378:	fffef097          	auipc	ra,0xfffef
    8001237c:	124080e7          	jalr	292(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
    kmem_cache_error(carCache);
    80012380:	00098513          	mv	a0,s3
    80012384:	fffef097          	auipc	ra,0xfffef
    80012388:	1e0080e7          	jalr	480(ra) # 80001564 <_Z16kmem_cache_errorP12kmem_cache_t>
    kmem_cache_info(carCache);
    8001238c:	00098513          	mv	a0,s3
    80012390:	fffef097          	auipc	ra,0xfffef
    80012394:	1ac080e7          	jalr	428(ra) # 8000153c <_Z15kmem_cache_infoP12kmem_cache_t>
    int i = 0;
    80012398:	00000493          	li	s1,0
        car = (Car*)kmem_cache_alloc(carCache);
    8001239c:	00098513          	mv	a0,s3
    800123a0:	fffef097          	auipc	ra,0xfffef
    800123a4:	0d4080e7          	jalr	212(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
        if (car == nullptr || i == 3563) {
    800123a8:	06050663          	beqz	a0,80012414 <_Z9testCachev+0x180>
    800123ac:	000017b7          	lui	a5,0x1
    800123b0:	deb78793          	addi	a5,a5,-533 # deb <_entry-0x7ffff215>
    800123b4:	06f48063          	beq	s1,a5,80012414 <_Z9testCachev+0x180>
            cars[i] = car;
    800123b8:	ffff97b7          	lui	a5,0xffff9
    800123bc:	00349713          	slli	a4,s1,0x3
    800123c0:	fd040693          	addi	a3,s0,-48
    800123c4:	00f687b3          	add	a5,a3,a5
    800123c8:	00e787b3          	add	a5,a5,a4
    800123cc:	0aa7b423          	sd	a0,168(a5) # ffffffffffff90a8 <end+0xffffffff7ffe4d18>
            printstring("ALLOC SUCCESS! ");
    800123d0:	00002517          	auipc	a0,0x2
    800123d4:	ce050513          	addi	a0,a0,-800 # 800140b0 <MAX_PRIORITY+0xa0>
    800123d8:	00000097          	auipc	ra,0x0
    800123dc:	c4c080e7          	jalr	-948(ra) # 80012024 <_Z11printstringPKc>
            printNum(++i);
    800123e0:	0014849b          	addiw	s1,s1,1
    800123e4:	00048513          	mv	a0,s1
    800123e8:	00000097          	auipc	ra,0x0
    800123ec:	c80080e7          	jalr	-896(ra) # 80012068 <_Z8printNumm>
            putc('\n');
    800123f0:	00a00513          	li	a0,10
    800123f4:	fffff097          	auipc	ra,0xfffff
    800123f8:	4d4080e7          	jalr	1236(ra) # 800118c8 <_Z4putcc>
    800123fc:	fa1ff06f          	j	8001239c <_Z9testCachev+0x108>
    else printstring("NO SHRINK!\n");
    80012400:	00002517          	auipc	a0,0x2
    80012404:	ca050513          	addi	a0,a0,-864 # 800140a0 <MAX_PRIORITY+0x90>
    80012408:	00000097          	auipc	ra,0x0
    8001240c:	c1c080e7          	jalr	-996(ra) # 80012024 <_Z11printstringPKc>
    80012410:	f55ff06f          	j	80012364 <_Z9testCachev+0xd0>
            kmem_cache_error(carCache);
    80012414:	00098513          	mv	a0,s3
    80012418:	fffef097          	auipc	ra,0xfffef
    8001241c:	14c080e7          	jalr	332(ra) # 80001564 <_Z16kmem_cache_errorP12kmem_cache_t>
    line();
    80012420:	00000097          	auipc	ra,0x0
    80012424:	cdc080e7          	jalr	-804(ra) # 800120fc <_Z4linev>
    for (int j = 0; j < i; j++) {
    80012428:	00000913          	li	s2,0
    8001242c:	08995463          	bge	s2,s1,800124b4 <_Z9testCachev+0x220>
        printNum(j + 1);
    80012430:	00190a1b          	addiw	s4,s2,1
    80012434:	000a0513          	mv	a0,s4
    80012438:	00000097          	auipc	ra,0x0
    8001243c:	c30080e7          	jalr	-976(ra) # 80012068 <_Z8printNumm>
        printstring(". ");
    80012440:	00002517          	auipc	a0,0x2
    80012444:	c8050513          	addi	a0,a0,-896 # 800140c0 <MAX_PRIORITY+0xb0>
    80012448:	00000097          	auipc	ra,0x0
    8001244c:	bdc080e7          	jalr	-1060(ra) # 80012024 <_Z11printstringPKc>
        cars[j]->print();
    80012450:	ffff97b7          	lui	a5,0xffff9
    80012454:	00391913          	slli	s2,s2,0x3
    80012458:	fd040713          	addi	a4,s0,-48
    8001245c:	00f707b3          	add	a5,a4,a5
    80012460:	01278933          	add	s2,a5,s2
    80012464:	0a893903          	ld	s2,168(s2)
        printstring("Auto");
    80012468:	00002517          	auipc	a0,0x2
    8001246c:	c1050513          	addi	a0,a0,-1008 # 80014078 <MAX_PRIORITY+0x68>
    80012470:	00000097          	auipc	ra,0x0
    80012474:	bb4080e7          	jalr	-1100(ra) # 80012024 <_Z11printstringPKc>
        printstring(name);
    80012478:	00093503          	ld	a0,0(s2)
    8001247c:	00000097          	auipc	ra,0x0
    80012480:	ba8080e7          	jalr	-1112(ra) # 80012024 <_Z11printstringPKc>
        printstring(" | Tockova: ");
    80012484:	00002517          	auipc	a0,0x2
    80012488:	bfc50513          	addi	a0,a0,-1028 # 80014080 <MAX_PRIORITY+0x70>
    8001248c:	00000097          	auipc	ra,0x0
    80012490:	b98080e7          	jalr	-1128(ra) # 80012024 <_Z11printstringPKc>
        printNum(wheels);
    80012494:	00892503          	lw	a0,8(s2)
    80012498:	00000097          	auipc	ra,0x0
    8001249c:	bd0080e7          	jalr	-1072(ra) # 80012068 <_Z8printNumm>
        putc('\n');
    800124a0:	00a00513          	li	a0,10
    800124a4:	fffff097          	auipc	ra,0xfffff
    800124a8:	424080e7          	jalr	1060(ra) # 800118c8 <_Z4putcc>
    for (int j = 0; j < i; j++) {
    800124ac:	000a0913          	mv	s2,s4
    }
    800124b0:	f7dff06f          	j	8001242c <_Z9testCachev+0x198>
    kmem_cache_destroy(carCache);
    800124b4:	00098513          	mv	a0,s3
    800124b8:	fffef097          	auipc	ra,0xfffef
    800124bc:	05c080e7          	jalr	92(ra) # 80001514 <_Z18kmem_cache_destroyP12kmem_cache_t>
    putc('\n');
    800124c0:	00a00513          	li	a0,10
    800124c4:	fffff097          	auipc	ra,0xfffff
    800124c8:	404080e7          	jalr	1028(ra) # 800118c8 <_Z4putcc>
    int* arr = (int*)kmalloc(10 * sizeof(int));
    800124cc:	02800513          	li	a0,40
    800124d0:	fffef097          	auipc	ra,0xfffef
    800124d4:	ff4080e7          	jalr	-12(ra) # 800014c4 <_Z7kmallocm>
    if (arr) {
    800124d8:	04050c63          	beqz	a0,80012530 <_Z9testCachev+0x29c>
        for (int i = 0; i < 10; i++) arr[i] = i;
    800124dc:	00000793          	li	a5,0
    800124e0:	00900713          	li	a4,9
    800124e4:	00f74c63          	blt	a4,a5,800124fc <_Z9testCachev+0x268>
    800124e8:	00279713          	slli	a4,a5,0x2
    800124ec:	00e50733          	add	a4,a0,a4
    800124f0:	00f72023          	sw	a5,0(a4)
    800124f4:	0017879b          	addiw	a5,a5,1
    800124f8:	fe9ff06f          	j	800124e0 <_Z9testCachev+0x24c>
        kfree(arr);
    800124fc:	fffef097          	auipc	ra,0xfffef
    80012500:	ff0080e7          	jalr	-16(ra) # 800014ec <_Z5kfreePKv>
}
    80012504:	000062b7          	lui	t0,0x6
    80012508:	7a028293          	addi	t0,t0,1952 # 67a0 <_entry-0x7fff9860>
    8001250c:	00510133          	add	sp,sp,t0
    80012510:	7e813083          	ld	ra,2024(sp)
    80012514:	7e013403          	ld	s0,2016(sp)
    80012518:	7d813483          	ld	s1,2008(sp)
    8001251c:	7d013903          	ld	s2,2000(sp)
    80012520:	7c813983          	ld	s3,1992(sp)
    80012524:	7c013a03          	ld	s4,1984(sp)
    80012528:	7f010113          	addi	sp,sp,2032
    8001252c:	00008067          	ret
        printstring("ERROR\n");
    80012530:	00002517          	auipc	a0,0x2
    80012534:	b9850513          	addi	a0,a0,-1128 # 800140c8 <MAX_PRIORITY+0xb8>
    80012538:	00000097          	auipc	ra,0x0
    8001253c:	aec080e7          	jalr	-1300(ra) # 80012024 <_Z11printstringPKc>
}
    80012540:	fc5ff06f          	j	80012504 <_Z9testCachev+0x270>

0000000080012544 <_Z10testCache2v>:
void testCache2() {
    80012544:	81010113          	addi	sp,sp,-2032
    80012548:	7e113423          	sd	ra,2024(sp)
    8001254c:	7e813023          	sd	s0,2016(sp)
    80012550:	7c913c23          	sd	s1,2008(sp)
    80012554:	7d213823          	sd	s2,2000(sp)
    80012558:	7f010413          	addi	s0,sp,2032
    8001255c:	fffff2b7          	lui	t0,0xfffff
    80012560:	89028293          	addi	t0,t0,-1904 # ffffffffffffe890 <end+0xffffffff7ffea500>
    80012564:	00510133          	add	sp,sp,t0
    kmem_cache_t* carCache = kmem_cache_create("MojKes1", sizeof(Car), CarCtor, nullptr);
    80012568:	00000693          	li	a3,0
    8001256c:	00000617          	auipc	a2,0x0
    80012570:	a7060613          	addi	a2,a2,-1424 # 80011fdc <_Z7CarCtorPv>
    80012574:	01000593          	li	a1,16
    80012578:	00002517          	auipc	a0,0x2
    8001257c:	af850513          	addi	a0,a0,-1288 # 80014070 <MAX_PRIORITY+0x60>
    80012580:	fffef097          	auipc	ra,0xfffef
    80012584:	ea4080e7          	jalr	-348(ra) # 80001424 <_Z17kmem_cache_createPKcmPFvPvES3_>
    80012588:	00050913          	mv	s2,a0
    for (int i = 0; i < MAX; i++) cars[i] = (Car*)kmem_cache_alloc(carCache);
    8001258c:	00000493          	li	s1,0
    80012590:	3e700793          	li	a5,999
    80012594:	0297c863          	blt	a5,s1,800125c4 <_Z10testCache2v+0x80>
    80012598:	00090513          	mv	a0,s2
    8001259c:	fffef097          	auipc	ra,0xfffef
    800125a0:	ed8080e7          	jalr	-296(ra) # 80001474 <_Z16kmem_cache_allocP12kmem_cache_t>
    800125a4:	ffffe7b7          	lui	a5,0xffffe
    800125a8:	00349713          	slli	a4,s1,0x3
    800125ac:	fe040693          	addi	a3,s0,-32
    800125b0:	00f687b3          	add	a5,a3,a5
    800125b4:	00e787b3          	add	a5,a5,a4
    800125b8:	0ca7b023          	sd	a0,192(a5) # ffffffffffffe0c0 <end+0xffffffff7ffe9d30>
    800125bc:	0014849b          	addiw	s1,s1,1
    800125c0:	fd1ff06f          	j	80012590 <_Z10testCache2v+0x4c>
    kmem_cache_error(carCache);
    800125c4:	00090513          	mv	a0,s2
    800125c8:	fffef097          	auipc	ra,0xfffef
    800125cc:	f9c080e7          	jalr	-100(ra) # 80001564 <_Z16kmem_cache_errorP12kmem_cache_t>
    kmem_cache_info(carCache);
    800125d0:	00090513          	mv	a0,s2
    800125d4:	fffef097          	auipc	ra,0xfffef
    800125d8:	f68080e7          	jalr	-152(ra) # 8000153c <_Z15kmem_cache_infoP12kmem_cache_t>
    for (int i = MAX; i > MAX/2; i--) kmem_cache_free(carCache, cars[i]);
    800125dc:	3e800493          	li	s1,1000
    800125e0:	1f400793          	li	a5,500
    800125e4:	0297d863          	bge	a5,s1,80012614 <_Z10testCache2v+0xd0>
    800125e8:	ffffe7b7          	lui	a5,0xffffe
    800125ec:	00349713          	slli	a4,s1,0x3
    800125f0:	fe040693          	addi	a3,s0,-32
    800125f4:	00f687b3          	add	a5,a3,a5
    800125f8:	00e787b3          	add	a5,a5,a4
    800125fc:	0c07b583          	ld	a1,192(a5) # ffffffffffffe0c0 <end+0xffffffff7ffe9d30>
    80012600:	00090513          	mv	a0,s2
    80012604:	fffef097          	auipc	ra,0xfffef
    80012608:	e98080e7          	jalr	-360(ra) # 8000149c <_Z15kmem_cache_freeP12kmem_cache_tPv>
    8001260c:	fff4849b          	addiw	s1,s1,-1
    80012610:	fd1ff06f          	j	800125e0 <_Z10testCache2v+0x9c>
    kmem_cache_info(carCache);
    80012614:	00090513          	mv	a0,s2
    80012618:	fffef097          	auipc	ra,0xfffef
    8001261c:	f24080e7          	jalr	-220(ra) # 8000153c <_Z15kmem_cache_infoP12kmem_cache_t>
    kmem_cache_shrink(carCache);
    80012620:	00090513          	mv	a0,s2
    80012624:	fffef097          	auipc	ra,0xfffef
    80012628:	e28080e7          	jalr	-472(ra) # 8000144c <_Z17kmem_cache_shrinkP12kmem_cache_t>
    kmem_cache_info(carCache);
    8001262c:	00090513          	mv	a0,s2
    80012630:	fffef097          	auipc	ra,0xfffef
    80012634:	f0c080e7          	jalr	-244(ra) # 8000153c <_Z15kmem_cache_infoP12kmem_cache_t>
    kmem_cache_destroy(carCache);
    80012638:	00090513          	mv	a0,s2
    8001263c:	fffef097          	auipc	ra,0xfffef
    80012640:	ed8080e7          	jalr	-296(ra) # 80001514 <_Z18kmem_cache_destroyP12kmem_cache_t>
}
    80012644:	000012b7          	lui	t0,0x1
    80012648:	77028293          	addi	t0,t0,1904 # 1770 <_entry-0x7fffe890>
    8001264c:	00510133          	add	sp,sp,t0
    80012650:	7e813083          	ld	ra,2024(sp)
    80012654:	7e013403          	ld	s0,2016(sp)
    80012658:	7d813483          	ld	s1,2008(sp)
    8001265c:	7d013903          	ld	s2,2000(sp)
    80012660:	7f010113          	addi	sp,sp,2032
    80012664:	00008067          	ret

0000000080012668 <_Z13testBuffCachev>:
void testBuffCache() {
    80012668:	cc010113          	addi	sp,sp,-832
    8001266c:	32113c23          	sd	ra,824(sp)
    80012670:	32813823          	sd	s0,816(sp)
    80012674:	32913423          	sd	s1,808(sp)
    80012678:	34010413          	addi	s0,sp,832
    for (int i = 0; i < 100; i++) arrs[i] = (int*)kmalloc(1000*sizeof(int));
    8001267c:	00000493          	li	s1,0
    80012680:	06300793          	li	a5,99
    80012684:	0297c663          	blt	a5,s1,800126b0 <_Z13testBuffCachev+0x48>
    80012688:	00001537          	lui	a0,0x1
    8001268c:	fa050513          	addi	a0,a0,-96 # fa0 <_entry-0x7ffff060>
    80012690:	fffef097          	auipc	ra,0xfffef
    80012694:	e34080e7          	jalr	-460(ra) # 800014c4 <_Z7kmallocm>
    80012698:	00349793          	slli	a5,s1,0x3
    8001269c:	fe040713          	addi	a4,s0,-32
    800126a0:	00f707b3          	add	a5,a4,a5
    800126a4:	cea7b023          	sd	a0,-800(a5)
    800126a8:	0014849b          	addiw	s1,s1,1
    800126ac:	fd5ff06f          	j	80012680 <_Z13testBuffCachev+0x18>
    kmem_cache_info_buff(11);
    800126b0:	00b00513          	li	a0,11
    800126b4:	fffef097          	auipc	ra,0xfffef
    800126b8:	ed8080e7          	jalr	-296(ra) # 8000158c <_Z20kmem_cache_info_buffi>
    kmem_cache_info_buff(12);
    800126bc:	00c00513          	li	a0,12
    800126c0:	fffef097          	auipc	ra,0xfffef
    800126c4:	ecc080e7          	jalr	-308(ra) # 8000158c <_Z20kmem_cache_info_buffi>
    for (int i = 50; i < 100; i++) kfree(arrs[i]);
    800126c8:	03200493          	li	s1,50
    800126cc:	06300793          	li	a5,99
    800126d0:	0297c263          	blt	a5,s1,800126f4 <_Z13testBuffCachev+0x8c>
    800126d4:	00349793          	slli	a5,s1,0x3
    800126d8:	fe040713          	addi	a4,s0,-32
    800126dc:	00f707b3          	add	a5,a4,a5
    800126e0:	ce07b503          	ld	a0,-800(a5)
    800126e4:	fffef097          	auipc	ra,0xfffef
    800126e8:	e08080e7          	jalr	-504(ra) # 800014ec <_Z5kfreePKv>
    800126ec:	0014849b          	addiw	s1,s1,1
    800126f0:	fddff06f          	j	800126cc <_Z13testBuffCachev+0x64>
    kmem_cache_info_buff(12);
    800126f4:	00c00513          	li	a0,12
    800126f8:	fffef097          	auipc	ra,0xfffef
    800126fc:	e94080e7          	jalr	-364(ra) # 8000158c <_Z20kmem_cache_info_buffi>
    for (int i = 50; i < 100; i++) arrs[i] = (int*)kmalloc(1000*sizeof(int));
    80012700:	03200493          	li	s1,50
    80012704:	06300793          	li	a5,99
    80012708:	0097ce63          	blt	a5,s1,80012724 <_Z13testBuffCachev+0xbc>
    8001270c:	00001537          	lui	a0,0x1
    80012710:	fa050513          	addi	a0,a0,-96 # fa0 <_entry-0x7ffff060>
    80012714:	fffef097          	auipc	ra,0xfffef
    80012718:	db0080e7          	jalr	-592(ra) # 800014c4 <_Z7kmallocm>
    8001271c:	0014849b          	addiw	s1,s1,1
    80012720:	fe5ff06f          	j	80012704 <_Z13testBuffCachev+0x9c>
    kmem_cache_info_buff(12);
    80012724:	00c00513          	li	a0,12
    80012728:	fffef097          	auipc	ra,0xfffef
    8001272c:	e64080e7          	jalr	-412(ra) # 8000158c <_Z20kmem_cache_info_buffi>
}
    80012730:	33813083          	ld	ra,824(sp)
    80012734:	33013403          	ld	s0,816(sp)
    80012738:	32813483          	ld	s1,808(sp)
    8001273c:	34010113          	addi	sp,sp,832
    80012740:	00008067          	ret

0000000080012744 <_Z17testLoadPageFaultv>:
void testLoadPageFault() {
    80012744:	fd010113          	addi	sp,sp,-48
    80012748:	02113423          	sd	ra,40(sp)
    8001274c:	02813023          	sd	s0,32(sp)
    80012750:	00913c23          	sd	s1,24(sp)
    80012754:	03010413          	addi	s0,sp,48
    thread_t handle;
    thread_create(&handle, &f, nullptr);
    80012758:	fffff797          	auipc	a5,0xfffff
    8001275c:	9407b783          	ld	a5,-1728(a5) # 80011098 <_GLOBAL_OFFSET_TABLE_+0x98>
    80012760:	0007a783          	lw	a5,0(a5)
    80012764:	fffff717          	auipc	a4,0xfffff
    80012768:	93c73703          	ld	a4,-1732(a4) # 800110a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
    8001276c:	00072703          	lw	a4,0(a4)
    80012770:	000016b7          	lui	a3,0x1
    80012774:	00000613          	li	a2,0
    80012778:	00000597          	auipc	a1,0x0
    8001277c:	84c58593          	addi	a1,a1,-1972 # 80011fc4 <_Z1fPv>
    80012780:	fd840513          	addi	a0,s0,-40
    80012784:	fffff097          	auipc	ra,0xfffff
    80012788:	acc080e7          	jalr	-1332(ra) # 80011250 <_Z13thread_createPP7_ThreadPFvPvES2_mii>
    printstring("Kreirana nit, sada probam pristup.\n");
    8001278c:	00002517          	auipc	a0,0x2
    80012790:	94450513          	addi	a0,a0,-1724 # 800140d0 <MAX_PRIORITY+0xc0>
    80012794:	00000097          	auipc	ra,0x0
    80012798:	890080e7          	jalr	-1904(ra) # 80012024 <_Z11printstringPKc>
    uint64 sp = *(uint64*)handle;
    8001279c:	fd843783          	ld	a5,-40(s0)
    800127a0:	0007b483          	ld	s1,0(a5)
    printstring("Uspeh! - ");
    800127a4:	00002517          	auipc	a0,0x2
    800127a8:	95450513          	addi	a0,a0,-1708 # 800140f8 <MAX_PRIORITY+0xe8>
    800127ac:	00000097          	auipc	ra,0x0
    800127b0:	878080e7          	jalr	-1928(ra) # 80012024 <_Z11printstringPKc>
    printNum(sp);
    800127b4:	00048513          	mv	a0,s1
    800127b8:	00000097          	auipc	ra,0x0
    800127bc:	8b0080e7          	jalr	-1872(ra) # 80012068 <_Z8printNumm>
}
    800127c0:	02813083          	ld	ra,40(sp)
    800127c4:	02013403          	ld	s0,32(sp)
    800127c8:	01813483          	ld	s1,24(sp)
    800127cc:	03010113          	addi	sp,sp,48
    800127d0:	00008067          	ret

00000000800127d4 <_Z24testInstructionPageFaultv>:
#include "../h/_Thread.h"
void testInstructionPageFault() {
    800127d4:	ff010113          	addi	sp,sp,-16
    800127d8:	00113423          	sd	ra,8(sp)
    800127dc:	00813023          	sd	s0,0(sp)
    800127e0:	01010413          	addi	s0,sp,16
    _Thread::dispatch();
    800127e4:	ffff1097          	auipc	ra,0xffff1
    800127e8:	2b4080e7          	jalr	692(ra) # 80003a98 <_ZN7_Thread8dispatchEv>
}
    800127ec:	00813083          	ld	ra,8(sp)
    800127f0:	00013403          	ld	s0,0(sp)
    800127f4:	01010113          	addi	sp,sp,16
    800127f8:	00008067          	ret

00000000800127fc <_Z18testStorePageFaultv>:
void testStorePageFault() {
    800127fc:	ff010113          	addi	sp,sp,-16
    80012800:	00813423          	sd	s0,8(sp)
    80012804:	01010413          	addi	s0,sp,16
    _Thread::running = nullptr;
    80012808:	fffff797          	auipc	a5,0xfffff
    8001280c:	8307b783          	ld	a5,-2000(a5) # 80011038 <_GLOBAL_OFFSET_TABLE_+0x38>
    80012810:	0007b023          	sd	zero,0(a5)
}
    80012814:	00813403          	ld	s0,8(sp)
    80012818:	01010113          	addi	sp,sp,16
    8001281c:	00008067          	ret

0000000080012820 <_ZN19ConsumerProducerCPP20testConsumerProducerEv>:

            td->sem->signal();
        }
    };

    void testConsumerProducer() {
    80012820:	f8010113          	addi	sp,sp,-128
    80012824:	06113c23          	sd	ra,120(sp)
    80012828:	06813823          	sd	s0,112(sp)
    8001282c:	06913423          	sd	s1,104(sp)
    80012830:	07213023          	sd	s2,96(sp)
    80012834:	05313c23          	sd	s3,88(sp)
    80012838:	05413823          	sd	s4,80(sp)
    8001283c:	05513423          	sd	s5,72(sp)
    80012840:	05613023          	sd	s6,64(sp)
    80012844:	03713c23          	sd	s7,56(sp)
    80012848:	03813823          	sd	s8,48(sp)
    8001284c:	03913423          	sd	s9,40(sp)
    80012850:	08010413          	addi	s0,sp,128
        delete waitForAll;
        for (int i = 0; i < threadNum; i++) {
            delete producers[i];
        }
        delete consumer;
        delete buffer;
    80012854:	00010b93          	mv	s7,sp
        printString("Unesite broj proizvodjaca?\n");
    80012858:	00002517          	auipc	a0,0x2
    8001285c:	8b050513          	addi	a0,a0,-1872 # 80014108 <MAX_PRIORITY+0xf8>
    80012860:	fffff097          	auipc	ra,0xfffff
    80012864:	0b0080e7          	jalr	176(ra) # 80011910 <_Z11printStringPKc>
        getString(input, 30);
    80012868:	01e00593          	li	a1,30
    8001286c:	f8040493          	addi	s1,s0,-128
    80012870:	00048513          	mv	a0,s1
    80012874:	fffff097          	auipc	ra,0xfffff
    80012878:	118080e7          	jalr	280(ra) # 8001198c <_Z9getStringPci>
        threadNum = stringToInt(input);
    8001287c:	00048513          	mv	a0,s1
    80012880:	fffff097          	auipc	ra,0xfffff
    80012884:	1d8080e7          	jalr	472(ra) # 80011a58 <_Z11stringToIntPKc>
    80012888:	00050913          	mv	s2,a0
        printString("Unesite velicinu bafera?\n");
    8001288c:	00002517          	auipc	a0,0x2
    80012890:	89c50513          	addi	a0,a0,-1892 # 80014128 <MAX_PRIORITY+0x118>
    80012894:	fffff097          	auipc	ra,0xfffff
    80012898:	07c080e7          	jalr	124(ra) # 80011910 <_Z11printStringPKc>
        getString(input, 30);
    8001289c:	01e00593          	li	a1,30
    800128a0:	00048513          	mv	a0,s1
    800128a4:	fffff097          	auipc	ra,0xfffff
    800128a8:	0e8080e7          	jalr	232(ra) # 8001198c <_Z9getStringPci>
        n = stringToInt(input);
    800128ac:	00048513          	mv	a0,s1
    800128b0:	fffff097          	auipc	ra,0xfffff
    800128b4:	1a8080e7          	jalr	424(ra) # 80011a58 <_Z11stringToIntPKc>
    800128b8:	00050493          	mv	s1,a0
        printString("Broj proizvodjaca "); printInt(threadNum);
    800128bc:	00002517          	auipc	a0,0x2
    800128c0:	88c50513          	addi	a0,a0,-1908 # 80014148 <MAX_PRIORITY+0x138>
    800128c4:	fffff097          	auipc	ra,0xfffff
    800128c8:	04c080e7          	jalr	76(ra) # 80011910 <_Z11printStringPKc>
    800128cc:	00000613          	li	a2,0
    800128d0:	00a00593          	li	a1,10
    800128d4:	00090513          	mv	a0,s2
    800128d8:	fffff097          	auipc	ra,0xfffff
    800128dc:	1d0080e7          	jalr	464(ra) # 80011aa8 <_Z8printIntiii>
        printString(" i velicina bafera "); printInt(n);
    800128e0:	00002517          	auipc	a0,0x2
    800128e4:	88050513          	addi	a0,a0,-1920 # 80014160 <MAX_PRIORITY+0x150>
    800128e8:	fffff097          	auipc	ra,0xfffff
    800128ec:	028080e7          	jalr	40(ra) # 80011910 <_Z11printStringPKc>
    800128f0:	00000613          	li	a2,0
    800128f4:	00a00593          	li	a1,10
    800128f8:	00048513          	mv	a0,s1
    800128fc:	fffff097          	auipc	ra,0xfffff
    80012900:	1ac080e7          	jalr	428(ra) # 80011aa8 <_Z8printIntiii>
        printString(".\n");
    80012904:	00002517          	auipc	a0,0x2
    80012908:	87450513          	addi	a0,a0,-1932 # 80014178 <MAX_PRIORITY+0x168>
    8001290c:	fffff097          	auipc	ra,0xfffff
    80012910:	004080e7          	jalr	4(ra) # 80011910 <_Z11printStringPKc>
        if(threadNum > n) {
    80012914:	0324c663          	blt	s1,s2,80012940 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x120>
        } else if (threadNum < 1) {
    80012918:	03205e63          	blez	s2,80012954 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x134>
        BufferCPP *buffer = new BufferCPP(n);
    8001291c:	03800513          	li	a0,56
    80012920:	00001097          	auipc	ra,0x1
    80012924:	af0080e7          	jalr	-1296(ra) # 80013410 <_Znwm>
    80012928:	00050a93          	mv	s5,a0
    8001292c:	04050063          	beqz	a0,8001296c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x14c>
    80012930:	00048593          	mv	a1,s1
    80012934:	fffff097          	auipc	ra,0xfffff
    80012938:	288080e7          	jalr	648(ra) # 80011bbc <_ZN9BufferCPPC1Ei>
    8001293c:	0300006f          	j	8001296c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x14c>
            printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80012940:	00002517          	auipc	a0,0x2
    80012944:	84050513          	addi	a0,a0,-1984 # 80014180 <MAX_PRIORITY+0x170>
    80012948:	fffff097          	auipc	ra,0xfffff
    8001294c:	fc8080e7          	jalr	-56(ra) # 80011910 <_Z11printStringPKc>
            return;
    80012950:	0140006f          	j	80012964 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x144>
            printString("Broj proizvodjaca mora biti veci od nula!\n");
    80012954:	00002517          	auipc	a0,0x2
    80012958:	86c50513          	addi	a0,a0,-1940 # 800141c0 <MAX_PRIORITY+0x1b0>
    8001295c:	fffff097          	auipc	ra,0xfffff
    80012960:	fb4080e7          	jalr	-76(ra) # 80011910 <_Z11printStringPKc>
            return;
    80012964:	000b8113          	mv	sp,s7
    80012968:	24c0006f          	j	80012bb4 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x394>
        waitForAll = new Semaphore(0);
    8001296c:	01000513          	li	a0,16
    80012970:	00001097          	auipc	ra,0x1
    80012974:	aa0080e7          	jalr	-1376(ra) # 80013410 <_Znwm>
    80012978:	00050493          	mv	s1,a0
    8001297c:	00050863          	beqz	a0,8001298c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x16c>
    80012980:	00000593          	li	a1,0
    80012984:	00001097          	auipc	ra,0x1
    80012988:	cc8080e7          	jalr	-824(ra) # 8001364c <_ZN9SemaphoreC1Ej>
    8001298c:	00002717          	auipc	a4,0x2
    80012990:	9ec70713          	addi	a4,a4,-1556 # 80014378 <_ZN19ConsumerProducerCPP9threadEndE>
    80012994:	00973423          	sd	s1,8(a4)
        Thread *producers[threadNum];
    80012998:	00391793          	slli	a5,s2,0x3
    8001299c:	00f78793          	addi	a5,a5,15
    800129a0:	ff07f793          	andi	a5,a5,-16
    800129a4:	40f10133          	sub	sp,sp,a5
    800129a8:	00010a13          	mv	s4,sp
        thread_data threadData[threadNum + 1];
    800129ac:	0019069b          	addiw	a3,s2,1
    800129b0:	00169793          	slli	a5,a3,0x1
    800129b4:	00d787b3          	add	a5,a5,a3
    800129b8:	00379793          	slli	a5,a5,0x3
    800129bc:	00f78793          	addi	a5,a5,15
    800129c0:	ff07f793          	andi	a5,a5,-16
    800129c4:	40f10133          	sub	sp,sp,a5
    800129c8:	00010993          	mv	s3,sp
        threadData[threadNum].id = threadNum;
    800129cc:	00191793          	slli	a5,s2,0x1
    800129d0:	012787b3          	add	a5,a5,s2
    800129d4:	00379793          	slli	a5,a5,0x3
    800129d8:	00f987b3          	add	a5,s3,a5
    800129dc:	0127a023          	sw	s2,0(a5)
        threadData[threadNum].buffer = buffer;
    800129e0:	0157b423          	sd	s5,8(a5)
        threadData[threadNum].sem = waitForAll;
    800129e4:	00873703          	ld	a4,8(a4)
    800129e8:	00e7b823          	sd	a4,16(a5)
        Thread *consumer = new Consumer(&threadData[threadNum]);
    800129ec:	01800513          	li	a0,24
    800129f0:	00001097          	auipc	ra,0x1
    800129f4:	a20080e7          	jalr	-1504(ra) # 80013410 <_Znwm>
    800129f8:	00050b13          	mv	s6,a0
    800129fc:	02050663          	beqz	a0,80012a28 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x208>
    80012a00:	00191493          	slli	s1,s2,0x1
    80012a04:	012484b3          	add	s1,s1,s2
    80012a08:	00349493          	slli	s1,s1,0x3
    80012a0c:	009984b3          	add	s1,s3,s1
        Consumer(thread_data *_td) : Thread(), td(_td) {}
    80012a10:	00001097          	auipc	ra,0x1
    80012a14:	be0080e7          	jalr	-1056(ra) # 800135f0 <_ZN6ThreadC1Ev>
    80012a18:	00002797          	auipc	a5,0x2
    80012a1c:	8a078793          	addi	a5,a5,-1888 # 800142b8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80012a20:	00fb3023          	sd	a5,0(s6) # 2000 <_entry-0x7fffe000>
    80012a24:	009b3823          	sd	s1,16(s6)
        consumer->start();
    80012a28:	000b0513          	mv	a0,s6
    80012a2c:	00001097          	auipc	ra,0x1
    80012a30:	b3c080e7          	jalr	-1220(ra) # 80013568 <_ZN6Thread5startEv>
        threadData[0].id = 0;
    80012a34:	0009a023          	sw	zero,0(s3)
        threadData[0].buffer = buffer;
    80012a38:	0159b423          	sd	s5,8(s3)
        threadData[0].sem = waitForAll;
    80012a3c:	00002797          	auipc	a5,0x2
    80012a40:	9447b783          	ld	a5,-1724(a5) # 80014380 <_ZN19ConsumerProducerCPP10waitForAllE>
    80012a44:	00f9b823          	sd	a5,16(s3)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80012a48:	01800513          	li	a0,24
    80012a4c:	00001097          	auipc	ra,0x1
    80012a50:	9c4080e7          	jalr	-1596(ra) # 80013410 <_Znwm>
    80012a54:	00050493          	mv	s1,a0
    80012a58:	00050e63          	beqz	a0,80012a74 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x254>
        ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80012a5c:	00001097          	auipc	ra,0x1
    80012a60:	b94080e7          	jalr	-1132(ra) # 800135f0 <_ZN6ThreadC1Ev>
    80012a64:	00002797          	auipc	a5,0x2
    80012a68:	80478793          	addi	a5,a5,-2044 # 80014268 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80012a6c:	00f4b023          	sd	a5,0(s1)
    80012a70:	0134b823          	sd	s3,16(s1)
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80012a74:	009a3023          	sd	s1,0(s4)
        producers[0]->start();
    80012a78:	00048513          	mv	a0,s1
    80012a7c:	00001097          	auipc	ra,0x1
    80012a80:	aec080e7          	jalr	-1300(ra) # 80013568 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80012a84:	00100493          	li	s1,1
    80012a88:	0300006f          	j	80012ab8 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x298>
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80012a8c:	00002797          	auipc	a5,0x2
    80012a90:	80478793          	addi	a5,a5,-2044 # 80014290 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80012a94:	00fc3023          	sd	a5,0(s8)
    80012a98:	019c3823          	sd	s9,16(s8)
            producers[i] = new Producer(&threadData[i]);
    80012a9c:	00349793          	slli	a5,s1,0x3
    80012aa0:	00fa07b3          	add	a5,s4,a5
    80012aa4:	0187b023          	sd	s8,0(a5)
            producers[i]->start();
    80012aa8:	000c0513          	mv	a0,s8
    80012aac:	00001097          	auipc	ra,0x1
    80012ab0:	abc080e7          	jalr	-1348(ra) # 80013568 <_ZN6Thread5startEv>
        for (int i = 1; i < threadNum; i++) {
    80012ab4:	0014849b          	addiw	s1,s1,1
    80012ab8:	0524dc63          	bge	s1,s2,80012b10 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2f0>
            threadData[i].id = i;
    80012abc:	00149793          	slli	a5,s1,0x1
    80012ac0:	009787b3          	add	a5,a5,s1
    80012ac4:	00379793          	slli	a5,a5,0x3
    80012ac8:	00f987b3          	add	a5,s3,a5
    80012acc:	0097a023          	sw	s1,0(a5)
            threadData[i].buffer = buffer;
    80012ad0:	0157b423          	sd	s5,8(a5)
            threadData[i].sem = waitForAll;
    80012ad4:	00002717          	auipc	a4,0x2
    80012ad8:	8ac73703          	ld	a4,-1876(a4) # 80014380 <_ZN19ConsumerProducerCPP10waitForAllE>
    80012adc:	00e7b823          	sd	a4,16(a5)
            producers[i] = new Producer(&threadData[i]);
    80012ae0:	01800513          	li	a0,24
    80012ae4:	00001097          	auipc	ra,0x1
    80012ae8:	92c080e7          	jalr	-1748(ra) # 80013410 <_Znwm>
    80012aec:	00050c13          	mv	s8,a0
    80012af0:	fa0506e3          	beqz	a0,80012a9c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x27c>
    80012af4:	00149c93          	slli	s9,s1,0x1
    80012af8:	009c8cb3          	add	s9,s9,s1
    80012afc:	003c9c93          	slli	s9,s9,0x3
    80012b00:	01998cb3          	add	s9,s3,s9
        Producer(thread_data *_td) : Thread(), td(_td) {}
    80012b04:	00001097          	auipc	ra,0x1
    80012b08:	aec080e7          	jalr	-1300(ra) # 800135f0 <_ZN6ThreadC1Ev>
    80012b0c:	f81ff06f          	j	80012a8c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x26c>
        Thread::dispatch();
    80012b10:	00001097          	auipc	ra,0x1
    80012b14:	a90080e7          	jalr	-1392(ra) # 800135a0 <_ZN6Thread8dispatchEv>
        for (int i = 0; i <= threadNum; i++) {
    80012b18:	00000493          	li	s1,0
    80012b1c:	00994e63          	blt	s2,s1,80012b38 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x318>
            waitForAll->wait();
    80012b20:	00002517          	auipc	a0,0x2
    80012b24:	86053503          	ld	a0,-1952(a0) # 80014380 <_ZN19ConsumerProducerCPP10waitForAllE>
    80012b28:	00001097          	auipc	ra,0x1
    80012b2c:	b74080e7          	jalr	-1164(ra) # 8001369c <_ZN9Semaphore4waitEv>
        for (int i = 0; i <= threadNum; i++) {
    80012b30:	0014849b          	addiw	s1,s1,1
    80012b34:	fe9ff06f          	j	80012b1c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x2fc>
        delete waitForAll;
    80012b38:	00002517          	auipc	a0,0x2
    80012b3c:	84853503          	ld	a0,-1976(a0) # 80014380 <_ZN19ConsumerProducerCPP10waitForAllE>
    80012b40:	00050863          	beqz	a0,80012b50 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x330>
    80012b44:	00053783          	ld	a5,0(a0)
    80012b48:	0087b783          	ld	a5,8(a5)
    80012b4c:	000780e7          	jalr	a5
        for (int i = 0; i <= threadNum; i++) {
    80012b50:	00000493          	li	s1,0
    80012b54:	0080006f          	j	80012b5c <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x33c>
        for (int i = 0; i < threadNum; i++) {
    80012b58:	0014849b          	addiw	s1,s1,1
    80012b5c:	0324d263          	bge	s1,s2,80012b80 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x360>
            delete producers[i];
    80012b60:	00349793          	slli	a5,s1,0x3
    80012b64:	00fa07b3          	add	a5,s4,a5
    80012b68:	0007b503          	ld	a0,0(a5)
    80012b6c:	fe0506e3          	beqz	a0,80012b58 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x338>
    80012b70:	00053783          	ld	a5,0(a0)
    80012b74:	0087b783          	ld	a5,8(a5)
    80012b78:	000780e7          	jalr	a5
    80012b7c:	fddff06f          	j	80012b58 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x338>
        delete consumer;
    80012b80:	000b0a63          	beqz	s6,80012b94 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x374>
    80012b84:	000b3783          	ld	a5,0(s6)
    80012b88:	0087b783          	ld	a5,8(a5)
    80012b8c:	000b0513          	mv	a0,s6
    80012b90:	000780e7          	jalr	a5
        delete buffer;
    80012b94:	000a8e63          	beqz	s5,80012bb0 <_ZN19ConsumerProducerCPP20testConsumerProducerEv+0x390>
    80012b98:	000a8513          	mv	a0,s5
    80012b9c:	fffff097          	auipc	ra,0xfffff
    80012ba0:	328080e7          	jalr	808(ra) # 80011ec4 <_ZN9BufferCPPD1Ev>
    80012ba4:	000a8513          	mv	a0,s5
    80012ba8:	00001097          	auipc	ra,0x1
    80012bac:	890080e7          	jalr	-1904(ra) # 80013438 <_ZdlPv>
    80012bb0:	000b8113          	mv	sp,s7
    }
    80012bb4:	f8040113          	addi	sp,s0,-128
    80012bb8:	07813083          	ld	ra,120(sp)
    80012bbc:	07013403          	ld	s0,112(sp)
    80012bc0:	06813483          	ld	s1,104(sp)
    80012bc4:	06013903          	ld	s2,96(sp)
    80012bc8:	05813983          	ld	s3,88(sp)
    80012bcc:	05013a03          	ld	s4,80(sp)
    80012bd0:	04813a83          	ld	s5,72(sp)
    80012bd4:	04013b03          	ld	s6,64(sp)
    80012bd8:	03813b83          	ld	s7,56(sp)
    80012bdc:	03013c03          	ld	s8,48(sp)
    80012be0:	02813c83          	ld	s9,40(sp)
    80012be4:	08010113          	addi	sp,sp,128
    80012be8:	00008067          	ret
    80012bec:	00050493          	mv	s1,a0
        BufferCPP *buffer = new BufferCPP(n);
    80012bf0:	000a8513          	mv	a0,s5
    80012bf4:	00001097          	auipc	ra,0x1
    80012bf8:	844080e7          	jalr	-1980(ra) # 80013438 <_ZdlPv>
    80012bfc:	00048513          	mv	a0,s1
    80012c00:	ffffe097          	auipc	ra,0xffffe
    80012c04:	fe8080e7          	jalr	-24(ra) # 80010be8 <_Unwind_Resume>
    80012c08:	00050913          	mv	s2,a0
        waitForAll = new Semaphore(0);
    80012c0c:	00048513          	mv	a0,s1
    80012c10:	00001097          	auipc	ra,0x1
    80012c14:	828080e7          	jalr	-2008(ra) # 80013438 <_ZdlPv>
    80012c18:	00090513          	mv	a0,s2
    80012c1c:	ffffe097          	auipc	ra,0xffffe
    80012c20:	fcc080e7          	jalr	-52(ra) # 80010be8 <_Unwind_Resume>
    80012c24:	00050493          	mv	s1,a0
        Thread *consumer = new Consumer(&threadData[threadNum]);
    80012c28:	000b0513          	mv	a0,s6
    80012c2c:	00001097          	auipc	ra,0x1
    80012c30:	80c080e7          	jalr	-2036(ra) # 80013438 <_ZdlPv>
    80012c34:	00048513          	mv	a0,s1
    80012c38:	ffffe097          	auipc	ra,0xffffe
    80012c3c:	fb0080e7          	jalr	-80(ra) # 80010be8 <_Unwind_Resume>
    80012c40:	00050913          	mv	s2,a0
        producers[0] = new ProducerKeyborad(&threadData[0]);
    80012c44:	00048513          	mv	a0,s1
    80012c48:	00000097          	auipc	ra,0x0
    80012c4c:	7f0080e7          	jalr	2032(ra) # 80013438 <_ZdlPv>
    80012c50:	00090513          	mv	a0,s2
    80012c54:	ffffe097          	auipc	ra,0xffffe
    80012c58:	f94080e7          	jalr	-108(ra) # 80010be8 <_Unwind_Resume>
    80012c5c:	00050493          	mv	s1,a0
            producers[i] = new Producer(&threadData[i]);
    80012c60:	000c0513          	mv	a0,s8
    80012c64:	00000097          	auipc	ra,0x0
    80012c68:	7d4080e7          	jalr	2004(ra) # 80013438 <_ZdlPv>
    80012c6c:	00048513          	mv	a0,s1
    80012c70:	ffffe097          	auipc	ra,0xffffe
    80012c74:	f78080e7          	jalr	-136(ra) # 80010be8 <_Unwind_Resume>

0000000080012c78 <_Z8userMainv>:
    long id;
    bool finished;
};


void userMain() {
    80012c78:	fc010113          	addi	sp,sp,-64
    80012c7c:	02113c23          	sd	ra,56(sp)
    80012c80:	02813823          	sd	s0,48(sp)
    80012c84:	02913423          	sd	s1,40(sp)
    80012c88:	04010413          	addi	s0,sp,64
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    80012c8c:	fc040493          	addi	s1,s0,-64
    80012c90:	00048513          	mv	a0,s1
    80012c94:	00001097          	auipc	ra,0x1
    80012c98:	95c080e7          	jalr	-1700(ra) # 800135f0 <_ZN6ThreadC1Ev>
    80012c9c:	00001797          	auipc	a5,0x1
    80012ca0:	64478793          	addi	a5,a5,1604 # 800142e0 <_ZTV10ForkThread+0x10>
    80012ca4:	fcf43023          	sd	a5,-64(s0)
    80012ca8:	00100793          	li	a5,1
    80012cac:	fcf43823          	sd	a5,-48(s0)
    80012cb0:	fc040c23          	sb	zero,-40(s0)
    ForkThread thread(1);

    thread.start();
    80012cb4:	00048513          	mv	a0,s1
    80012cb8:	00001097          	auipc	ra,0x1
    80012cbc:	8b0080e7          	jalr	-1872(ra) # 80013568 <_ZN6Thread5startEv>
        return finished;
    80012cc0:	fd844783          	lbu	a5,-40(s0)

    while (!thread.isFinished()) {
    80012cc4:	00079863          	bnez	a5,80012cd4 <_Z8userMainv+0x5c>
        thread_dispatch();
    80012cc8:	ffffe097          	auipc	ra,0xffffe
    80012ccc:	6a8080e7          	jalr	1704(ra) # 80011370 <_Z15thread_dispatchv>
    80012cd0:	ff1ff06f          	j	80012cc0 <_Z8userMainv+0x48>
    }

    printstring("User main finished\n");
    80012cd4:	00001517          	auipc	a0,0x1
    80012cd8:	51c50513          	addi	a0,a0,1308 # 800141f0 <MAX_PRIORITY+0x1e0>
    80012cdc:	fffff097          	auipc	ra,0xfffff
    80012ce0:	348080e7          	jalr	840(ra) # 80012024 <_Z11printstringPKc>
class ForkThread : public Thread {
    80012ce4:	00001797          	auipc	a5,0x1
    80012ce8:	5fc78793          	addi	a5,a5,1532 # 800142e0 <_ZTV10ForkThread+0x10>
    80012cec:	fcf43023          	sd	a5,-64(s0)
    80012cf0:	fc040513          	addi	a0,s0,-64
    80012cf4:	00000097          	auipc	ra,0x0
    80012cf8:	63c080e7          	jalr	1596(ra) # 80013330 <_ZN6ThreadD1Ev>
    80012cfc:	03813083          	ld	ra,56(sp)
    80012d00:	03013403          	ld	s0,48(sp)
    80012d04:	02813483          	ld	s1,40(sp)
    80012d08:	04010113          	addi	sp,sp,64
    80012d0c:	00008067          	ret
    80012d10:	00050493          	mv	s1,a0
class ForkThread : public Thread {
    80012d14:	00001797          	auipc	a5,0x1
    80012d18:	5cc78793          	addi	a5,a5,1484 # 800142e0 <_ZTV10ForkThread+0x10>
    80012d1c:	fcf43023          	sd	a5,-64(s0)
    80012d20:	fc040513          	addi	a0,s0,-64
    80012d24:	00000097          	auipc	ra,0x0
    80012d28:	60c080e7          	jalr	1548(ra) # 80013330 <_ZN6ThreadD1Ev>
    80012d2c:	00048513          	mv	a0,s1
    80012d30:	ffffe097          	auipc	ra,0xffffe
    80012d34:	eb8080e7          	jalr	-328(ra) # 80010be8 <_Unwind_Resume>

0000000080012d38 <_ZN19ConsumerProducerCPP8Consumer3runEv>:
        void run() override {
    80012d38:	fd010113          	addi	sp,sp,-48
    80012d3c:	02113423          	sd	ra,40(sp)
    80012d40:	02813023          	sd	s0,32(sp)
    80012d44:	00913c23          	sd	s1,24(sp)
    80012d48:	01213823          	sd	s2,16(sp)
    80012d4c:	01313423          	sd	s3,8(sp)
    80012d50:	03010413          	addi	s0,sp,48
    80012d54:	00050913          	mv	s2,a0
            int i = 0;
    80012d58:	00000993          	li	s3,0
    80012d5c:	0100006f          	j	80012d6c <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
                    Console::putc('\n');
    80012d60:	00a00513          	li	a0,10
    80012d64:	00001097          	auipc	ra,0x1
    80012d68:	a48080e7          	jalr	-1464(ra) # 800137ac <_ZN7Console4putcEc>
            while (!threadEnd) {
    80012d6c:	00001797          	auipc	a5,0x1
    80012d70:	60c7a783          	lw	a5,1548(a5) # 80014378 <_ZN19ConsumerProducerCPP9threadEndE>
    80012d74:	04079a63          	bnez	a5,80012dc8 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x90>
                int key = td->buffer->get();
    80012d78:	01093783          	ld	a5,16(s2)
    80012d7c:	0087b503          	ld	a0,8(a5)
    80012d80:	fffff097          	auipc	ra,0xfffff
    80012d84:	030080e7          	jalr	48(ra) # 80011db0 <_ZN9BufferCPP3getEv>
                i++;
    80012d88:	0019849b          	addiw	s1,s3,1
    80012d8c:	0004899b          	sext.w	s3,s1
                Console::putc(key);
    80012d90:	0ff57513          	andi	a0,a0,255
    80012d94:	00001097          	auipc	ra,0x1
    80012d98:	a18080e7          	jalr	-1512(ra) # 800137ac <_ZN7Console4putcEc>
                if (i % 80 == 0) {
    80012d9c:	05000793          	li	a5,80
    80012da0:	02f4e4bb          	remw	s1,s1,a5
    80012da4:	fc0494e3          	bnez	s1,80012d6c <_ZN19ConsumerProducerCPP8Consumer3runEv+0x34>
    80012da8:	fb9ff06f          	j	80012d60 <_ZN19ConsumerProducerCPP8Consumer3runEv+0x28>
                int key = td->buffer->get();
    80012dac:	01093783          	ld	a5,16(s2)
    80012db0:	0087b503          	ld	a0,8(a5)
    80012db4:	fffff097          	auipc	ra,0xfffff
    80012db8:	ffc080e7          	jalr	-4(ra) # 80011db0 <_ZN9BufferCPP3getEv>
                Console::putc(key);
    80012dbc:	0ff57513          	andi	a0,a0,255
    80012dc0:	00001097          	auipc	ra,0x1
    80012dc4:	9ec080e7          	jalr	-1556(ra) # 800137ac <_ZN7Console4putcEc>
            while (td->buffer->getCnt() > 0) {
    80012dc8:	01093783          	ld	a5,16(s2)
    80012dcc:	0087b503          	ld	a0,8(a5)
    80012dd0:	fffff097          	auipc	ra,0xfffff
    80012dd4:	06c080e7          	jalr	108(ra) # 80011e3c <_ZN9BufferCPP6getCntEv>
    80012dd8:	fca04ae3          	bgtz	a0,80012dac <_ZN19ConsumerProducerCPP8Consumer3runEv+0x74>
            td->sem->signal();
    80012ddc:	01093783          	ld	a5,16(s2)
    80012de0:	0107b503          	ld	a0,16(a5)
    80012de4:	00001097          	auipc	ra,0x1
    80012de8:	8f0080e7          	jalr	-1808(ra) # 800136d4 <_ZN9Semaphore6signalEv>
        }
    80012dec:	02813083          	ld	ra,40(sp)
    80012df0:	02013403          	ld	s0,32(sp)
    80012df4:	01813483          	ld	s1,24(sp)
    80012df8:	01013903          	ld	s2,16(sp)
    80012dfc:	00813983          	ld	s3,8(sp)
    80012e00:	03010113          	addi	sp,sp,48
    80012e04:	00008067          	ret

0000000080012e08 <_ZN19ConsumerProducerCPP8ConsumerD1Ev>:
    class Consumer : public Thread {
    80012e08:	ff010113          	addi	sp,sp,-16
    80012e0c:	00113423          	sd	ra,8(sp)
    80012e10:	00813023          	sd	s0,0(sp)
    80012e14:	01010413          	addi	s0,sp,16
    80012e18:	00001797          	auipc	a5,0x1
    80012e1c:	4a078793          	addi	a5,a5,1184 # 800142b8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80012e20:	00f53023          	sd	a5,0(a0)
    80012e24:	00000097          	auipc	ra,0x0
    80012e28:	50c080e7          	jalr	1292(ra) # 80013330 <_ZN6ThreadD1Ev>
    80012e2c:	00813083          	ld	ra,8(sp)
    80012e30:	00013403          	ld	s0,0(sp)
    80012e34:	01010113          	addi	sp,sp,16
    80012e38:	00008067          	ret

0000000080012e3c <_ZN19ConsumerProducerCPP8ConsumerD0Ev>:
    80012e3c:	fe010113          	addi	sp,sp,-32
    80012e40:	00113c23          	sd	ra,24(sp)
    80012e44:	00813823          	sd	s0,16(sp)
    80012e48:	00913423          	sd	s1,8(sp)
    80012e4c:	02010413          	addi	s0,sp,32
    80012e50:	00050493          	mv	s1,a0
    80012e54:	00001797          	auipc	a5,0x1
    80012e58:	46478793          	addi	a5,a5,1124 # 800142b8 <_ZTVN19ConsumerProducerCPP8ConsumerE+0x10>
    80012e5c:	00f53023          	sd	a5,0(a0)
    80012e60:	00000097          	auipc	ra,0x0
    80012e64:	4d0080e7          	jalr	1232(ra) # 80013330 <_ZN6ThreadD1Ev>
    80012e68:	00048513          	mv	a0,s1
    80012e6c:	00000097          	auipc	ra,0x0
    80012e70:	5cc080e7          	jalr	1484(ra) # 80013438 <_ZdlPv>
    80012e74:	01813083          	ld	ra,24(sp)
    80012e78:	01013403          	ld	s0,16(sp)
    80012e7c:	00813483          	ld	s1,8(sp)
    80012e80:	02010113          	addi	sp,sp,32
    80012e84:	00008067          	ret

0000000080012e88 <_ZN19ConsumerProducerCPP16ProducerKeyboradD1Ev>:
    class ProducerKeyborad : public Thread {
    80012e88:	ff010113          	addi	sp,sp,-16
    80012e8c:	00113423          	sd	ra,8(sp)
    80012e90:	00813023          	sd	s0,0(sp)
    80012e94:	01010413          	addi	s0,sp,16
    80012e98:	00001797          	auipc	a5,0x1
    80012e9c:	3d078793          	addi	a5,a5,976 # 80014268 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80012ea0:	00f53023          	sd	a5,0(a0)
    80012ea4:	00000097          	auipc	ra,0x0
    80012ea8:	48c080e7          	jalr	1164(ra) # 80013330 <_ZN6ThreadD1Ev>
    80012eac:	00813083          	ld	ra,8(sp)
    80012eb0:	00013403          	ld	s0,0(sp)
    80012eb4:	01010113          	addi	sp,sp,16
    80012eb8:	00008067          	ret

0000000080012ebc <_ZN19ConsumerProducerCPP16ProducerKeyboradD0Ev>:
    80012ebc:	fe010113          	addi	sp,sp,-32
    80012ec0:	00113c23          	sd	ra,24(sp)
    80012ec4:	00813823          	sd	s0,16(sp)
    80012ec8:	00913423          	sd	s1,8(sp)
    80012ecc:	02010413          	addi	s0,sp,32
    80012ed0:	00050493          	mv	s1,a0
    80012ed4:	00001797          	auipc	a5,0x1
    80012ed8:	39478793          	addi	a5,a5,916 # 80014268 <_ZTVN19ConsumerProducerCPP16ProducerKeyboradE+0x10>
    80012edc:	00f53023          	sd	a5,0(a0)
    80012ee0:	00000097          	auipc	ra,0x0
    80012ee4:	450080e7          	jalr	1104(ra) # 80013330 <_ZN6ThreadD1Ev>
    80012ee8:	00048513          	mv	a0,s1
    80012eec:	00000097          	auipc	ra,0x0
    80012ef0:	54c080e7          	jalr	1356(ra) # 80013438 <_ZdlPv>
    80012ef4:	01813083          	ld	ra,24(sp)
    80012ef8:	01013403          	ld	s0,16(sp)
    80012efc:	00813483          	ld	s1,8(sp)
    80012f00:	02010113          	addi	sp,sp,32
    80012f04:	00008067          	ret

0000000080012f08 <_ZN19ConsumerProducerCPP8ProducerD1Ev>:
    class Producer : public Thread {
    80012f08:	ff010113          	addi	sp,sp,-16
    80012f0c:	00113423          	sd	ra,8(sp)
    80012f10:	00813023          	sd	s0,0(sp)
    80012f14:	01010413          	addi	s0,sp,16
    80012f18:	00001797          	auipc	a5,0x1
    80012f1c:	37878793          	addi	a5,a5,888 # 80014290 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80012f20:	00f53023          	sd	a5,0(a0)
    80012f24:	00000097          	auipc	ra,0x0
    80012f28:	40c080e7          	jalr	1036(ra) # 80013330 <_ZN6ThreadD1Ev>
    80012f2c:	00813083          	ld	ra,8(sp)
    80012f30:	00013403          	ld	s0,0(sp)
    80012f34:	01010113          	addi	sp,sp,16
    80012f38:	00008067          	ret

0000000080012f3c <_ZN19ConsumerProducerCPP8ProducerD0Ev>:
    80012f3c:	fe010113          	addi	sp,sp,-32
    80012f40:	00113c23          	sd	ra,24(sp)
    80012f44:	00813823          	sd	s0,16(sp)
    80012f48:	00913423          	sd	s1,8(sp)
    80012f4c:	02010413          	addi	s0,sp,32
    80012f50:	00050493          	mv	s1,a0
    80012f54:	00001797          	auipc	a5,0x1
    80012f58:	33c78793          	addi	a5,a5,828 # 80014290 <_ZTVN19ConsumerProducerCPP8ProducerE+0x10>
    80012f5c:	00f53023          	sd	a5,0(a0)
    80012f60:	00000097          	auipc	ra,0x0
    80012f64:	3d0080e7          	jalr	976(ra) # 80013330 <_ZN6ThreadD1Ev>
    80012f68:	00048513          	mv	a0,s1
    80012f6c:	00000097          	auipc	ra,0x0
    80012f70:	4cc080e7          	jalr	1228(ra) # 80013438 <_ZdlPv>
    80012f74:	01813083          	ld	ra,24(sp)
    80012f78:	01013403          	ld	s0,16(sp)
    80012f7c:	00813483          	ld	s1,8(sp)
    80012f80:	02010113          	addi	sp,sp,32
    80012f84:	00008067          	ret

0000000080012f88 <_ZN10ForkThreadD1Ev>:
    80012f88:	ff010113          	addi	sp,sp,-16
    80012f8c:	00113423          	sd	ra,8(sp)
    80012f90:	00813023          	sd	s0,0(sp)
    80012f94:	01010413          	addi	s0,sp,16
    80012f98:	00001797          	auipc	a5,0x1
    80012f9c:	34878793          	addi	a5,a5,840 # 800142e0 <_ZTV10ForkThread+0x10>
    80012fa0:	00f53023          	sd	a5,0(a0)
    80012fa4:	00000097          	auipc	ra,0x0
    80012fa8:	38c080e7          	jalr	908(ra) # 80013330 <_ZN6ThreadD1Ev>
    80012fac:	00813083          	ld	ra,8(sp)
    80012fb0:	00013403          	ld	s0,0(sp)
    80012fb4:	01010113          	addi	sp,sp,16
    80012fb8:	00008067          	ret

0000000080012fbc <_ZN10ForkThreadD0Ev>:
    80012fbc:	fe010113          	addi	sp,sp,-32
    80012fc0:	00113c23          	sd	ra,24(sp)
    80012fc4:	00813823          	sd	s0,16(sp)
    80012fc8:	00913423          	sd	s1,8(sp)
    80012fcc:	02010413          	addi	s0,sp,32
    80012fd0:	00050493          	mv	s1,a0
    80012fd4:	00001797          	auipc	a5,0x1
    80012fd8:	30c78793          	addi	a5,a5,780 # 800142e0 <_ZTV10ForkThread+0x10>
    80012fdc:	00f53023          	sd	a5,0(a0)
    80012fe0:	00000097          	auipc	ra,0x0
    80012fe4:	350080e7          	jalr	848(ra) # 80013330 <_ZN6ThreadD1Ev>
    80012fe8:	00048513          	mv	a0,s1
    80012fec:	00000097          	auipc	ra,0x0
    80012ff0:	44c080e7          	jalr	1100(ra) # 80013438 <_ZdlPv>
    80012ff4:	01813083          	ld	ra,24(sp)
    80012ff8:	01013403          	ld	s0,16(sp)
    80012ffc:	00813483          	ld	s1,8(sp)
    80013000:	02010113          	addi	sp,sp,32
    80013004:	00008067          	ret

0000000080013008 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv>:
        void run() override {
    80013008:	fe010113          	addi	sp,sp,-32
    8001300c:	00113c23          	sd	ra,24(sp)
    80013010:	00813823          	sd	s0,16(sp)
    80013014:	00913423          	sd	s1,8(sp)
    80013018:	02010413          	addi	s0,sp,32
    8001301c:	00050493          	mv	s1,a0
            while ((key = getc()) != 0x1b) {
    80013020:	fffff097          	auipc	ra,0xfffff
    80013024:	85c080e7          	jalr	-1956(ra) # 8001187c <_Z4getcv>
    80013028:	0005059b          	sext.w	a1,a0
    8001302c:	01b00793          	li	a5,27
    80013030:	00f58c63          	beq	a1,a5,80013048 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x40>
                td->buffer->put(key);
    80013034:	0104b783          	ld	a5,16(s1)
    80013038:	0087b503          	ld	a0,8(a5)
    8001303c:	fffff097          	auipc	ra,0xfffff
    80013040:	ce4080e7          	jalr	-796(ra) # 80011d20 <_ZN9BufferCPP3putEi>
            while ((key = getc()) != 0x1b) {
    80013044:	fddff06f          	j	80013020 <_ZN19ConsumerProducerCPP16ProducerKeyborad3runEv+0x18>
            threadEnd = 1;
    80013048:	00100793          	li	a5,1
    8001304c:	00001717          	auipc	a4,0x1
    80013050:	32f72623          	sw	a5,812(a4) # 80014378 <_ZN19ConsumerProducerCPP9threadEndE>
            td->buffer->put('!');
    80013054:	0104b783          	ld	a5,16(s1)
    80013058:	02100593          	li	a1,33
    8001305c:	0087b503          	ld	a0,8(a5)
    80013060:	fffff097          	auipc	ra,0xfffff
    80013064:	cc0080e7          	jalr	-832(ra) # 80011d20 <_ZN9BufferCPP3putEi>
            td->sem->signal();
    80013068:	0104b783          	ld	a5,16(s1)
    8001306c:	0107b503          	ld	a0,16(a5)
    80013070:	00000097          	auipc	ra,0x0
    80013074:	664080e7          	jalr	1636(ra) # 800136d4 <_ZN9Semaphore6signalEv>
        }
    80013078:	01813083          	ld	ra,24(sp)
    8001307c:	01013403          	ld	s0,16(sp)
    80013080:	00813483          	ld	s1,8(sp)
    80013084:	02010113          	addi	sp,sp,32
    80013088:	00008067          	ret

000000008001308c <_ZN19ConsumerProducerCPP8Producer3runEv>:
        void run() override {
    8001308c:	fe010113          	addi	sp,sp,-32
    80013090:	00113c23          	sd	ra,24(sp)
    80013094:	00813823          	sd	s0,16(sp)
    80013098:	00913423          	sd	s1,8(sp)
    8001309c:	01213023          	sd	s2,0(sp)
    800130a0:	02010413          	addi	s0,sp,32
    800130a4:	00050493          	mv	s1,a0
            int i = 0;
    800130a8:	00000913          	li	s2,0
            while (!threadEnd) {
    800130ac:	00001797          	auipc	a5,0x1
    800130b0:	2cc7a783          	lw	a5,716(a5) # 80014378 <_ZN19ConsumerProducerCPP9threadEndE>
    800130b4:	04079263          	bnez	a5,800130f8 <_ZN19ConsumerProducerCPP8Producer3runEv+0x6c>
                td->buffer->put(td->id + '0');
    800130b8:	0104b783          	ld	a5,16(s1)
    800130bc:	0007a583          	lw	a1,0(a5)
    800130c0:	0305859b          	addiw	a1,a1,48
    800130c4:	0087b503          	ld	a0,8(a5)
    800130c8:	fffff097          	auipc	ra,0xfffff
    800130cc:	c58080e7          	jalr	-936(ra) # 80011d20 <_ZN9BufferCPP3putEi>
                i++;
    800130d0:	0019071b          	addiw	a4,s2,1
    800130d4:	0007091b          	sext.w	s2,a4
                Thread::sleep((i+td->id)%5);
    800130d8:	0104b783          	ld	a5,16(s1)
    800130dc:	0007a783          	lw	a5,0(a5)
    800130e0:	00e787bb          	addw	a5,a5,a4
    800130e4:	00500513          	li	a0,5
    800130e8:	02a7e53b          	remw	a0,a5,a0
    800130ec:	00000097          	auipc	ra,0x0
    800130f0:	4dc080e7          	jalr	1244(ra) # 800135c8 <_ZN6Thread5sleepEm>
            while (!threadEnd) {
    800130f4:	fb9ff06f          	j	800130ac <_ZN19ConsumerProducerCPP8Producer3runEv+0x20>
            td->sem->signal();
    800130f8:	0104b783          	ld	a5,16(s1)
    800130fc:	0107b503          	ld	a0,16(a5)
    80013100:	00000097          	auipc	ra,0x0
    80013104:	5d4080e7          	jalr	1492(ra) # 800136d4 <_ZN9Semaphore6signalEv>
        }
    80013108:	01813083          	ld	ra,24(sp)
    8001310c:	01013403          	ld	s0,16(sp)
    80013110:	00813483          	ld	s1,8(sp)
    80013114:	00013903          	ld	s2,0(sp)
    80013118:	02010113          	addi	sp,sp,32
    8001311c:	00008067          	ret

0000000080013120 <_ZN10ForkThread3runEv>:
    virtual void run() {
    80013120:	fc010113          	addi	sp,sp,-64
    80013124:	02113c23          	sd	ra,56(sp)
    80013128:	02813823          	sd	s0,48(sp)
    8001312c:	02913423          	sd	s1,40(sp)
    80013130:	03213023          	sd	s2,32(sp)
    80013134:	01313c23          	sd	s3,24(sp)
    80013138:	01413823          	sd	s4,16(sp)
    8001313c:	01513423          	sd	s5,8(sp)
    80013140:	01613023          	sd	s6,0(sp)
    80013144:	04010413          	addi	s0,sp,64
    80013148:	00050a13          	mv	s4,a0
        printstring("Started thread id: "); printNum(id); printstring("\n");
    8001314c:	00001517          	auipc	a0,0x1
    80013150:	0bc50513          	addi	a0,a0,188 # 80014208 <MAX_PRIORITY+0x1f8>
    80013154:	fffff097          	auipc	ra,0xfffff
    80013158:	ed0080e7          	jalr	-304(ra) # 80012024 <_Z11printstringPKc>
    8001315c:	010a3503          	ld	a0,16(s4)
    80013160:	fffff097          	auipc	ra,0xfffff
    80013164:	f08080e7          	jalr	-248(ra) # 80012068 <_Z8printNumm>
    80013168:	00001517          	auipc	a0,0x1
    8001316c:	f0050513          	addi	a0,a0,-256 # 80014068 <MAX_PRIORITY+0x58>
    80013170:	fffff097          	auipc	ra,0xfffff
    80013174:	eb4080e7          	jalr	-332(ra) # 80012024 <_Z11printstringPKc>
        ForkThread* thread = new ForkThread(id + 1);
    80013178:	02000513          	li	a0,32
    8001317c:	00000097          	auipc	ra,0x0
    80013180:	294080e7          	jalr	660(ra) # 80013410 <_Znwm>
    80013184:	00050993          	mv	s3,a0
    80013188:	02050463          	beqz	a0,800131b0 <_ZN10ForkThread3runEv+0x90>
    8001318c:	010a3483          	ld	s1,16(s4)
    80013190:	00148493          	addi	s1,s1,1
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    80013194:	00000097          	auipc	ra,0x0
    80013198:	45c080e7          	jalr	1116(ra) # 800135f0 <_ZN6ThreadC1Ev>
    8001319c:	00001797          	auipc	a5,0x1
    800131a0:	14478793          	addi	a5,a5,324 # 800142e0 <_ZTV10ForkThread+0x10>
    800131a4:	00f9b023          	sd	a5,0(s3)
    800131a8:	0099b823          	sd	s1,16(s3)
    800131ac:	00098c23          	sb	zero,24(s3)
        ForkThread** threads = (ForkThread** ) mem_alloc(sizeof(ForkThread*) * id);
    800131b0:	010a3503          	ld	a0,16(s4)
    800131b4:	00351513          	slli	a0,a0,0x3
    800131b8:	ffffe097          	auipc	ra,0xffffe
    800131bc:	f58080e7          	jalr	-168(ra) # 80011110 <_Z9mem_allocm>
    800131c0:	00050a93          	mv	s5,a0
        if (threads != nullptr) {
    800131c4:	10050863          	beqz	a0,800132d4 <_ZN10ForkThread3runEv+0x1b4>
            for (long i = 0; i < id; i++) {
    800131c8:	00000913          	li	s2,0
    800131cc:	0140006f          	j	800131e0 <_ZN10ForkThread3runEv+0xc0>
                threads[i] = new ForkThread(id);
    800131d0:	00391793          	slli	a5,s2,0x3
    800131d4:	00fa87b3          	add	a5,s5,a5
    800131d8:	0097b023          	sd	s1,0(a5)
            for (long i = 0; i < id; i++) {
    800131dc:	00190913          	addi	s2,s2,1
    800131e0:	010a3783          	ld	a5,16(s4)
    800131e4:	02f95e63          	bge	s2,a5,80013220 <_ZN10ForkThread3runEv+0x100>
                threads[i] = new ForkThread(id);
    800131e8:	02000513          	li	a0,32
    800131ec:	00000097          	auipc	ra,0x0
    800131f0:	224080e7          	jalr	548(ra) # 80013410 <_Znwm>
    800131f4:	00050493          	mv	s1,a0
    800131f8:	fc050ce3          	beqz	a0,800131d0 <_ZN10ForkThread3runEv+0xb0>
    800131fc:	010a3b03          	ld	s6,16(s4)
    ForkThread(long _id) noexcept : Thread(), id(_id), finished(false) {}
    80013200:	00000097          	auipc	ra,0x0
    80013204:	3f0080e7          	jalr	1008(ra) # 800135f0 <_ZN6ThreadC1Ev>
    80013208:	00001797          	auipc	a5,0x1
    8001320c:	0d878793          	addi	a5,a5,216 # 800142e0 <_ZTV10ForkThread+0x10>
    80013210:	00f4b023          	sd	a5,0(s1)
    80013214:	0164b823          	sd	s6,16(s1)
    80013218:	00048c23          	sb	zero,24(s1)
    8001321c:	fb5ff06f          	j	800131d0 <_ZN10ForkThread3runEv+0xb0>
            if (thread != nullptr) {
    80013220:	06098a63          	beqz	s3,80013294 <_ZN10ForkThread3runEv+0x174>
                if (thread->start() == 0) {
    80013224:	00098513          	mv	a0,s3
    80013228:	00000097          	auipc	ra,0x0
    8001322c:	340080e7          	jalr	832(ra) # 80013568 <_ZN6Thread5startEv>
    80013230:	00050913          	mv	s2,a0
    80013234:	04051863          	bnez	a0,80013284 <_ZN10ForkThread3runEv+0x164>
                    for (int i = 0; i < 5000; i++) {
    80013238:	00050493          	mv	s1,a0
    8001323c:	0100006f          	j	8001324c <_ZN10ForkThread3runEv+0x12c>
                        thread_dispatch();
    80013240:	ffffe097          	auipc	ra,0xffffe
    80013244:	130080e7          	jalr	304(ra) # 80011370 <_Z15thread_dispatchv>
                    for (int i = 0; i < 5000; i++) {
    80013248:	0014849b          	addiw	s1,s1,1
    8001324c:	000017b7          	lui	a5,0x1
    80013250:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80013254:	0097ce63          	blt	a5,s1,80013270 <_ZN10ForkThread3runEv+0x150>
                        for (int j = 0; j < 5000; j++) {
    80013258:	00090713          	mv	a4,s2
    8001325c:	000017b7          	lui	a5,0x1
    80013260:	38778793          	addi	a5,a5,903 # 1387 <_entry-0x7fffec79>
    80013264:	fce7cee3          	blt	a5,a4,80013240 <_ZN10ForkThread3runEv+0x120>
    80013268:	0017071b          	addiw	a4,a4,1
    8001326c:	ff1ff06f          	j	8001325c <_ZN10ForkThread3runEv+0x13c>
        return finished;
    80013270:	0189c783          	lbu	a5,24(s3)
                    while (!thread->isFinished()) {
    80013274:	00079863          	bnez	a5,80013284 <_ZN10ForkThread3runEv+0x164>
                        thread_dispatch();
    80013278:	ffffe097          	auipc	ra,0xffffe
    8001327c:	0f8080e7          	jalr	248(ra) # 80011370 <_Z15thread_dispatchv>
                    while (!thread->isFinished()) {
    80013280:	ff1ff06f          	j	80013270 <_ZN10ForkThread3runEv+0x150>
                delete thread;
    80013284:	0009b783          	ld	a5,0(s3)
    80013288:	0087b783          	ld	a5,8(a5)
    8001328c:	00098513          	mv	a0,s3
    80013290:	000780e7          	jalr	a5
                        for (int j = 0; j < 5000; j++) {
    80013294:	00000493          	li	s1,0
    80013298:	0080006f          	j	800132a0 <_ZN10ForkThread3runEv+0x180>
            for (long i = 0; i < id; i++) {
    8001329c:	00148493          	addi	s1,s1,1
    800132a0:	010a3783          	ld	a5,16(s4)
    800132a4:	02f4d263          	bge	s1,a5,800132c8 <_ZN10ForkThread3runEv+0x1a8>
                if (threads[i]) delete threads[i];
    800132a8:	00349793          	slli	a5,s1,0x3
    800132ac:	00fa87b3          	add	a5,s5,a5
    800132b0:	0007b503          	ld	a0,0(a5)
    800132b4:	fe0504e3          	beqz	a0,8001329c <_ZN10ForkThread3runEv+0x17c>
    800132b8:	00053783          	ld	a5,0(a0)
    800132bc:	0087b783          	ld	a5,8(a5)
    800132c0:	000780e7          	jalr	a5
    800132c4:	fd9ff06f          	j	8001329c <_ZN10ForkThread3runEv+0x17c>
            mem_free(threads);
    800132c8:	000a8513          	mv	a0,s5
    800132cc:	ffffe097          	auipc	ra,0xffffe
    800132d0:	e8c080e7          	jalr	-372(ra) # 80011158 <_Z8mem_freePv>
        printstring("Finished thread id: "); printNum(id); printstring("\n");
    800132d4:	00001517          	auipc	a0,0x1
    800132d8:	f4c50513          	addi	a0,a0,-180 # 80014220 <MAX_PRIORITY+0x210>
    800132dc:	fffff097          	auipc	ra,0xfffff
    800132e0:	d48080e7          	jalr	-696(ra) # 80012024 <_Z11printstringPKc>
    800132e4:	010a3503          	ld	a0,16(s4)
    800132e8:	fffff097          	auipc	ra,0xfffff
    800132ec:	d80080e7          	jalr	-640(ra) # 80012068 <_Z8printNumm>
    800132f0:	00001517          	auipc	a0,0x1
    800132f4:	d7850513          	addi	a0,a0,-648 # 80014068 <MAX_PRIORITY+0x58>
    800132f8:	fffff097          	auipc	ra,0xfffff
    800132fc:	d2c080e7          	jalr	-724(ra) # 80012024 <_Z11printstringPKc>
        finished = true;
    80013300:	00100793          	li	a5,1
    80013304:	00fa0c23          	sb	a5,24(s4)
    }
    80013308:	03813083          	ld	ra,56(sp)
    8001330c:	03013403          	ld	s0,48(sp)
    80013310:	02813483          	ld	s1,40(sp)
    80013314:	02013903          	ld	s2,32(sp)
    80013318:	01813983          	ld	s3,24(sp)
    8001331c:	01013a03          	ld	s4,16(sp)
    80013320:	00813a83          	ld	s5,8(sp)
    80013324:	00013b03          	ld	s6,0(sp)
    80013328:	04010113          	addi	sp,sp,64
    8001332c:	00008067          	ret

0000000080013330 <_ZN6ThreadD1Ev>:


Thread::Thread(void (*body)(void*), void*arg) {
    thread_create(&myHandle, body, arg, DEFAULT_STACK_SIZE, NORM_PRIORITY, 0);
}
Thread::~Thread() {}
    80013330:	ff010113          	addi	sp,sp,-16
    80013334:	00813423          	sd	s0,8(sp)
    80013338:	01010413          	addi	s0,sp,16
    8001333c:	00813403          	ld	s0,8(sp)
    80013340:	01010113          	addi	sp,sp,16
    80013344:	00008067          	ret

0000000080013348 <_ZN6Thread7wrapperEPv>:
    return time_sleep(time);
}
Thread::Thread() {
    thread_create(&myHandle, &wrapper, (void*)this, DEFAULT_STACK_SIZE, NORM_PRIORITY, 0);
}
void Thread::wrapper(void* obj) {
    80013348:	ff010113          	addi	sp,sp,-16
    8001334c:	00113423          	sd	ra,8(sp)
    80013350:	00813023          	sd	s0,0(sp)
    80013354:	01010413          	addi	s0,sp,16
    Thread* t = (Thread*)obj;
    t->run();
    80013358:	00053783          	ld	a5,0(a0)
    8001335c:	0107b783          	ld	a5,16(a5)
    80013360:	000780e7          	jalr	a5
}
    80013364:	00813083          	ld	ra,8(sp)
    80013368:	00013403          	ld	s0,0(sp)
    8001336c:	01010113          	addi	sp,sp,16
    80013370:	00008067          	ret

0000000080013374 <_ZN14PeriodicThread3runEv>:

PeriodicThread::PeriodicThread(time_t period) {
    periodList::add(this, period);
    return;
}
void PeriodicThread::run() {
    80013374:	fe010113          	addi	sp,sp,-32
    80013378:	00113c23          	sd	ra,24(sp)
    8001337c:	00813823          	sd	s0,16(sp)
    80013380:	00913423          	sd	s1,8(sp)
    80013384:	02010413          	addi	s0,sp,32
    80013388:	00050493          	mv	s1,a0
    8001338c:	0180006f          	j	800133a4 <_ZN14PeriodicThread3runEv+0x30>
            if (cur->owner == owner) return cur->period;
    80013390:	0087b503          	ld	a0,8(a5)
    80013394:	0080006f          	j	8001339c <_ZN14PeriodicThread3runEv+0x28>
        return 0;
    80013398:	00000513          	li	a0,0
    while(1) {
        periodicActivation();
        time_sleep(periodList::findPeriod(this));
    8001339c:	ffffe097          	auipc	ra,0xffffe
    800133a0:	448080e7          	jalr	1096(ra) # 800117e4 <_Z10time_sleepm>
        periodicActivation();
    800133a4:	0004b783          	ld	a5,0(s1)
    800133a8:	0187b783          	ld	a5,24(a5)
    800133ac:	00048513          	mv	a0,s1
    800133b0:	000780e7          	jalr	a5
        periodList* cur = head;
    800133b4:	00001797          	auipc	a5,0x1
    800133b8:	fd47b783          	ld	a5,-44(a5) # 80014388 <_ZN10periodList4headE>
        while (cur) {
    800133bc:	fc078ee3          	beqz	a5,80013398 <_ZN14PeriodicThread3runEv+0x24>
            if (cur->owner == owner) return cur->period;
    800133c0:	0007b703          	ld	a4,0(a5)
    800133c4:	fce486e3          	beq	s1,a4,80013390 <_ZN14PeriodicThread3runEv+0x1c>
            cur = cur->next;
    800133c8:	0107b783          	ld	a5,16(a5)
        while (cur) {
    800133cc:	ff1ff06f          	j	800133bc <_ZN14PeriodicThread3runEv+0x48>

00000000800133d0 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    800133d0:	00001797          	auipc	a5,0x1
    800133d4:	f6078793          	addi	a5,a5,-160 # 80014330 <_ZTV9Semaphore+0x10>
    800133d8:	00f53023          	sd	a5,0(a0)
    if (myHandle) sem_close(myHandle);
    800133dc:	00853503          	ld	a0,8(a0)
    800133e0:	02050663          	beqz	a0,8001340c <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    800133e4:	ff010113          	addi	sp,sp,-16
    800133e8:	00113423          	sd	ra,8(sp)
    800133ec:	00813023          	sd	s0,0(sp)
    800133f0:	01010413          	addi	s0,sp,16
    if (myHandle) sem_close(myHandle);
    800133f4:	ffffe097          	auipc	ra,0xffffe
    800133f8:	190080e7          	jalr	400(ra) # 80011584 <_Z9sem_closeP4_Sem>
}
    800133fc:	00813083          	ld	ra,8(sp)
    80013400:	00013403          	ld	s0,0(sp)
    80013404:	01010113          	addi	sp,sp,16
    80013408:	00008067          	ret
    8001340c:	00008067          	ret

0000000080013410 <_Znwm>:
void* operator new(size_t size) {
    80013410:	ff010113          	addi	sp,sp,-16
    80013414:	00113423          	sd	ra,8(sp)
    80013418:	00813023          	sd	s0,0(sp)
    8001341c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80013420:	ffffe097          	auipc	ra,0xffffe
    80013424:	cf0080e7          	jalr	-784(ra) # 80011110 <_Z9mem_allocm>
}
    80013428:	00813083          	ld	ra,8(sp)
    8001342c:	00013403          	ld	s0,0(sp)
    80013430:	01010113          	addi	sp,sp,16
    80013434:	00008067          	ret

0000000080013438 <_ZdlPv>:
void operator delete(void* ptr) {
    80013438:	ff010113          	addi	sp,sp,-16
    8001343c:	00113423          	sd	ra,8(sp)
    80013440:	00813023          	sd	s0,0(sp)
    80013444:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80013448:	ffffe097          	auipc	ra,0xffffe
    8001344c:	d10080e7          	jalr	-752(ra) # 80011158 <_Z8mem_freePv>
}
    80013450:	00813083          	ld	ra,8(sp)
    80013454:	00013403          	ld	s0,0(sp)
    80013458:	01010113          	addi	sp,sp,16
    8001345c:	00008067          	ret

0000000080013460 <_ZN6ThreadD0Ev>:
Thread::~Thread() {}
    80013460:	ff010113          	addi	sp,sp,-16
    80013464:	00113423          	sd	ra,8(sp)
    80013468:	00813023          	sd	s0,0(sp)
    8001346c:	01010413          	addi	s0,sp,16
    80013470:	00000097          	auipc	ra,0x0
    80013474:	fc8080e7          	jalr	-56(ra) # 80013438 <_ZdlPv>
    80013478:	00813083          	ld	ra,8(sp)
    8001347c:	00013403          	ld	s0,0(sp)
    80013480:	01010113          	addi	sp,sp,16
    80013484:	00008067          	ret

0000000080013488 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80013488:	fe010113          	addi	sp,sp,-32
    8001348c:	00113c23          	sd	ra,24(sp)
    80013490:	00813823          	sd	s0,16(sp)
    80013494:	00913423          	sd	s1,8(sp)
    80013498:	02010413          	addi	s0,sp,32
    8001349c:	00050493          	mv	s1,a0
}
    800134a0:	00000097          	auipc	ra,0x0
    800134a4:	f30080e7          	jalr	-208(ra) # 800133d0 <_ZN9SemaphoreD1Ev>
    800134a8:	00048513          	mv	a0,s1
    800134ac:	00000097          	auipc	ra,0x0
    800134b0:	f8c080e7          	jalr	-116(ra) # 80013438 <_ZdlPv>
    800134b4:	01813083          	ld	ra,24(sp)
    800134b8:	01013403          	ld	s0,16(sp)
    800134bc:	00813483          	ld	s1,8(sp)
    800134c0:	02010113          	addi	sp,sp,32
    800134c4:	00008067          	ret

00000000800134c8 <_Znam>:
void* operator new[](size_t size) {
    800134c8:	ff010113          	addi	sp,sp,-16
    800134cc:	00113423          	sd	ra,8(sp)
    800134d0:	00813023          	sd	s0,0(sp)
    800134d4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800134d8:	ffffe097          	auipc	ra,0xffffe
    800134dc:	c38080e7          	jalr	-968(ra) # 80011110 <_Z9mem_allocm>
}
    800134e0:	00813083          	ld	ra,8(sp)
    800134e4:	00013403          	ld	s0,0(sp)
    800134e8:	01010113          	addi	sp,sp,16
    800134ec:	00008067          	ret

00000000800134f0 <_ZdaPv>:
void operator delete[](void* adr) {
    800134f0:	ff010113          	addi	sp,sp,-16
    800134f4:	00113423          	sd	ra,8(sp)
    800134f8:	00813023          	sd	s0,0(sp)
    800134fc:	01010413          	addi	s0,sp,16
    mem_free(adr);
    80013500:	ffffe097          	auipc	ra,0xffffe
    80013504:	c58080e7          	jalr	-936(ra) # 80011158 <_Z8mem_freePv>
}
    80013508:	00813083          	ld	ra,8(sp)
    8001350c:	00013403          	ld	s0,0(sp)
    80013510:	01010113          	addi	sp,sp,16
    80013514:	00008067          	ret

0000000080013518 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void*arg) {
    80013518:	ff010113          	addi	sp,sp,-16
    8001351c:	00113423          	sd	ra,8(sp)
    80013520:	00813023          	sd	s0,0(sp)
    80013524:	01010413          	addi	s0,sp,16
    80013528:	00001797          	auipc	a5,0x1
    8001352c:	de078793          	addi	a5,a5,-544 # 80014308 <_ZTV6Thread+0x10>
    80013530:	00f53023          	sd	a5,0(a0)
    80013534:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, body, arg, DEFAULT_STACK_SIZE, NORM_PRIORITY, 0);
    80013538:	00000793          	li	a5,0
    8001353c:	ffffe717          	auipc	a4,0xffffe
    80013540:	b6473703          	ld	a4,-1180(a4) # 800110a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
    80013544:	00072703          	lw	a4,0(a4)
    80013548:	000016b7          	lui	a3,0x1
    8001354c:	00850513          	addi	a0,a0,8
    80013550:	ffffe097          	auipc	ra,0xffffe
    80013554:	d00080e7          	jalr	-768(ra) # 80011250 <_Z13thread_createPP7_ThreadPFvPvES2_mii>
}
    80013558:	00813083          	ld	ra,8(sp)
    8001355c:	00013403          	ld	s0,0(sp)
    80013560:	01010113          	addi	sp,sp,16
    80013564:	00008067          	ret

0000000080013568 <_ZN6Thread5startEv>:
    if (myHandle == 0) return -1;
    80013568:	00853503          	ld	a0,8(a0)
    8001356c:	02050663          	beqz	a0,80013598 <_ZN6Thread5startEv+0x30>
int Thread::start() {
    80013570:	ff010113          	addi	sp,sp,-16
    80013574:	00113423          	sd	ra,8(sp)
    80013578:	00813023          	sd	s0,0(sp)
    8001357c:	01010413          	addi	s0,sp,16
    return thread_start(myHandle);
    80013580:	ffffe097          	auipc	ra,0xffffe
    80013584:	e38080e7          	jalr	-456(ra) # 800113b8 <_Z12thread_startP7_Thread>
}
    80013588:	00813083          	ld	ra,8(sp)
    8001358c:	00013403          	ld	s0,0(sp)
    80013590:	01010113          	addi	sp,sp,16
    80013594:	00008067          	ret
    if (myHandle == 0) return -1;
    80013598:	fff00513          	li	a0,-1
}
    8001359c:	00008067          	ret

00000000800135a0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800135a0:	ff010113          	addi	sp,sp,-16
    800135a4:	00113423          	sd	ra,8(sp)
    800135a8:	00813023          	sd	s0,0(sp)
    800135ac:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800135b0:	ffffe097          	auipc	ra,0xffffe
    800135b4:	dc0080e7          	jalr	-576(ra) # 80011370 <_Z15thread_dispatchv>
}
    800135b8:	00813083          	ld	ra,8(sp)
    800135bc:	00013403          	ld	s0,0(sp)
    800135c0:	01010113          	addi	sp,sp,16
    800135c4:	00008067          	ret

00000000800135c8 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800135c8:	ff010113          	addi	sp,sp,-16
    800135cc:	00113423          	sd	ra,8(sp)
    800135d0:	00813023          	sd	s0,0(sp)
    800135d4:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800135d8:	ffffe097          	auipc	ra,0xffffe
    800135dc:	20c080e7          	jalr	524(ra) # 800117e4 <_Z10time_sleepm>
}
    800135e0:	00813083          	ld	ra,8(sp)
    800135e4:	00013403          	ld	s0,0(sp)
    800135e8:	01010113          	addi	sp,sp,16
    800135ec:	00008067          	ret

00000000800135f0 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800135f0:	ff010113          	addi	sp,sp,-16
    800135f4:	00113423          	sd	ra,8(sp)
    800135f8:	00813023          	sd	s0,0(sp)
    800135fc:	01010413          	addi	s0,sp,16
    80013600:	00001797          	auipc	a5,0x1
    80013604:	d0878793          	addi	a5,a5,-760 # 80014308 <_ZTV6Thread+0x10>
    80013608:	00f53023          	sd	a5,0(a0)
    8001360c:	00053423          	sd	zero,8(a0)
    thread_create(&myHandle, &wrapper, (void*)this, DEFAULT_STACK_SIZE, NORM_PRIORITY, 0);
    80013610:	00000793          	li	a5,0
    80013614:	ffffe717          	auipc	a4,0xffffe
    80013618:	a8c73703          	ld	a4,-1396(a4) # 800110a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
    8001361c:	00072703          	lw	a4,0(a4)
    80013620:	000016b7          	lui	a3,0x1
    80013624:	00050613          	mv	a2,a0
    80013628:	00000597          	auipc	a1,0x0
    8001362c:	d2058593          	addi	a1,a1,-736 # 80013348 <_ZN6Thread7wrapperEPv>
    80013630:	00850513          	addi	a0,a0,8
    80013634:	ffffe097          	auipc	ra,0xffffe
    80013638:	c1c080e7          	jalr	-996(ra) # 80011250 <_Z13thread_createPP7_ThreadPFvPvES2_mii>
}
    8001363c:	00813083          	ld	ra,8(sp)
    80013640:	00013403          	ld	s0,0(sp)
    80013644:	01010113          	addi	sp,sp,16
    80013648:	00008067          	ret

000000008001364c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    8001364c:	fe010113          	addi	sp,sp,-32
    80013650:	00113c23          	sd	ra,24(sp)
    80013654:	00813823          	sd	s0,16(sp)
    80013658:	00913423          	sd	s1,8(sp)
    8001365c:	02010413          	addi	s0,sp,32
    80013660:	00050493          	mv	s1,a0
    80013664:	00001797          	auipc	a5,0x1
    80013668:	ccc78793          	addi	a5,a5,-820 # 80014330 <_ZTV9Semaphore+0x10>
    8001366c:	00f53023          	sd	a5,0(a0)
    int res = sem_open(&myHandle, init);
    80013670:	00850513          	addi	a0,a0,8
    80013674:	ffffe097          	auipc	ra,0xffffe
    80013678:	ec0080e7          	jalr	-320(ra) # 80011534 <_Z8sem_openPP4_Semj>
    if (res < 0) {
    8001367c:	00054c63          	bltz	a0,80013694 <_ZN9SemaphoreC1Ej+0x48>
}
    80013680:	01813083          	ld	ra,24(sp)
    80013684:	01013403          	ld	s0,16(sp)
    80013688:	00813483          	ld	s1,8(sp)
    8001368c:	02010113          	addi	sp,sp,32
    80013690:	00008067          	ret
        myHandle = nullptr;
    80013694:	0004b423          	sd	zero,8(s1)
}
    80013698:	fe9ff06f          	j	80013680 <_ZN9SemaphoreC1Ej+0x34>

000000008001369c <_ZN9Semaphore4waitEv>:
    if (!myHandle) return -4;
    8001369c:	00853503          	ld	a0,8(a0)
    800136a0:	02050663          	beqz	a0,800136cc <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    800136a4:	ff010113          	addi	sp,sp,-16
    800136a8:	00113423          	sd	ra,8(sp)
    800136ac:	00813023          	sd	s0,0(sp)
    800136b0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800136b4:	ffffe097          	auipc	ra,0xffffe
    800136b8:	f1c080e7          	jalr	-228(ra) # 800115d0 <_Z8sem_waitP4_Sem>
}
    800136bc:	00813083          	ld	ra,8(sp)
    800136c0:	00013403          	ld	s0,0(sp)
    800136c4:	01010113          	addi	sp,sp,16
    800136c8:	00008067          	ret
    if (!myHandle) return -4;
    800136cc:	ffc00513          	li	a0,-4
}
    800136d0:	00008067          	ret

00000000800136d4 <_ZN9Semaphore6signalEv>:
    if (!myHandle) return -4;
    800136d4:	00853503          	ld	a0,8(a0)
    800136d8:	02050663          	beqz	a0,80013704 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800136dc:	ff010113          	addi	sp,sp,-16
    800136e0:	00113423          	sd	ra,8(sp)
    800136e4:	00813023          	sd	s0,0(sp)
    800136e8:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800136ec:	ffffe097          	auipc	ra,0xffffe
    800136f0:	f30080e7          	jalr	-208(ra) # 8001161c <_Z10sem_signalP4_Sem>
}
    800136f4:	00813083          	ld	ra,8(sp)
    800136f8:	00013403          	ld	s0,0(sp)
    800136fc:	01010113          	addi	sp,sp,16
    80013700:	00008067          	ret
    if (!myHandle) return -4;
    80013704:	ffc00513          	li	a0,-4
}
    80013708:	00008067          	ret

000000008001370c <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) {
    8001370c:	fe010113          	addi	sp,sp,-32
    80013710:	00113c23          	sd	ra,24(sp)
    80013714:	00813823          	sd	s0,16(sp)
    80013718:	00913423          	sd	s1,8(sp)
    8001371c:	01213023          	sd	s2,0(sp)
    80013720:	02010413          	addi	s0,sp,32
    80013724:	00050493          	mv	s1,a0
    80013728:	00058913          	mv	s2,a1
    8001372c:	00000097          	auipc	ra,0x0
    80013730:	ec4080e7          	jalr	-316(ra) # 800135f0 <_ZN6ThreadC1Ev>
    80013734:	00001797          	auipc	a5,0x1
    80013738:	c1c78793          	addi	a5,a5,-996 # 80014350 <_ZTV14PeriodicThread+0x10>
    8001373c:	00f4b023          	sd	a5,0(s1)
        periodList* node = new periodList(owner, period);
    80013740:	01800513          	li	a0,24
    80013744:	00000097          	auipc	ra,0x0
    80013748:	ccc080e7          	jalr	-820(ra) # 80013410 <_Znwm>
    8001374c:	00050663          	beqz	a0,80013758 <_ZN14PeriodicThreadC1Em+0x4c>
    periodList(PeriodicThread* owner, time_t period) : owner(owner), period(period), next(nullptr) {}
    80013750:	00953023          	sd	s1,0(a0)
    80013754:	01253423          	sd	s2,8(a0)
        node->next = head; head = node;
    80013758:	00001797          	auipc	a5,0x1
    8001375c:	c3078793          	addi	a5,a5,-976 # 80014388 <_ZN10periodList4headE>
    80013760:	0007b703          	ld	a4,0(a5)
    80013764:	00e53823          	sd	a4,16(a0)
    80013768:	00a7b023          	sd	a0,0(a5)
}
    8001376c:	01813083          	ld	ra,24(sp)
    80013770:	01013403          	ld	s0,16(sp)
    80013774:	00813483          	ld	s1,8(sp)
    80013778:	00013903          	ld	s2,0(sp)
    8001377c:	02010113          	addi	sp,sp,32
    80013780:	00008067          	ret

0000000080013784 <_ZN7Console4getcEv>:
    }
}

char Console::getc() {
    80013784:	ff010113          	addi	sp,sp,-16
    80013788:	00113423          	sd	ra,8(sp)
    8001378c:	00813023          	sd	s0,0(sp)
    80013790:	01010413          	addi	s0,sp,16
    return ::getc();
    80013794:	ffffe097          	auipc	ra,0xffffe
    80013798:	0e8080e7          	jalr	232(ra) # 8001187c <_Z4getcv>
}
    8001379c:	00813083          	ld	ra,8(sp)
    800137a0:	00013403          	ld	s0,0(sp)
    800137a4:	01010113          	addi	sp,sp,16
    800137a8:	00008067          	ret

00000000800137ac <_ZN7Console4putcEc>:
void Console::putc(char c) {
    800137ac:	ff010113          	addi	sp,sp,-16
    800137b0:	00113423          	sd	ra,8(sp)
    800137b4:	00813023          	sd	s0,0(sp)
    800137b8:	01010413          	addi	s0,sp,16
    ::putc(c);
    800137bc:	ffffe097          	auipc	ra,0xffffe
    800137c0:	10c080e7          	jalr	268(ra) # 800118c8 <_Z4putcc>
    800137c4:	00813083          	ld	ra,8(sp)
    800137c8:	00013403          	ld	s0,0(sp)
    800137cc:	01010113          	addi	sp,sp,16
    800137d0:	00008067          	ret

00000000800137d4 <_ZN6Thread3runEv>:
    static void dispatch();
    static int sleep(time_t);

protected:
    Thread();
    virtual void run() {}
    800137d4:	ff010113          	addi	sp,sp,-16
    800137d8:	00813423          	sd	s0,8(sp)
    800137dc:	01010413          	addi	s0,sp,16
    800137e0:	00813403          	ld	s0,8(sp)
    800137e4:	01010113          	addi	sp,sp,16
    800137e8:	00008067          	ret

00000000800137ec <_ZN14PeriodicThread18periodicActivationEv>:
};

class PeriodicThread : public Thread {
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {}
    800137ec:	ff010113          	addi	sp,sp,-16
    800137f0:	00813423          	sd	s0,8(sp)
    800137f4:	01010413          	addi	s0,sp,16
    800137f8:	00813403          	ld	s0,8(sp)
    800137fc:	01010113          	addi	sp,sp,16
    80013800:	00008067          	ret

0000000080013804 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80013804:	ff010113          	addi	sp,sp,-16
    80013808:	00813423          	sd	s0,8(sp)
    8001380c:	01010413          	addi	s0,sp,16
    80013810:	00001797          	auipc	a5,0x1
    80013814:	b4078793          	addi	a5,a5,-1216 # 80014350 <_ZTV14PeriodicThread+0x10>
    80013818:	00f53023          	sd	a5,0(a0)
    8001381c:	00813403          	ld	s0,8(sp)
    80013820:	01010113          	addi	sp,sp,16
    80013824:	00008067          	ret

0000000080013828 <_ZN14PeriodicThreadD0Ev>:
    80013828:	ff010113          	addi	sp,sp,-16
    8001382c:	00113423          	sd	ra,8(sp)
    80013830:	00813023          	sd	s0,0(sp)
    80013834:	01010413          	addi	s0,sp,16
    80013838:	00001797          	auipc	a5,0x1
    8001383c:	b1878793          	addi	a5,a5,-1256 # 80014350 <_ZTV14PeriodicThread+0x10>
    80013840:	00f53023          	sd	a5,0(a0)
    80013844:	00000097          	auipc	ra,0x0
    80013848:	bf4080e7          	jalr	-1036(ra) # 80013438 <_ZdlPv>
    8001384c:	00813083          	ld	ra,8(sp)
    80013850:	00013403          	ld	s0,0(sp)
    80013854:	01010113          	addi	sp,sp,16
    80013858:	00008067          	ret

000000008001385c <_Z7ABIcallmmmmmmmm>:
// Created by os on 5/3/22.
//

#include "../h/ABI.h"

uint64 ABIcall(uint64 code, uint64 a, uint64 b, uint64 c, uint64 d, uint64 e, uint64 f, uint64 g) {
    8001385c:	ff010113          	addi	sp,sp,-16
    80013860:	00813423          	sd	s0,8(sp)
    80013864:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80013868:	00000073          	ecall
    uint64 res;
    __asm__ volatile("mv %0, a0" : "=r"(res));//povratna vrednost se nalazi u a0 nakon softverskog prekida
    8001386c:	00050513          	mv	a0,a0
    return res;
}
    80013870:	00813403          	ld	s0,8(sp)
    80013874:	01010113          	addi	sp,sp,16
    80013878:	00008067          	ret
	...
