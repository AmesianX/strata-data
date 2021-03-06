  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label              
  vbroadcastsd %xmm9, %ymm9             #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm     
  vpunpcklqdq %ymm9, %ymm2, %ymm1       #  3     0xa   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  4     0xf   5      OPC=callq_label              
  callq .move_64_128_xmm12_xmm13_xmm1   #  5     0x14  5      OPC=callq_label              
  retq                                  #  6     0x19  1      OPC=retq                     
                                                                                           
.size target, .-target
