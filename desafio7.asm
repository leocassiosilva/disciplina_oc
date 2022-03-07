.data

MsgUser1: .asciiz 
esp: .asciiz " "
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
   addi $t1,$t1,4
   j loop
   saiDoLoop:

   li $t1,0
   li $t2,12
   loopExterno:
     beq $t1,$t2, saiDoLoopExterno 
     addi $t3,$t1,4
     loopInterno:
     	beq $t3,$t2, saiDoLoopInterno 
     	lw $t4, myArray($t1)
     	lw $t5, myArray($t3)
     	bgt $t4,$t5, com
     	addi $t3,$t3,4
     	j loopInterno
     saiDoLoopInterno:
     	li $t3,0	
     addi $t1,$t1,4
   j loopExterno  
   
   saiDoLoopExterno:
    li $t1,0
    loopImprimi:
      beq $t1,$t2, saiDoLoopImprimi
      lw $t3,myArray($t1)
      
     li $v0,1
     move $a0, $t3
     syscall
      
      li $v0,4
      la $a0,esp
      syscall
      addi $t1,$t1,4
    j loopImprimi
    saiDoLoopImprimi:

  li $v0,10
  syscall

   com:
   move $t6,$t5
   move $t5,$t4
   move $t4,$t6
   sw $t4, myArray($t1)
   sw $t5, myArray($t3)
   jal pivo
   
   pivo:
   addi $t3,$t3,4 
   jal loopInterno
