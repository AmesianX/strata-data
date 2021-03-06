  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  vfnmadd132pd %ymm3, %ymm1, %ymm2              #  1     0     5      OPC=vfnmadd132pd_ymm_ymm_ymm  
  vmaxps %ymm2, %ymm2, %ymm1                    #  2     0x5   4      OPC=vmaxps_ymm_ymm_ymm        
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label               
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xe   5      OPC=callq_label               
  retq                                          #  5     0x13  1      OPC=retq                      
                                                                                                    
.size target, .-target
