  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vunpckhpd %xmm12, %xmm3, %xmm5        #  2     0x5   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovlhps %xmm5, %xmm2, %xmm12         #  3     0xa   4      OPC=vmovlhps_xmm_xmm_xmm   
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xe   5      OPC=callq_label            
  retq                                  #  5     0x13  1      OPC=retq                   
                                                                                         
.size target, .-target
