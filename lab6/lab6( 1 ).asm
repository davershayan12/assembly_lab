.data
input:.asciiz"enter your number"
result:.asciiz"/n the answer"
.text
main:
li $t0,0xffffffff
move $a0,$t0
la $a0, input
li $v0,4
syscall
li $v0,5
move $t1,$v0
and $t2,$t0,$t1
li $v0,4
la $a0,result
syscall
li $v0,1
move $a0,$t2
syscall
li $v0,10
syscall