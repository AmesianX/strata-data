  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm13  #  1     0    4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpcklqdq %ymm2, %ymm13, %ymm1  #  2     0x4  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  movupd %xmm2, %xmm1               #  3     0x8  4      OPC=movupd_xmm_xmm           
  retq                              #  4     0xc  1      OPC=retq                     
                                                                                      
.size target, .-target
