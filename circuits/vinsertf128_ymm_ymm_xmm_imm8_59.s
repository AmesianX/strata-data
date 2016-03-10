  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode               
.target:                                #        0    0      OPC=<label>          
  movdqa %xmm3, %xmm13                  #  1     0    5      OPC=movdqa_xmm_xmm   
  vmovapd %ymm2, %ymm12                 #  2     0x5  4      OPC=vmovapd_ymm_ymm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  3     0x9  5      OPC=callq_label      
  retq                                  #  4     0xe  1      OPC=retq             
                                                                                  
.size target, .-target
