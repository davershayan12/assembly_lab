.data
input:.asciiz"enter the number"
result:.asciiz"/n the answer is:"
.text
.globl main
main:
li $t0,0x00000000
li $v0,4
la $a0,input
syscall
li $v0,5
move $t1,$v0
and $t2,$t0,$t1
li $v0,4
la $a0,result
syscall
li $v0, 1
move $a0,$t2
syscall
li $v0,t2
syscall
li $v0,10
syscall 