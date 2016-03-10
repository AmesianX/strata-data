  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  movdqa %xmm3, %xmm9                  #  2     0x5   5      OPC=movdqa_xmm_xmm      
  vminsd %xmm2, %xmm10, %xmm8          #  3     0xa   4      OPC=vminsd_xmm_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1   #  4     0xe   5      OPC=callq_label         
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label         
  retq                                 #  6     0x18  1      OPC=retq                
                                                                                     
.size target, .-target