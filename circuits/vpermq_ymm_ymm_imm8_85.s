  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r12_r13     #  1     0     5      OPC=callq_label           
  callq .move_064_128_r12_r13_xmm1     #  2     0x5   5      OPC=callq_label           
  callq .move_128_64_xmm1_xmm12_xmm13  #  3     0xa   5      OPC=callq_label           
  vbroadcastsd %xmm13, %ymm1           #  4     0xf   5      OPC=vbroadcastsd_ymm_xmm  
  retq                                 #  5     0x14  1      OPC=retq                  
                                                                                       
.size target, .-target
