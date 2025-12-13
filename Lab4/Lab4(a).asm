.data
msg1 .asciiz "Enter an integer: "
msg2 .asciiz "The number is Even."
msg3 .asciiz "The number is Odd."
msg4 .asciiz "The number multiplied by 3 is: "
Newline .asciiz "\n"

.text
.globl main
main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $s0, $v0

    li $t1, 3
    mult $s0, $t1
    mflo $s1

    andi $t2, $s0, 1

    bne $t2, $zero, Is_Odd
    
    li $v0, 4
    la $a0, msg4
    syscall
    
    li $v0, 1
    move $a0, $s1
    syscall

    li $v0, 4
    la $a0, Newline
    syscall

    li $v0, 4
    la $a0, msg2
    syscall
    


Is_Odd:
    li $v0, 4
    la $a0, msg4
    syscall
    
    li $v0, 1
    move $a0, $s1
    syscall

    li $v0, 4
    la $a0, Newline
    syscall

    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 10
    syscall
