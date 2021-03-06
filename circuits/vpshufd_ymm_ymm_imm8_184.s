  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovsldup %ymm2, %ymm9            #  1     0     4      OPC=vmovsldup_ymm_ymm        
  vpunpcklqdq %ymm9, %ymm2, %ymm10  #  2     0x4   5      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhps %ymm2, %ymm10, %ymm14   #  3     0x9   4      OPC=vunpckhps_ymm_ymm_ymm    
  vunpckhps %ymm9, %ymm14, %ymm1    #  4     0xd   5      OPC=vunpckhps_ymm_ymm_ymm    
  retq                              #  5     0x12  1      OPC=retq                     
                                                                                       
.size target, .-target
