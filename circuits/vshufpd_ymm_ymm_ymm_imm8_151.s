  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  unpckhpd %xmm2, %xmm3            #  1     0    4      OPC=unpckhpd_xmm_xmm         
  vpunpckhqdq %ymm3, %ymm2, %ymm0  #  2     0x4  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpcklpd %ymm3, %ymm0, %ymm1    #  3     0x8  4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                             #  4     0xc  1      OPC=retq                     
                                                                                     
.size target, .-target
