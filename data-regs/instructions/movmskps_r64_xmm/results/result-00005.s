  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode                 
.target:                 #        0    0      OPC=<label>            
  vmovmskps %xmm1, %rbx  #  1     0    4      OPC=vmovmskps_r64_xmm  
  retq                   #  2     0x4  1      OPC=retq               
                                                                     
.size target, .-target