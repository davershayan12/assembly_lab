.data
msg1: .asciiz "Enter 3 integer for 1st addition "
msg2: .asciiz "Enter 3 integer for 2nd addition "
msg3: .asciiz "answer for 2nd addition "
msg4: .asciiz "answer for 1st addition "

.text
.globl main 
main:
la $a0,msg1
li $v0,4
syscall

li $v0,5
syscall
move $t0,$v0

li $v0,5
syscall
move $t1,$v0

li $v0,5
syscall
move $t2,$v0


la $a0,msg1
li $v0,4
syscall

li $v0,5
syscall
move $t3,$v0

li $v0,5
syscall
move $t4,$v0

li $v0,5
syscall
move $t5,$v0

add $t6,$t0,$t1
add $t6,$t6,$t2

add $t7,$t3,$t4
add $t7,$t7,$t5

la $a0,msg3
li $v0,4
syscall

move $a0,$t6
li $v0,1
syscall

la $a0,msg4
li $v0,4
syscall

move $a0,$t7
li $v0,1
syscall

li $v0,10
syscall

