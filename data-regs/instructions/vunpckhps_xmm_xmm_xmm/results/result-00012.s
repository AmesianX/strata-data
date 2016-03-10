  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  vmovdqu %xmm2, %xmm1   #  1     0    4      OPC=vmovdqu_xmm_xmm   
  unpckhps %xmm3, %xmm1  #  2     0x4  3      OPC=unpckhps_xmm_xmm  
  retq                   #  3     0x7  1      OPC=retq              
                                                                    
.size target, .-target