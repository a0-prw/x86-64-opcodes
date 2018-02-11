x86-64-opcodes is automatically generated from Mahdi Safsafi's
  opcodesDB (https://github.com/MahdiSafsafi/opcodesDB).

This system provides access to information about X86-64 opcodes and
registers from Common Lisp. If this system is loaded then 

(gethash "add" *i-hash*)

will return a list of all instructions associated with the mnemonic
"add", etc.

X86-64 registers are defined as constants with the same name as is
generally used by assembly language programmers.  I decided that
deviation from the Common Lisp convention of bracketing constants with
'+ was justified, in this case.

Read the file "x86-64-classes.lisp" to learn about classes, slots
and slot accessors. Read Mahdi Safsafi's documentation and the manuals
from the CPU manufacturers for more information.
