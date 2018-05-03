  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                        
.target:                              #        0    0      OPC=<label>                   
  vfnmsub132pd %xmm3, %xmm1, %xmm2    #  1     0    5      OPC=vfnmsub132pd_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm8_xmm9  #  2     0x5  5      OPC=callq_label               
  callq .move_128_256_xmm8_xmm9_ymm1  #  3     0xa  5      OPC=callq_label               
  retq                                #  4     0xf  1      OPC=retq                      
                                                                                         
.size target, .-target
