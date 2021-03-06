(in-package :x86-64-opcodes)

(progn
 (eval-when (:compile-toplevel :load-toplevel :execute)
   (progn
    (unless (find-class '256-bit-reg nil)
      (defclass 256-bit-reg (register) ((size :initarg :rsize :reader rsize))))
    (defclass ymmreg (256-bit-reg) nil)
    (define-constant ymm0
                     (make-instance 'ymmreg :rname 'ymm0 :rrex nil :rcode 0
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm1
                     (make-instance 'ymmreg :rname 'ymm1 :rrex nil :rcode 1
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm2
                     (make-instance 'ymmreg :rname 'ymm2 :rrex nil :rcode 2
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm3
                     (make-instance 'ymmreg :rname 'ymm3 :rrex nil :rcode 3
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm4
                     (make-instance 'ymmreg :rname 'ymm4 :rrex nil :rcode 4
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm5
                     (make-instance 'ymmreg :rname 'ymm5 :rrex nil :rcode 5
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm6
                     (make-instance 'ymmreg :rname 'ymm6 :rrex nil :rcode 6
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm7
                     (make-instance 'ymmreg :rname 'ymm7 :rrex nil :rcode 7
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm8
                     (make-instance 'ymmreg :rname 'ymm8 :rrex nil :rcode 8
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm9
                     (make-instance 'ymmreg :rname 'ymm9 :rrex nil :rcode 9
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm10
                     (make-instance 'ymmreg :rname 'ymm10 :rrex nil :rcode 10
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm11
                     (make-instance 'ymmreg :rname 'ymm11 :rrex nil :rcode 11
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm12
                     (make-instance 'ymmreg :rname 'ymm12 :rrex nil :rcode 12
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm13
                     (make-instance 'ymmreg :rname 'ymm13 :rrex nil :rcode 13
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm14
                     (make-instance 'ymmreg :rname 'ymm14 :rrex nil :rcode 14
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm15
                     (make-instance 'ymmreg :rname 'ymm15 :rrex nil :rcode 15
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm16
                     (make-instance 'ymmreg :rname 'ymm16 :rrex nil :rcode 16
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm17
                     (make-instance 'ymmreg :rname 'ymm17 :rrex nil :rcode 17
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm18
                     (make-instance 'ymmreg :rname 'ymm18 :rrex nil :rcode 18
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm19
                     (make-instance 'ymmreg :rname 'ymm19 :rrex nil :rcode 19
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm20
                     (make-instance 'ymmreg :rname 'ymm20 :rrex nil :rcode 20
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm21
                     (make-instance 'ymmreg :rname 'ymm21 :rrex nil :rcode 21
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm22
                     (make-instance 'ymmreg :rname 'ymm22 :rrex nil :rcode 22
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm23
                     (make-instance 'ymmreg :rname 'ymm23 :rrex nil :rcode 23
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm24
                     (make-instance 'ymmreg :rname 'ymm24 :rrex nil :rcode 24
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm25
                     (make-instance 'ymmreg :rname 'ymm25 :rrex nil :rcode 25
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm26
                     (make-instance 'ymmreg :rname 'ymm26 :rrex nil :rcode 26
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm27
                     (make-instance 'ymmreg :rname 'ymm27 :rrex nil :rcode 27
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm28
                     (make-instance 'ymmreg :rname 'ymm28 :rrex nil :rcode 28
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm29
                     (make-instance 'ymmreg :rname 'ymm29 :rrex nil :rcode 29
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm30
                     (make-instance 'ymmreg :rname 'ymm30 :rrex nil :rcode 30
                                    :rsize '256 :rtype 'ymmreg))
    (define-constant ymm31
                     (make-instance 'ymmreg :rname 'ymm31 :rrex nil :rcode 31
                                    :rsize '256 :rtype 'ymmreg)))
   (progn
    (unless (find-class '16-bit-reg nil)
      (defclass 16-bit-reg (register) ((size :initarg :rsize :reader rsize))))
    (defclass sreg (16-bit-reg) nil)
    (define-constant es
                     (make-instance 'sreg :rname 'es :rrex nil :rcode 0 :rsize
                                    '16 :rtype 'sreg))
    (define-constant cs
                     (make-instance 'sreg :rname 'cs :rrex nil :rcode 1 :rsize
                                    '16 :rtype 'sreg))
    (define-constant ss
                     (make-instance 'sreg :rname 'ss :rrex nil :rcode 2 :rsize
                                    '16 :rtype 'sreg))
    (define-constant ds
                     (make-instance 'sreg :rname 'ds :rrex nil :rcode 3 :rsize
                                    '16 :rtype 'sreg))
    (define-constant fs
                     (make-instance 'sreg :rname 'fs :rrex nil :rcode 4 :rsize
                                    '16 :rtype 'sreg))
    (define-constant gs
                     (make-instance 'sreg :rname 'gs :rrex nil :rcode 5 :rsize
                                    '16 :rtype 'sreg)))
   (progn
    (unless (find-class '64-bit-reg nil)
      (defclass 64-bit-reg (register) ((size :initarg :rsize :reader rsize))))
    (defclass kreg (64-bit-reg) nil)
    (define-constant k0
                     (make-instance 'kreg :rname 'k0 :rrex nil :rcode 0 :rsize
                                    '64 :rtype 'kreg))
    (define-constant k1
                     (make-instance 'kreg :rname 'k1 :rrex nil :rcode 1 :rsize
                                    '64 :rtype 'kreg))
    (define-constant k2
                     (make-instance 'kreg :rname 'k2 :rrex nil :rcode 2 :rsize
                                    '64 :rtype 'kreg))
    (define-constant k3
                     (make-instance 'kreg :rname 'k3 :rrex nil :rcode 3 :rsize
                                    '64 :rtype 'kreg))
    (define-constant k4
                     (make-instance 'kreg :rname 'k4 :rrex nil :rcode 4 :rsize
                                    '64 :rtype 'kreg))
    (define-constant k5
                     (make-instance 'kreg :rname 'k5 :rrex nil :rcode 5 :rsize
                                    '64 :rtype 'kreg))
    (define-constant k6
                     (make-instance 'kreg :rname 'k6 :rrex nil :rcode 6 :rsize
                                    '64 :rtype 'kreg))
    (define-constant k7
                     (make-instance 'kreg :rname 'k7 :rrex nil :rcode 7 :rsize
                                    '64 :rtype 'kreg)))
   (progn
    (unless (find-class '64-bit-reg nil)
      (defclass 64-bit-reg (register) ((size :initarg :rsize :reader rsize))))
    (defclass reg64 (64-bit-reg genreg) nil)
    (define-constant rax
                     (make-instance 'reg64 :rname 'rax :rrex t :rcode 0 :rsize
                                    '64 :rtype 'reg64))
    (define-constant rcx
                     (make-instance 'reg64 :rname 'rcx :rrex t :rcode 1 :rsize
                                    '64 :rtype 'reg64))
    (define-constant rdx
                     (make-instance 'reg64 :rname 'rdx :rrex t :rcode 2 :rsize
                                    '64 :rtype 'reg64))
    (define-constant rbx
                     (make-instance 'reg64 :rname 'rbx :rrex t :rcode 3 :rsize
                                    '64 :rtype 'reg64))
    (define-constant rsp
                     (make-instance 'reg64 :rname 'rsp :rrex t :rcode 4 :rsize
                                    '64 :rtype 'reg64))
    (define-constant rbp
                     (make-instance 'reg64 :rname 'rbp :rrex t :rcode 5 :rsize
                                    '64 :rtype 'reg64))
    (define-constant rsi
                     (make-instance 'reg64 :rname 'rsi :rrex t :rcode 6 :rsize
                                    '64 :rtype 'reg64))
    (define-constant rdi
                     (make-instance 'reg64 :rname 'rdi :rrex t :rcode 7 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r0
                     (make-instance 'reg64 :rname 'r0 :rrex t :rcode 8 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r1
                     (make-instance 'reg64 :rname 'r1 :rrex t :rcode 9 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r2
                     (make-instance 'reg64 :rname 'r2 :rrex t :rcode 10 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r3
                     (make-instance 'reg64 :rname 'r3 :rrex t :rcode 11 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r4
                     (make-instance 'reg64 :rname 'r4 :rrex t :rcode 12 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r5
                     (make-instance 'reg64 :rname 'r5 :rrex t :rcode 13 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r6
                     (make-instance 'reg64 :rname 'r6 :rrex t :rcode 14 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r7
                     (make-instance 'reg64 :rname 'r7 :rrex t :rcode 15 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r8
                     (make-instance 'reg64 :rname 'r8 :rrex t :rcode 16 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r9
                     (make-instance 'reg64 :rname 'r9 :rrex t :rcode 17 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r10
                     (make-instance 'reg64 :rname 'r10 :rrex t :rcode 18 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r11
                     (make-instance 'reg64 :rname 'r11 :rrex t :rcode 19 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r12
                     (make-instance 'reg64 :rname 'r12 :rrex t :rcode 20 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r13
                     (make-instance 'reg64 :rname 'r13 :rrex t :rcode 21 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r14
                     (make-instance 'reg64 :rname 'r14 :rrex t :rcode 22 :rsize
                                    '64 :rtype 'reg64))
    (define-constant r15
                     (make-instance 'reg64 :rname 'r15 :rrex t :rcode 23 :rsize
                                    '64 :rtype 'reg64)))
   (progn
    (unless (find-class 'platform-size-reg nil)
      (defclass platform-size-reg (register)
                ((size :initarg :rsize :reader rsize))))
    (defclass dreg (platform-size-reg) nil)
    (define-constant dr0
                     (make-instance 'dreg :rname 'dr0 :rrex nil :rcode 0 :rsize
                                    'platform-size :rtype 'dreg))
    (define-constant dr1
                     (make-instance 'dreg :rname 'dr1 :rrex nil :rcode 1 :rsize
                                    'platform-size :rtype 'dreg))
    (define-constant dr2
                     (make-instance 'dreg :rname 'dr2 :rrex nil :rcode 2 :rsize
                                    'platform-size :rtype 'dreg))
    (define-constant dr3
                     (make-instance 'dreg :rname 'dr3 :rrex nil :rcode 3 :rsize
                                    'platform-size :rtype 'dreg))
    (define-constant dr4
                     (make-instance 'dreg :rname 'dr4 :rrex nil :rcode 4 :rsize
                                    'platform-size :rtype 'dreg))
    (define-constant dr5
                     (make-instance 'dreg :rname 'dr5 :rrex nil :rcode 5 :rsize
                                    'platform-size :rtype 'dreg))
    (define-constant dr6
                     (make-instance 'dreg :rname 'dr6 :rrex nil :rcode 6 :rsize
                                    'platform-size :rtype 'dreg))
    (define-constant dr7
                     (make-instance 'dreg :rname 'dr7 :rrex nil :rcode 7 :rsize
                                    'platform-size :rtype 'dreg)))
   (progn
    (unless (find-class '128-bit-reg nil)
      (defclass 128-bit-reg (register) ((size :initarg :rsize :reader rsize))))
    (defclass bndreg (128-bit-reg) nil)
    (define-constant bnd0
                     (make-instance 'bndreg :rname 'bnd0 :rrex nil :rcode 0
                                    :rsize '128 :rtype 'bndreg))
    (define-constant bnd1
                     (make-instance 'bndreg :rname 'bnd1 :rrex nil :rcode 1
                                    :rsize '128 :rtype 'bndreg))
    (define-constant bnd2
                     (make-instance 'bndreg :rname 'bnd2 :rrex nil :rcode 2
                                    :rsize '128 :rtype 'bndreg))
    (define-constant bnd3
                     (make-instance 'bndreg :rname 'bnd3 :rrex nil :rcode 3
                                    :rsize '128 :rtype 'bndreg)))
   (progn
    (unless (find-class '64-bit-reg nil)
      (defclass 64-bit-reg (register) ((size :initarg :rsize :reader rsize))))
    (defclass mmreg (64-bit-reg ea-dest-reg) nil)
    (define-constant mm0
                     (make-instance 'mmreg :rname 'mm0 :rrex nil :rcode 0
                                    :rsize '64 :rtype 'mmreg))
    (define-constant mm1
                     (make-instance 'mmreg :rname 'mm1 :rrex nil :rcode 1
                                    :rsize '64 :rtype 'mmreg))
    (define-constant mm2
                     (make-instance 'mmreg :rname 'mm2 :rrex nil :rcode 2
                                    :rsize '64 :rtype 'mmreg))
    (define-constant mm3
                     (make-instance 'mmreg :rname 'mm3 :rrex nil :rcode 3
                                    :rsize '64 :rtype 'mmreg))
    (define-constant mm4
                     (make-instance 'mmreg :rname 'mm4 :rrex nil :rcode 4
                                    :rsize '64 :rtype 'mmreg))
    (define-constant mm5
                     (make-instance 'mmreg :rname 'mm5 :rrex nil :rcode 5
                                    :rsize '64 :rtype 'mmreg))
    (define-constant mm6
                     (make-instance 'mmreg :rname 'mm6 :rrex nil :rcode 6
                                    :rsize '64 :rtype 'mmreg))
    (define-constant mm7
                     (make-instance 'mmreg :rname 'mm7 :rrex nil :rcode 7
                                    :rsize '64 :rtype 'mmreg)))
   (progn
    (unless (find-class '512-bit-reg nil)
      (defclass 512-bit-reg (register) ((size :initarg :rsize :reader rsize))))
    (defclass zmmreg (512-bit-reg) nil)
    (define-constant zmm0
                     (make-instance 'zmmreg :rname 'zmm0 :rrex nil :rcode 0
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm1
                     (make-instance 'zmmreg :rname 'zmm1 :rrex nil :rcode 1
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm2
                     (make-instance 'zmmreg :rname 'zmm2 :rrex nil :rcode 2
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm3
                     (make-instance 'zmmreg :rname 'zmm3 :rrex nil :rcode 3
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm4
                     (make-instance 'zmmreg :rname 'zmm4 :rrex nil :rcode 4
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm5
                     (make-instance 'zmmreg :rname 'zmm5 :rrex nil :rcode 5
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm6
                     (make-instance 'zmmreg :rname 'zmm6 :rrex nil :rcode 6
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm7
                     (make-instance 'zmmreg :rname 'zmm7 :rrex nil :rcode 7
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm8
                     (make-instance 'zmmreg :rname 'zmm8 :rrex nil :rcode 8
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm9
                     (make-instance 'zmmreg :rname 'zmm9 :rrex nil :rcode 9
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm10
                     (make-instance 'zmmreg :rname 'zmm10 :rrex nil :rcode 10
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm11
                     (make-instance 'zmmreg :rname 'zmm11 :rrex nil :rcode 11
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm12
                     (make-instance 'zmmreg :rname 'zmm12 :rrex nil :rcode 12
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm13
                     (make-instance 'zmmreg :rname 'zmm13 :rrex nil :rcode 13
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm14
                     (make-instance 'zmmreg :rname 'zmm14 :rrex nil :rcode 14
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm15
                     (make-instance 'zmmreg :rname 'zmm15 :rrex nil :rcode 15
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm16
                     (make-instance 'zmmreg :rname 'zmm16 :rrex nil :rcode 16
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm17
                     (make-instance 'zmmreg :rname 'zmm17 :rrex nil :rcode 17
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm18
                     (make-instance 'zmmreg :rname 'zmm18 :rrex nil :rcode 18
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm19
                     (make-instance 'zmmreg :rname 'zmm19 :rrex nil :rcode 19
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm20
                     (make-instance 'zmmreg :rname 'zmm20 :rrex nil :rcode 20
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm21
                     (make-instance 'zmmreg :rname 'zmm21 :rrex nil :rcode 21
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm22
                     (make-instance 'zmmreg :rname 'zmm22 :rrex nil :rcode 22
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm23
                     (make-instance 'zmmreg :rname 'zmm23 :rrex nil :rcode 23
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm24
                     (make-instance 'zmmreg :rname 'zmm24 :rrex nil :rcode 24
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm25
                     (make-instance 'zmmreg :rname 'zmm25 :rrex nil :rcode 25
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm26
                     (make-instance 'zmmreg :rname 'zmm26 :rrex nil :rcode 26
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm27
                     (make-instance 'zmmreg :rname 'zmm27 :rrex nil :rcode 27
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm28
                     (make-instance 'zmmreg :rname 'zmm28 :rrex nil :rcode 28
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm29
                     (make-instance 'zmmreg :rname 'zmm29 :rrex nil :rcode 29
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm30
                     (make-instance 'zmmreg :rname 'zmm30 :rrex nil :rcode 30
                                    :rsize '512 :rtype 'zmmreg))
    (define-constant zmm31
                     (make-instance 'zmmreg :rname 'zmm31 :rrex nil :rcode 31
                                    :rsize '512 :rtype 'zmmreg)))
   (progn
    (unless (find-class '128-bit-reg nil)
      (defclass 128-bit-reg (register) ((size :initarg :rsize :reader rsize))))
    (defclass xmmreg (128-bit-reg ea-dest-reg) nil)
    (define-constant xmm0
                     (make-instance 'xmmreg :rname 'xmm0 :rrex nil :rcode 0
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm1
                     (make-instance 'xmmreg :rname 'xmm1 :rrex nil :rcode 1
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm2
                     (make-instance 'xmmreg :rname 'xmm2 :rrex nil :rcode 2
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm3
                     (make-instance 'xmmreg :rname 'xmm3 :rrex nil :rcode 3
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm4
                     (make-instance 'xmmreg :rname 'xmm4 :rrex nil :rcode 4
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm5
                     (make-instance 'xmmreg :rname 'xmm5 :rrex nil :rcode 5
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm6
                     (make-instance 'xmmreg :rname 'xmm6 :rrex nil :rcode 6
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm7
                     (make-instance 'xmmreg :rname 'xmm7 :rrex nil :rcode 7
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm8
                     (make-instance 'xmmreg :rname 'xmm8 :rrex nil :rcode 8
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm9
                     (make-instance 'xmmreg :rname 'xmm9 :rrex nil :rcode 9
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm10
                     (make-instance 'xmmreg :rname 'xmm10 :rrex nil :rcode 10
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm11
                     (make-instance 'xmmreg :rname 'xmm11 :rrex nil :rcode 11
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm12
                     (make-instance 'xmmreg :rname 'xmm12 :rrex nil :rcode 12
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm13
                     (make-instance 'xmmreg :rname 'xmm13 :rrex nil :rcode 13
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm14
                     (make-instance 'xmmreg :rname 'xmm14 :rrex nil :rcode 14
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm15
                     (make-instance 'xmmreg :rname 'xmm15 :rrex nil :rcode 15
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm16
                     (make-instance 'xmmreg :rname 'xmm16 :rrex nil :rcode 16
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm17
                     (make-instance 'xmmreg :rname 'xmm17 :rrex nil :rcode 17
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm18
                     (make-instance 'xmmreg :rname 'xmm18 :rrex nil :rcode 18
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm19
                     (make-instance 'xmmreg :rname 'xmm19 :rrex nil :rcode 19
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm20
                     (make-instance 'xmmreg :rname 'xmm20 :rrex nil :rcode 20
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm21
                     (make-instance 'xmmreg :rname 'xmm21 :rrex nil :rcode 21
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm22
                     (make-instance 'xmmreg :rname 'xmm22 :rrex nil :rcode 22
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm23
                     (make-instance 'xmmreg :rname 'xmm23 :rrex nil :rcode 23
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm24
                     (make-instance 'xmmreg :rname 'xmm24 :rrex nil :rcode 24
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm25
                     (make-instance 'xmmreg :rname 'xmm25 :rrex nil :rcode 25
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm26
                     (make-instance 'xmmreg :rname 'xmm26 :rrex nil :rcode 26
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm27
                     (make-instance 'xmmreg :rname 'xmm27 :rrex nil :rcode 27
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm28
                     (make-instance 'xmmreg :rname 'xmm28 :rrex nil :rcode 28
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm29
                     (make-instance 'xmmreg :rname 'xmm29 :rrex nil :rcode 29
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm30
                     (make-instance 'xmmreg :rname 'xmm30 :rrex nil :rcode 30
                                    :rsize '128 :rtype 'xmmreg))
    (define-constant xmm31
                     (make-instance 'xmmreg :rname 'xmm31 :rrex nil :rcode 31
                                    :rsize '128 :rtype 'xmmreg)))
   (progn
    (unless (find-class '32-bit-reg nil)
      (defclass 32-bit-reg (register) ((size :initarg :rsize :reader rsize))))
    (defclass reg32 (32-bit-reg genreg) nil)
    (define-constant eax
                     (make-instance 'reg32 :rname 'eax :rrex nil :rcode 0
                                    :rsize '32 :rtype 'reg32))
    (define-constant ecx
                     (make-instance 'reg32 :rname 'ecx :rrex nil :rcode 1
                                    :rsize '32 :rtype 'reg32))
    (define-constant edx
                     (make-instance 'reg32 :rname 'edx :rrex nil :rcode 2
                                    :rsize '32 :rtype 'reg32))
    (define-constant ebx
                     (make-instance 'reg32 :rname 'ebx :rrex nil :rcode 3
                                    :rsize '32 :rtype 'reg32))
    (define-constant esp
                     (make-instance 'reg32 :rname 'esp :rrex nil :rcode 4
                                    :rsize '32 :rtype 'reg32))
    (define-constant ebp
                     (make-instance 'reg32 :rname 'ebp :rrex nil :rcode 5
                                    :rsize '32 :rtype 'reg32))
    (define-constant esi
                     (make-instance 'reg32 :rname 'esi :rrex nil :rcode 6
                                    :rsize '32 :rtype 'reg32))
    (define-constant edi
                     (make-instance 'reg32 :rname 'edi :rrex nil :rcode 7
                                    :rsize '32 :rtype 'reg32))
    (define-constant r0d
                     (make-instance 'reg32 :rname 'r0d :rrex nil :rcode 8
                                    :rsize '32 :rtype 'reg32))
    (define-constant r1d
                     (make-instance 'reg32 :rname 'r1d :rrex nil :rcode 9
                                    :rsize '32 :rtype 'reg32))
    (define-constant r2d
                     (make-instance 'reg32 :rname 'r2d :rrex nil :rcode 10
                                    :rsize '32 :rtype 'reg32))
    (define-constant r3d
                     (make-instance 'reg32 :rname 'r3d :rrex nil :rcode 11
                                    :rsize '32 :rtype 'reg32))
    (define-constant r4d
                     (make-instance 'reg32 :rname 'r4d :rrex nil :rcode 12
                                    :rsize '32 :rtype 'reg32))
    (define-constant r5d
                     (make-instance 'reg32 :rname 'r5d :rrex nil :rcode 13
                                    :rsize '32 :rtype 'reg32))
    (define-constant r6d
                     (make-instance 'reg32 :rname 'r6d :rrex nil :rcode 14
                                    :rsize '32 :rtype 'reg32))
    (define-constant r7d
                     (make-instance 'reg32 :rname 'r7d :rrex nil :rcode 15
                                    :rsize '32 :rtype 'reg32))
    (define-constant r8d
                     (make-instance 'reg32 :rname 'r8d :rrex t :rcode 16 :rsize
                                    '32 :rtype 'reg32))
    (define-constant r9d
                     (make-instance 'reg32 :rname 'r9d :rrex t :rcode 17 :rsize
                                    '32 :rtype 'reg32))
    (define-constant r10d
                     (make-instance 'reg32 :rname 'r10d :rrex t :rcode 18
                                    :rsize '32 :rtype 'reg32))
    (define-constant r11d
                     (make-instance 'reg32 :rname 'r11d :rrex t :rcode 19
                                    :rsize '32 :rtype 'reg32))
    (define-constant r12d
                     (make-instance 'reg32 :rname 'r12d :rrex t :rcode 20
                                    :rsize '32 :rtype 'reg32))
    (define-constant r13d
                     (make-instance 'reg32 :rname 'r13d :rrex t :rcode 21
                                    :rsize '32 :rtype 'reg32))
    (define-constant r14d
                     (make-instance 'reg32 :rname 'r14d :rrex t :rcode 22
                                    :rsize '32 :rtype 'reg32))
    (define-constant r15d
                     (make-instance 'reg32 :rname 'r15d :rrex t :rcode 23
                                    :rsize '32 :rtype 'reg32)))
   (progn
    (unless (find-class 'platform-size-reg nil)
      (defclass platform-size-reg (register)
                ((size :initarg :rsize :reader rsize))))
    (defclass creg (platform-size-reg) nil)
    (define-constant cr0
                     (make-instance 'creg :rname 'cr0 :rrex nil :rcode 0 :rsize
                                    'platform-size :rtype 'creg))
    (define-constant cr1
                     (make-instance 'creg :rname 'cr1 :rrex nil :rcode 1 :rsize
                                    'platform-size :rtype 'creg))
    (define-constant cr2
                     (make-instance 'creg :rname 'cr2 :rrex nil :rcode 2 :rsize
                                    'platform-size :rtype 'creg))
    (define-constant cr3
                     (make-instance 'creg :rname 'cr3 :rrex nil :rcode 3 :rsize
                                    'platform-size :rtype 'creg))
    (define-constant cr4
                     (make-instance 'creg :rname 'cr4 :rrex nil :rcode 4 :rsize
                                    'platform-size :rtype 'creg))
    (define-constant cr5
                     (make-instance 'creg :rname 'cr5 :rrex nil :rcode 5 :rsize
                                    'platform-size :rtype 'creg))
    (define-constant cr6
                     (make-instance 'creg :rname 'cr6 :rrex nil :rcode 6 :rsize
                                    'platform-size :rtype 'creg))
    (define-constant cr7
                     (make-instance 'creg :rname 'cr7 :rrex nil :rcode 7 :rsize
                                    'platform-size :rtype 'creg))
    (define-constant cr8
                     (make-instance 'creg :rname 'cr8 :rrex nil :rcode 8 :rsize
                                    'platform-size :rtype 'creg))
    (define-constant cr9
                     (make-instance 'creg :rname 'cr9 :rrex nil :rcode 9 :rsize
                                    'platform-size :rtype 'creg))
    (define-constant cr10
                     (make-instance 'creg :rname 'cr10 :rrex nil :rcode 10
                                    :rsize 'platform-size :rtype 'creg))
    (define-constant cr11
                     (make-instance 'creg :rname 'cr11 :rrex nil :rcode 11
                                    :rsize 'platform-size :rtype 'creg))
    (define-constant cr12
                     (make-instance 'creg :rname 'cr12 :rrex nil :rcode 12
                                    :rsize 'platform-size :rtype 'creg))
    (define-constant cr13
                     (make-instance 'creg :rname 'cr13 :rrex nil :rcode 13
                                    :rsize 'platform-size :rtype 'creg))
    (define-constant cr14
                     (make-instance 'creg :rname 'cr14 :rrex nil :rcode 14
                                    :rsize 'platform-size :rtype 'creg))
    (define-constant cr15
                     (make-instance 'creg :rname 'cr15 :rrex nil :rcode 15
                                    :rsize 'platform-size :rtype 'creg)))
   (progn
    (unless (find-class '8-bit-reg nil)
      (defclass 8-bit-reg (register) ((size :initarg :rsize :reader rsize))))
    (defclass reg8 (8-bit-reg genreg) nil)
    (define-constant al
                     (make-instance 'reg8 :rname 'al :rrex nil :rcode 0 :rsize
                                    '8 :rtype 'reg8))
    (define-constant cl
                     (make-instance 'reg8 :rname 'cl :rrex nil :rcode 1 :rsize
                                    '8 :rtype 'reg8))
    (define-constant dl
                     (make-instance 'reg8 :rname 'dl :rrex nil :rcode 2 :rsize
                                    '8 :rtype 'reg8))
    (define-constant bl
                     (make-instance 'reg8 :rname 'bl :rrex nil :rcode 3 :rsize
                                    '8 :rtype 'reg8))
    (define-constant ah
                     (make-instance 'reg8 :rname 'ah :rrex nil :rcode 4 :rsize
                                    '8 :rtype 'reg8))
    (define-constant ch
                     (make-instance 'reg8 :rname 'ch :rrex nil :rcode 5 :rsize
                                    '8 :rtype 'reg8))
    (define-constant dh
                     (make-instance 'reg8 :rname 'dh :rrex nil :rcode 6 :rsize
                                    '8 :rtype 'reg8))
    (define-constant bh
                     (make-instance 'reg8 :rname 'bh :rrex nil :rcode 7 :rsize
                                    '8 :rtype 'reg8))
    (define-constant spl
                     (make-instance 'reg8 :rname 'spl :rrex t :rcode 8 :rsize
                                    '8 :rtype 'reg8))
    (define-constant bpl
                     (make-instance 'reg8 :rname 'bpl :rrex t :rcode 9 :rsize
                                    '8 :rtype 'reg8))
    (define-constant sil
                     (make-instance 'reg8 :rname 'sil :rrex t :rcode 10 :rsize
                                    '8 :rtype 'reg8))
    (define-constant dil
                     (make-instance 'reg8 :rname 'dil :rrex t :rcode 11 :rsize
                                    '8 :rtype 'reg8))
    (define-constant r0b
                     (make-instance 'reg8 :rname 'r0b :rrex nil :rcode 12
                                    :rsize '8 :rtype 'reg8))
    (define-constant r1b
                     (make-instance 'reg8 :rname 'r1b :rrex nil :rcode 13
                                    :rsize '8 :rtype 'reg8))
    (define-constant r2b
                     (make-instance 'reg8 :rname 'r2b :rrex nil :rcode 14
                                    :rsize '8 :rtype 'reg8))
    (define-constant r3b
                     (make-instance 'reg8 :rname 'r3b :rrex nil :rcode 15
                                    :rsize '8 :rtype 'reg8))
    (define-constant r4b
                     (make-instance 'reg8 :rname 'r4b :rrex nil :rcode 16
                                    :rsize '8 :rtype 'reg8))
    (define-constant r5b
                     (make-instance 'reg8 :rname 'r5b :rrex nil :rcode 17
                                    :rsize '8 :rtype 'reg8))
    (define-constant r6b
                     (make-instance 'reg8 :rname 'r6b :rrex nil :rcode 18
                                    :rsize '8 :rtype 'reg8))
    (define-constant r7b
                     (make-instance 'reg8 :rname 'r7b :rrex nil :rcode 19
                                    :rsize '8 :rtype 'reg8))
    (define-constant r8b
                     (make-instance 'reg8 :rname 'r8b :rrex t :rcode 20 :rsize
                                    '8 :rtype 'reg8))
    (define-constant r9b
                     (make-instance 'reg8 :rname 'r9b :rrex t :rcode 21 :rsize
                                    '8 :rtype 'reg8))
    (define-constant r10b
                     (make-instance 'reg8 :rname 'r10b :rrex t :rcode 22 :rsize
                                    '8 :rtype 'reg8))
    (define-constant r11b
                     (make-instance 'reg8 :rname 'r11b :rrex t :rcode 23 :rsize
                                    '8 :rtype 'reg8))
    (define-constant r12b
                     (make-instance 'reg8 :rname 'r12b :rrex t :rcode 24 :rsize
                                    '8 :rtype 'reg8))
    (define-constant r13b
                     (make-instance 'reg8 :rname 'r13b :rrex t :rcode 25 :rsize
                                    '8 :rtype 'reg8))
    (define-constant r14b
                     (make-instance 'reg8 :rname 'r14b :rrex t :rcode 26 :rsize
                                    '8 :rtype 'reg8))
    (define-constant r15b
                     (make-instance 'reg8 :rname 'r15b :rrex t :rcode 27 :rsize
                                    '8 :rtype 'reg8)))
   (progn
    (unless (find-class '16-bit-reg nil)
      (defclass 16-bit-reg (register) ((size :initarg :rsize :reader rsize))))
    (defclass reg16 (16-bit-reg genreg) nil)
    (define-constant ax
                     (make-instance 'reg16 :rname 'ax :rrex nil :rcode 0 :rsize
                                    '16 :rtype 'reg16))
    (define-constant cx
                     (make-instance 'reg16 :rname 'cx :rrex nil :rcode 1 :rsize
                                    '16 :rtype 'reg16))
    (define-constant dx
                     (make-instance 'reg16 :rname 'dx :rrex nil :rcode 2 :rsize
                                    '16 :rtype 'reg16))
    (define-constant bx
                     (make-instance 'reg16 :rname 'bx :rrex nil :rcode 3 :rsize
                                    '16 :rtype 'reg16))
    (define-constant sp
                     (make-instance 'reg16 :rname 'sp :rrex nil :rcode 4 :rsize
                                    '16 :rtype 'reg16))
    (define-constant bp
                     (make-instance 'reg16 :rname 'bp :rrex nil :rcode 5 :rsize
                                    '16 :rtype 'reg16))
    (define-constant si
                     (make-instance 'reg16 :rname 'si :rrex nil :rcode 6 :rsize
                                    '16 :rtype 'reg16))
    (define-constant di
                     (make-instance 'reg16 :rname 'di :rrex nil :rcode 7 :rsize
                                    '16 :rtype 'reg16))
    (define-constant r0w
                     (make-instance 'reg16 :rname 'r0w :rrex nil :rcode 8
                                    :rsize '16 :rtype 'reg16))
    (define-constant r1w
                     (make-instance 'reg16 :rname 'r1w :rrex nil :rcode 9
                                    :rsize '16 :rtype 'reg16))
    (define-constant r2w
                     (make-instance 'reg16 :rname 'r2w :rrex nil :rcode 10
                                    :rsize '16 :rtype 'reg16))
    (define-constant r3w
                     (make-instance 'reg16 :rname 'r3w :rrex nil :rcode 11
                                    :rsize '16 :rtype 'reg16))
    (define-constant r4w
                     (make-instance 'reg16 :rname 'r4w :rrex nil :rcode 12
                                    :rsize '16 :rtype 'reg16))
    (define-constant r5w
                     (make-instance 'reg16 :rname 'r5w :rrex nil :rcode 13
                                    :rsize '16 :rtype 'reg16))
    (define-constant r6w
                     (make-instance 'reg16 :rname 'r6w :rrex nil :rcode 14
                                    :rsize '16 :rtype 'reg16))
    (define-constant r7w
                     (make-instance 'reg16 :rname 'r7w :rrex nil :rcode 15
                                    :rsize '16 :rtype 'reg16))
    (define-constant r8w
                     (make-instance 'reg16 :rname 'r8w :rrex t :rcode 16 :rsize
                                    '16 :rtype 'reg16))
    (define-constant r9w
                     (make-instance 'reg16 :rname 'r9w :rrex t :rcode 17 :rsize
                                    '16 :rtype 'reg16))
    (define-constant r10w
                     (make-instance 'reg16 :rname 'r10w :rrex t :rcode 18
                                    :rsize '16 :rtype 'reg16))
    (define-constant r11w
                     (make-instance 'reg16 :rname 'r11w :rrex t :rcode 19
                                    :rsize '16 :rtype 'reg16))
    (define-constant r12w
                     (make-instance 'reg16 :rname 'r12w :rrex t :rcode 20
                                    :rsize '16 :rtype 'reg16))
    (define-constant r13w
                     (make-instance 'reg16 :rname 'r13w :rrex t :rcode 21
                                    :rsize '16 :rtype 'reg16))
    (define-constant r14w
                     (make-instance 'reg16 :rname 'r14w :rrex t :rcode 22
                                    :rsize '16 :rtype 'reg16))
    (define-constant r15w
                     (make-instance 'reg16 :rname 'r15w :rrex t :rcode 23
                                    :rsize '16 :rtype 'reg16)))
   (progn
    (unless (find-class '64-bit-reg nil)
      (defclass 64-bit-reg (register) ((size :initarg :rsize :reader rsize))))
    (defclass fpureg (64-bit-reg) nil)
    (define-constant st0
                     (make-instance 'fpureg :rname 'st0 :rrex nil :rcode 0
                                    :rsize '64 :rtype 'fpureg))
    (define-constant st1
                     (make-instance 'fpureg :rname 'st1 :rrex nil :rcode 1
                                    :rsize '64 :rtype 'fpureg))
    (define-constant st2
                     (make-instance 'fpureg :rname 'st2 :rrex nil :rcode 2
                                    :rsize '64 :rtype 'fpureg))
    (define-constant st3
                     (make-instance 'fpureg :rname 'st3 :rrex nil :rcode 3
                                    :rsize '64 :rtype 'fpureg))
    (define-constant st4
                     (make-instance 'fpureg :rname 'st4 :rrex nil :rcode 4
                                    :rsize '64 :rtype 'fpureg))
    (define-constant st5
                     (make-instance 'fpureg :rname 'st5 :rrex nil :rcode 5
                                    :rsize '64 :rtype 'fpureg))
    (define-constant st6
                     (make-instance 'fpureg :rname 'st6 :rrex nil :rcode 6
                                    :rsize '64 :rtype 'fpureg))
    (define-constant st7
                     (make-instance 'fpureg :rname 'st7 :rrex nil :rcode 7
                                    :rsize '64 :rtype 'fpureg)))))