  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vminss %xmm2, %xmm2, %xmm6    #  1     0    4      OPC=vminss_xmm_xmm_xmm    
  vmovhlps %xmm6, %xmm2, %xmm2  #  2     0x4  4      OPC=vmovhlps_xmm_xmm_xmm  
  unpcklpd %xmm2, %xmm1         #  3     0x8  4      OPC=unpcklpd_xmm_xmm      
  retq                          #  4     0xc  1      OPC=retq                  
                                                                               
.size target, .-target
