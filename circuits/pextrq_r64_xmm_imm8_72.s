  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text              #  Line  RIP  Bytes  Opcode            
.target:            #        0    0      OPC=<label>       
  movq %xmm1, %rbx  #  1     0    5      OPC=movq_r64_xmm  
  retq              #  2     0x5  1      OPC=retq          
                                                           
.size target, .-target