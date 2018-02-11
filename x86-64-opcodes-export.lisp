(in-package :x86-64-opcodes)

(progn
 (export
  '(st7 st6 st5 st4 st3 st2 st1 st0 r15w r14w r13w r12w r11w r10w r9w r8w r7w
    r6w r5w r4w r3w r2w r1w r0w r15b r14b r13b r12b r11b r10b r9b r8b r7b r6b
    r5b r4b r3b r2b r1b r0b dil sil bpl spl bh dh ch bl dl 8-bit-reg cr15 cr14
    cr13 cr12 cr11 cr10 cr9 cr8 cr7 cr6 cr5 cr4 cr3 cr2 cr1 r15d r14d r13d r12d
    r11d r10d r9d r8d r7d r6d r5d r4d r3d r2d r1d r0d xmm31 xmm30 xmm29 xmm28
    xmm27 xmm26 xmm25 xmm24 xmm23 xmm22 xmm21 xmm20 xmm19 xmm18 xmm17 xmm16
    xmm15 xmm14 xmm13 xmm12 xmm11 xmm10 xmm9 xmm8 xmm7 xmm6 xmm5 xmm4 xmm3 xmm2
    xmm1 zmm31 zmm30 zmm29 zmm28 zmm27 zmm26 zmm25 zmm24 zmm23 zmm22 zmm21
    zmm20 zmm19 zmm18 zmm17 zmm16 zmm15 zmm14 zmm13 zmm12 zmm11 zmm10 zmm9 zmm8
    zmm7 zmm6 zmm5 zmm4 zmm3 zmm2 zmm1 zmm0 512-bit-reg mm7 mm6 mm5 mm4 mm3 mm2
    mm1 mm0 bnd3 bnd2 bnd1 bnd0 128-bit-reg dr15 dr14 dr13 dr12 dr11 dr10 dr9
    dr8 dr7 dr6 dr5 dr4 dr3 dr2 dr1 dr0 32-bit-reg r15 r14 r13 r12 r11 r10 r9
    r8 r7 r6 r5 r4 r3 r2 r1 r0 rsi k7 k6 k5 k4 k3 k2 k1 k0 64-bit-reg
    16-bit-reg ymm31 ymm30 ymm29 ymm28 ymm27 ymm26 ymm25 ymm24 ymm23 ymm22
    ymm21 ymm20 ymm19 ymm18 ymm17 ymm16 ymm15 ymm14 ymm13 ymm12 ymm11 ymm10
    ymm9 ymm8 ymm7 ymm6 ymm5 ymm4 ymm3 ymm2 ymm1 ymm0 256-bit-reg *i-hash*
    genreg ea-dest-reg rtype r/m rmod rcode rext rname register vsibsz vbc
    vtuple vbase vidx vseg memory-variant register-variant immediate-variant
    vval variant-mixin vsize vtype variant opc-escape opc-w opc-length
    opc-address-size opc-opsize opc-fields opc-regcode opc-mandatory-prefixes
    opc-modrm opc-encoding opc-oc0 opc-opcodes opc-vsib opc-vvvv spec-opcodes
    opd-dest/src opd-src opd-dest opd-omit opd-zeroing opd-variants opd-read
    opd-masking opd-embedded opd-vectorhint opd-write opd-encoding spec-operand
    lock-info lock-legacy lock-ignore lock-no l-explicit l-legacy l-ignore
    l-hardware l-implied spec-lock x86-64-instruction x64-instruction
    x86-instruction i-x87-flags i-undocumented i-avx512-supress-all
    i-stack-ptr-inc i-repne i-repe i-rep i-operands i-opcodes i-mxcsr
    i-mnemonic i-lock i-ring-level i-fpu-stack-ptr-inc i-form
    i-embedded-rounding i-eflags i-deprecated i-cpuid i-branch-type
    i-supports-bnd i-alias-of i-abandoned spec-instruction drex drex.dst pimm4
    xop *bx alternative preferred m64z m32z m32y m64y m64x m32x dds vm s rdi cl
    cs esi edi cx bx si di ss gs fs dreg imm64 moffs64 mem sreg moffs32 moffs16
    moffs8 m16-m64 m16-m32 rbp rsp ebp esp bp sp ah short offset8 rel8 p m4096
    m864 m752 m224 m112 m80fp m64int pe de oe es ue b ze ie m80bcd m80dec
    m16int m32int fpureg |ST(0)| m64fp m32fp c2 c1 c3 c0 reg pimm16 dx mmreg
    rbx rcx rdx ebx ecx edx *di *si ds kreg t creg cr0 ptr80 offset48 offset16
    rel16 ptr48 far ptr32 near offset32 rel32 opcode.reg m32-m32 m16-m16 mib
    bndreg ndd imm8.high xmm0 df if tf nt rf c m512 zmmreg evex m256 ymmreg nds
    vex vvvv m128 xmmreg m64 rex reg64 rax modrm.reg m32 m16 modrm.rm m8 memory
    imm32 reg32 eax imm16 reg16 ax imm8 pimm8 immediate of zf sf u pf m cf tm
    af legacy explicit implied hardware ignore fpu-reg 32byte-reg 16byte-reg
    8byte-reg fpu xop.m9 xop.m8 three-byte-3a three-byte-38 3d-now two-byte
    reg8 al register sw cw)))