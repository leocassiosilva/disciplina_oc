.data
#variavei para receber os valores 
MsgUser1: .asciiz 
MsgUser2: .asciiz 

.text
la $a0, MsgUser1
  jal imprimirString
  jal lerInteiro
  
  move $t0,$v0
  
la $a0, MsgUser2
  jal imprimirString 
  jal lerInteiro  
  
  move $t1,$v0
  
  div $t0, $t1
  
  mfhi $s1
  
  li $v0, 1
move $a0,$s1 
syscall

li $v0,10
  syscall

lerInteiro:
        li $v0, 5 
        syscall 
        jr $ra
         imprimirString:
        li $v0,4
        syscall 
        jr $ra
imprimirResultado:
  li $v0,1
  move $a0, $t1         
