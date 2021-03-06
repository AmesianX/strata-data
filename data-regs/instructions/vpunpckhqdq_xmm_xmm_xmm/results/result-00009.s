  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm3_xmm8_xmm9    #  1     0     5      OPC=callq_label              
  vmovdqa %xmm2, %xmm1                 #  2     0x5   4      OPC=vmovdqa_xmm_xmm          
  callq .move_128_64_xmm1_xmm12_xmm13  #  3     0x9   5      OPC=callq_label              
  vpunpcklqdq %xmm9, %xmm13, %xmm1     #  4     0xe   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                 #  5     0x13  1      OPC=retq                     
                                                                                          
.size target, .-target
