#������ִ����Ҫ16��ָ�R��5����I��11������Ҫ���ڲ���beq��bneָ����Ƿ���ȷ
.text
addi $s0,$zero,1
addi $s2,$zero,255
addi $s1,$zero,1
addi $s3,$zero,3
4 beq $s0, $s2, Next1
5 beq $s0, $s0, Next1
addi $s1,$zero,1    #����ִ��
addi $s2,$zero,2
addi $s3,$zero,3

Next1:
9 add    $a0,$0,$s0       #display $s0
 addi   $v0,$0,1         # system call for exit
 syscall                 # we are out of here.  DISP: disp $r0, 0  $s0���ܻ�������أ�ע��

12 bne $s1, $s1, Next2
13 bne $s1, $s2, Next2

 addi $s1,$zero,1    #����ִ��
 addi $s2,$zero,2
 addi $s3,$zero,3

Next2:
17 add    $a0,$0,$s3       #display $s0
 addi   $v0,$0,1         # system call for exit
 syscall                 # we are out of here.  DISP: disp $r0, 0  $s0���ܻ�������أ�ע��

 addi   $v0,$zero,10         # system call for exit
21 syscall                  # we are out of here.   

