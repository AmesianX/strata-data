  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vunpcklps %xmm10, %xmm8, %xmm8                  #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm   
  vpunpckldq %xmm8, %xmm2, %xmm4                  #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhps %xmm2, %xmm4, %xmm1                   #  4     0xf   4      OPC=vunpckhps_xmm_xmm_xmm   
  retq                                            #  5     0x13  1      OPC=retq                    
                                                                                                    
.size target, .-target
