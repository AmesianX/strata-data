  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  callq .move_128_64_xmm3_xmm10_xmm11   #  1     0     5      OPC=callq_label           
  vmovapd %ymm2, %ymm10                 #  2     0x5   4      OPC=vmovapd_ymm_ymm       
  vmovlhps %xmm11, %xmm3, %xmm11        #  3     0x9   5      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xe   5      OPC=callq_label           
  retq                                  #  5     0x13  1      OPC=retq                  
                                                                                        
.size target, .-target
