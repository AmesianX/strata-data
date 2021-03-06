  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode               
.target:             #        0    0      OPC=<label>          
  movswq %bx, %rsp   #  1     0    4      OPC=movswq_r64_r16   
  movslq %esp, %rbp  #  2     0x4  3      OPC=movslq_r64_r32   
  sbbw %bx, %bp      #  3     0x7  3      OPC=sbbw_r16_r16     
  cmovnsw %cx, %bx   #  4     0xa  4      OPC=cmovnsw_r16_r16  
  retq               #  5     0xe  1      OPC=retq             
                                                               
.size target, .-target
