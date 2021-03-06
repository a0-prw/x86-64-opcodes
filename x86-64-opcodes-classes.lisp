(in-package :x86-64-opcodes)

(progn
 (progn
  (defmacro define-constant (name value &optional doc)
    `(defconstant ,name
       (if (boundp ',name)
           (symbol-value ',name)
           ,value)
       ,@(when doc (list doc))))
  (defclass spec-instruction nil
            ((abandoned :initarg :abandoned :reader i-abandoned)
             (alias-of :initarg :alias-of :reader i-alias-of)
             (supports-bnd :initarg :supports-bnd :reader i-supports-bnd)
             (branch-type :initarg :branch-type :reader i-branch-type)
             (cpuid :initarg :cpuid :reader i-cpuid)
             (deprecated :initarg :deprecated :reader i-deprecated)
             (eflags :initarg :eflags :reader i-eflags)
             (embedded-rounding :initarg :embedded-rounding :reader
              i-embedded-rounding)
             (form :initarg :form :reader i-form)
             (fpu-stack-ptr-inc :initarg :fpu-stack-ptr-inc :reader
              i-fpu-stack-ptr-inc)
             (ring-level :initarg :ring-level :reader i-ring-level)
             (lock :initarg :lock :reader i-lock)
             (mnemonic :initarg :mnemonic :reader i-mnemonic)
             (mxcsr :initarg :mxcsr :reader i-mxcsr)
             (opcodes :initarg :opcodes :reader i-opcodes)
             (operands :initarg :operands :reader i-operands)
             (rep :initarg :rep :reader i-rep)
             (repe :initarg :repe :reader i-repe)
             (repne :initarg :repne :reader i-repne)
             (stack-ptr-inc :initarg :stack-ptr-inc :reader i-stack-ptr-inc)
             (avx512-supress-all :initarg :avx512-supress-all :reader
              i-avx512-supress-all)
             (undocumented :initarg :undocumented :reader i-undocumented)
             (x87-flags :initarg :x87-flags :reader i-x87-flags)))
  (defclass x86-instruction (spec-instruction) nil)
  (defclass x64-instruction (spec-instruction) nil)
  (defclass x86-64-instruction (x64-instruction) nil)
  (defmethod print-object ((o spec-instruction) stream)
    (print-unreadable-object (o stream :type t :identity t)
      (format stream "~A" (i-mnemonic o))))
  (defclass spec-lock nil
            ((implied :initform nil :initarg :implied :reader l-implied)
             (hardware :initform nil :initarg :hardware :reader l-hardware)
             (ignore :initform nil :initarg :ignore :reader l-ignore)
             (legacy :initform nil :initarg :legacy :reader l-legacy)
             (explicit :initform nil :initarg :explicit :reader l-explicit)))
  (defclass lock-no (spec-lock) nil)
  (defclass lock-ignore (spec-lock) nil)
  (defclass lock-legacy (spec-lock) nil)
  (defclass lock-info (spec-lock) nil)
  (defclass spec-operand nil
            ((encoding :initarg :encoding :reader opd-encoding)
             (write :initarg :write :reader opd-write)
             (vectorhint :initarg :vectorhint :reader opd-vectorhint)
             (embedded :initarg :embedded :reader opd-embedded)
             (masking :initarg :masking :reader opd-masking)
             (read :initarg :read :reader opd-read)
             (variants :initarg :variants :reader opd-variants)
             (zeroing :initarg :zeroing :reader opd-zeroing)))
  (defclass opd-omit (spec-operand) nil)
  (defclass opd-dest (spec-operand) nil)
  (defclass opd-src (spec-operand) nil)
  (defclass opd-dest/src (spec-operand) nil)
  (defmethod print-object ((o spec-operand) stream)
    (print-unreadable-object (o stream :type t :identity t)
      (format stream "Variants ~S" (opd-variants o))))
  (defclass spec-opcodes nil
            ((vvvv :initarg :vvvv :reader opc-vvvv)
             (vsib :initarg :vsib :reader opc-vsib)
             (opcodes :initarg :opcodes :reader opc-opcodes)
             (oc0 :initarg :oc0 :reader opc-oc0)
             (encoding :initarg :encoding :reader opc-encoding)
             (modrm :initarg :modrm :reader opc-modrm)
             (mandatory-prefixes :initarg :mandatory-prefixes :reader
              opc-mandatory-prefixes)
             (regcode :initarg :regcode :reader opc-regcode)
             (fields :initarg :fields :reader opc-fields)
             (opsize :initarg :opsize :reader opc-opsize)
             (address-size :initarg :address-size :reader opc-address-size)
             (length :initarg :length :reader opc-length)
             (w :initarg :w :reader opc-w)
             (escape :initarg :escape :reader opc-escape)))
  (defclass variant nil
            ((type :initarg :type :reader vtype)
             (size :initarg :size :reader vsize)))
  (defmethod print-object ((v variant) strm)
    (print-unreadable-object (v strm :type nil :identity nil)
      (princ (vtype v) strm)))
  (defclass variant-mixin (variant) ((value :initarg :value :reader vval)))
  (defclass immediate-variant (variant-mixin) nil)
  (defclass register-variant (variant-mixin) nil)
  (defclass memory-variant (variant)
            ((segment :initarg :segment :reader vseg)
             (index :initarg :index :reader vidx)
             (base :initarg :base :reader vbase)
             (tuple :initarg :tuple :reader vtuple)
             (broadcast :initarg :broadcast :reader vbc)
             (vsibsize :initarg :vsibsize :reader vsibsz)))
  (defmethod print-object ((v memory-variant) s)
    (print-unreadable-object (v s :type nil :identity nil)
      (princ (or (vtype v) 'mem) s)))
  (defvar *i-hash* (make-hash-table :test #'equal :size 1504))
  (defun i-hash-keys ()
    (let ((keys 'nil))
      (maphash (lambda (k v) (declare (ignore v)) (push k keys)) *i-hash*)
      (nreverse keys)))
  (defun get-mnem (mnem) (gethash mnem *i-hash*))
  (defclass register nil
            ((name :initarg :rname :reader rname)
             (ext :initform 0 :reader rext)
             (rex :initform nil :initarg :rrex :reader rrex)
             (code :initarg :rcode :reader rcode)
             (mod :initform 3 :reader rmod) (r/m :initarg :r/m :reader r/m)
             (type :initarg :rtype :reader rtype)))
  (defmethod initialize-instance :after ((r register) &key)
    (cond
     ((and (numberp (rsize r)) (= (rsize r) 8))
      (case (rname r)
        (spl (setf (slot-value r 'code) 4))
        (bpl (setf (slot-value r 'code) 5))
        (sil (setf (slot-value r 'code) 6))
        (dil (setf (slot-value r 'code) 7))
        (otherwise
         (let ((c (rcode r)))
           (when (>= c 12) (setf (slot-value r 'code) (mod (- c 4) 8)))
           (when (>= c 19) (setf (slot-value r 'ext) 1))))))
     ((member (rtype r) '(ymmreg zmmreg xmmreg) :test #'eql)
      (let ((c (rcode r)))
        (setf (slot-value r 'ext) 'avx)
        (when (>= c 8) (setf (slot-value r 'code) (mod c 8)))))
     ((eql (rtype r) 'fpureg)
      (let ((c (rcode r)))
        (when (>= c 8) (setf (slot-value r 'code) (mod c 8)))
        (setf (slot-value r 'size) 80)))
     ((eql (rtype r) 'creg)
      (let ((c (rcode r)))
        (when (>= c 8)
          (setf (slot-value r 'code) (mod c 8))
          (setf (slot-value r 'ext) 1))))
     (t
      (let ((c (rcode r)))
        (when (>= c 8) (setf (slot-value r 'code) (mod c 8)))
        (when (>= c 16) (setf (slot-value r 'ext) 1)))))
    (setf (slot-value r 'r/m) (rcode r)))
  (defclass ea-dest-reg nil nil)
  (defclass genreg (register ea-dest-reg) nil)))