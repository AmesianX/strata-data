  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rax, %rax  #  1     0    3      OPC=xorq_r64_r64  
  movq %rax, %rdi  #  2     0x3  3      OPC=movq_r64_r64  
  clc              #  3     0x6  1      OPC=clc           
  adcb %dil, %cl   #  4     0x7  3      OPC=adcb_r8_r8    
  clc              #  5     0xa  1      OPC=clc           
  adcw %cx, %bx    #  6     0xb  3      OPC=adcw_r16_r16  
  retq             #  7     0xe  1      OPC=retq          
                                                          
.size target, .-target
