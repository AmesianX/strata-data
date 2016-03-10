  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vunpckhps %xmm2, %xmm3, %xmm0  #  1     0    4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovdqu %xmm0, %xmm1           #  2     0x4  4      OPC=vmovdqu_xmm_xmm        
  vmovsd %xmm2, %xmm1, %xmm1     #  3     0x8  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target