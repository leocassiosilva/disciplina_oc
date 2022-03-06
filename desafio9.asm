.data 
	espaco: .asciiz " "
	go: .asciiz "Go!"
.text
		
	#ler o numero
	li $v0, 5
	syscall 
	
	move $t0, $v0 #valor lido
	li $t1, 1 #comparação
	
	laco: 
		bgt $t1, $t0, caiFora #Enquanto for menor ou igual
		
		#imprimir $t11
		li $v0,1
		move $a0, $t0 #t0 valor que passa para o registrador
		syscall 
		
		#imprimir espaço em branco
		li $v0, 4
		la $a0, espaco
		syscall 
		
		addi $t0,$t0, -1 #decrementar
		j laco
	caiFora: 
	
	li $v0, 4 
	la $a0, go
	syscall