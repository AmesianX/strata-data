  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpbroadcastq %xmm2, %ymm5       #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  vbroadcastsd %xmm1, %ymm3       #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhps %xmm5, %xmm3, %xmm2   #  3     0xa   4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  4     0xe   5      OPC=callq_label            
  callq .move_064_128_r8_r9_xmm1  #  5     0x13  5      OPC=callq_label            
  retq                            #  6     0x18  1      OPC=retq                   
                                                                                   
.size target, .-target
