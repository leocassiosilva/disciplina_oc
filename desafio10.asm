.data
#variaveis que serão utilizadas
var1: .word 5
var2: .word 7 

.text
lw $t0,var1 
lw $t1,var2 

multu $s0,$t1,$t0

move $a0,$s0 

li $v0,1 
