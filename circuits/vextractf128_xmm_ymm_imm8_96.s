  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                  
.target:                        #        0    0      OPC=<label>             
  vmaxss %xmm1, %xmm1, %xmm11   #  1     0    4      OPC=vmaxss_xmm_xmm_xmm  
  vmovaps %ymm11, %ymm14        #  2     0x4  5      OPC=vmovaps_ymm_ymm     
  vminss %xmm14, %xmm14, %xmm1  #  3     0x9  5      OPC=vminss_xmm_xmm_xmm  
  retq                          #  4     0xe  1      OPC=retq                
                                                                             
.size target, .-target