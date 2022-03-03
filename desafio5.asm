.text 
	#ler numero inteiro
	li $t0, 6
	li $t1, 5

	
	bgt $t0, $t1, imprimirMaior
	blt $t0, $t1, imprimirMenor
	
	imprimirMaior:
		li $v0, 1
		move $a0, $t0
		syscall 
	
	
	imprimirMenor:
		li $v0, 1
		move $a0, $t1
		syscall 
		
	#imprimirResultado1:
		#li $v0, 1
		#move $a0, $t0
		#syscall 	
		
	