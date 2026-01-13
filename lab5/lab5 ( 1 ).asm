.data
prompt:.asciiz"enter your number"
result:.asciiz"the sum is: "
final:.asciiz"\n program is finish"
.text

main:
li $v0,4
la $a0,prompt
li $v0,5
syscall
blez $v0,end
li $t0,0
loop:
add $t0,$t0,$v0
add $v0,$v0,-1
bnez $v0,loop
li $v0,4
la $a0,result
syscall
li $v0,1
move $a0,$t0
syscall
end:
li $v0,4
la $a0,final

syscall
li $v0,10
syscall
