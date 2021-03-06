  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label           
  vmovddup %ymm2, %ymm3                 #  2     0x5   4      OPC=vmovddup_ymm_ymm      
  callq .move_256_128_ymm3_xmm10_xmm11  #  3     0x9   5      OPC=callq_label           
  vbroadcastsd %xmm9, %ymm1             #  4     0xe   5      OPC=vbroadcastsd_ymm_xmm  
  unpcklpd %xmm11, %xmm1                #  5     0x13  5      OPC=unpcklpd_xmm_xmm      
  retq                                  #  6     0x18  1      OPC=retq                  
                                                                                        
.size target, .-target
