  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpcklqdq %ymm2, %ymm3, %ymm1  #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhps %ymm2, %ymm1, %ymm8    #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm    
  vunpckhps %ymm1, %ymm8, %ymm7    #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm    
  vunpcklpd %ymm3, %ymm7, %ymm1    #  4     0xc   4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target
