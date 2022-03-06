.data

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
 
   sub $s0,$t1,$t0    
   bgt $s0,$zero, imprimirResultado
   
   blt $s0,$zero,contrario 
   
   jal imprimirResultado


#funções
 lerInteiro:
        li $v0, 5 
        syscall 
        jr $ra
 imprimirString:
        li $v0,4
        syscall 
        jr $ra 
  contrario:
      sub $s0,$t0,$t1 
            
 imprimirResultado:
  li $v0,1
  move $a0, $s0 
  syscall

  li $v0,10
  syscall        