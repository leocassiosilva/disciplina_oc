.data 
  	num: .word 10 #valor inteiro
.text 
	li $v0,1
	lw $a0, num
	syscall