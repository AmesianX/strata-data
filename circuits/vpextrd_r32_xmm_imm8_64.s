  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vmovaps %xmm1, %xmm4  #  1     0    4      OPC=vmovaps_xmm_xmm  
  vmovd %xmm4, %ebx     #  2     0x4  4      OPC=vmovd_r32_xmm    
  retq                  #  3     0x8  1      OPC=retq             
                                                                  
.size target, .-target
