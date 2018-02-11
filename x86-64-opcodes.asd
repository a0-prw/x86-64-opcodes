
(asdf/parse-defsystem:defsystem :x86-64-opcodes
  :description
  "X86-64 opcodes DB for Common Lisp"
  :author
  "Peter Wood (70 65 74 65 5F 77 6F 6F 64 40 72 75 6E 62 6F 78 2E 63 6F 6D)"
  :license
  "BSD 3 clause"
  :serial
  t
  :depends-on
  nil
  :components
  ((:file "package") (:file "x86-64-opcodes-classes")
   (:file "x86-64-opcodes-registers") (:file "x86-64-opcodes-hash")
   (:file "x86-64-opcodes-export")))