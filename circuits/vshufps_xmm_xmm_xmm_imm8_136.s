  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vunpckhps %xmm3, %xmm2, %xmm4   #  1     0    4      OPC=vunpckhps_xmm_xmm_xmm   
  vunpcklps %xmm3, %xmm2, %xmm6   #  2     0x4  4      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckldq %xmm4, %xmm6, %xmm1  #  3     0x8  4      OPC=vpunpckldq_xmm_xmm_xmm  
  retq                            #  4     0xc  1      OPC=retq                    
                                                                                   
.size target, .-target
