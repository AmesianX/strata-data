  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovddup %ymm2, %ymm14            #  1     0     4      OPC=vmovddup_ymm_ymm         
  vpunpckhdq %ymm2, %ymm14, %ymm13  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpcklpd %ymm13, %ymm14, %ymm0   #  3     0x8   5      OPC=vunpcklpd_ymm_ymm_ymm    
  vpunpckhqdq %ymm0, %ymm13, %ymm1  #  4     0xd   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
