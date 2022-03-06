.data
vir: .asciiz "," 
.text
li $t0,32

li $t1,5 

div $t0, $t1 
mflo $s0 
mfhi $s1 

li $v0, 1
move $a0,$s0 
syscall

la $a0, vir
li $v0,4 
syscall

li $v0, 1
move $a0, $s1 
syscall
