.section ".text"
.global bcm2836_irq_enable

bcm2836_irq_enable:
	mrs r0, cpsr
	bic	r0,	r0,	#0x80
	msr cpsr_c,	r0
//	bkpt	#0xAAAA
	mov pc, lr
