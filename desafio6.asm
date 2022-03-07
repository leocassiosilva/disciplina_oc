.data

MsgUser1: .asciiz 
	myArray:
	.align 2
	.space 12 
.text

  li $t1,0 
  li $t2,12 
 
  
  loop:
  beq $t1,$t2, saiDoLoop
  
   li $v0,4
   la $a0,MsgUser1
   syscall 
  
   li $v0, 5 
   syscall 
   
   move $t0,$v0
  sw $t0, myArray($t1)
  beq $t1,$zero,com 
  lw $t4, myArray($t1)
  bge $t4,$t3, com 
  
  addi $t1,$t1,4
  j loop 
  
  saiDoLoop: 
  
        li $v0,1
        move $a0, $t3
        syscall
  
        
        li $v0,10
        syscall 


com:
  lw $t3, myArray($t1)
  jal pivo 
  
  pivo: 
  addi $t1,$t1,4 
  jal loop 
  