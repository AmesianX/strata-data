  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vfmsub213pd %xmm1, %xmm2, %xmm3  #  1     0    5      OPC=vfmsub213pd_xmm_xmm_xmm  
  vsubss %xmm3, %xmm1, %xmm1       #  2     0x5  4      OPC=vsubss_xmm_xmm_xmm       
  movsd %xmm3, %xmm1               #  3     0x9  4      OPC=movsd_xmm_xmm            
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
