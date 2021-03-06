  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm5, %xmm1, %xmm8                 #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11           #  3     0x9   5      OPC=callq_label            
  vunpckhps %xmm1, %xmm8, %xmm10                #  4     0xe   4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1           #  5     0x12  5      OPC=callq_label            
  retq                                          #  6     0x17  1      OPC=retq                   
                                                                                                 
.size target, .-target
