  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpbroadcastq %xmm2, %ymm4        #  1     0    5      OPC=vpbroadcastq_ymm_xmm     
  movshdup %xmm2, %xmm5            #  2     0x5  4      OPC=movshdup_xmm_xmm         
  vpunpcklqdq %xmm4, %xmm5, %xmm1  #  3     0x9  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
