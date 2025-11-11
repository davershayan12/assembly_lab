.data
msg1: .asciiz "enter your number 1:"
msg2: .asciiz "enter your number 2"
msg3: .asciiz "enter your number 3:"
output: .asciiz "sum:"
.text
.globl main
main:
la $a0,msg1
li $v0,4
syscall

li $v0,5
syscall
move $t0,$v0

la $a0,msg2
li $v0,4
syscall

li $v0,5
syscall
move $t1,$v0

la $a0,msg3
li $v0,4
syscall

li $v0,5
syscall
move $t2,$v0

add $t3,$t0,$t1

add $t3,$t3,$t2


la $a0,output
li $v0,4
syscall

move $a0,$t3
li $v0,1
syscall


li $v0,10


