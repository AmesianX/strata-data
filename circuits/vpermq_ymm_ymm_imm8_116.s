  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vbroadcastsd %xmm11, %ymm4           #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhpd %ymm4, %ymm2, %ymm1        #  3     0xa   4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label            
  retq                                 #  5     0x13  1      OPC=retq                   
                                                                                        
.size target, .-target
