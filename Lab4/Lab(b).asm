.data
msg1: .asciiz "enter the first number:"
msg2: .asciiz "enter the second number:"
msg3: .asciiz "Select an operation. Addition. Subtraction. Multiplication\n"
msg4: .asciiz "1, 2, or 3: "
msg5: .asciiz "Result: "

.text
.globl main
main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $s0, $v0

    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $s1, $v0

    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 5
    syscall
    move $s2, $v0

    li $t0, 1
    beq $s2, $t0, Do_Add

    li $t0, 2
    beq $s2, $t0, Do_Sub

    li $t0, 3
    beq $s2, $t0, Do_Mult

    j Exit_Program

Do_Add:
    addu $s3, $s0, $s1
    j Display_Result

Do_Sub:
    sub $s3, $s0, $s1
    j Display_Result

Do_Mult:
    mult $s0, $s1
    mfhi $t0
    mflo $s3
    j Display_Result

Display_Result:
    li $v0, 4
    la $a0, msg5
    syscall

    li $v0, 1
    move $a0, $s3
    syscall

Exit_Program:
    li $v0, 10
    syscall