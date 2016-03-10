  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  vmovdqa %ymm1, %ymm6  #  1     0    4      OPC=vmovdqa_ymm_ymm  
  vmovupd %xmm6, %xmm1  #  2     0x4  4      OPC=vmovupd_xmm_xmm  
  retq                  #  3     0x8  1      OPC=retq             
                                                                  
.size target, .-target