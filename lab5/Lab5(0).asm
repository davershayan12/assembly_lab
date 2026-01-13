.data
msg:.asciiz"number is greater then or equal to 0"
.text
main:
li $t1,50
bgez $t1,PrintMsg
li $v0,10
syscall
PrintMsg:
li $v0,4
la $a0,msg
syscall
