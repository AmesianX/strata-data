  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                       
.target:                                #        0    0      OPC=<label>                  
  vpunpckhqdq %ymm3, %ymm2, %ymm1       #  1     0    4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x4  5      OPC=callq_label              
  movsd %xmm10, %xmm1                   #  3     0x9  5      OPC=movsd_xmm_xmm            
  retq                                  #  4     0xe  1      OPC=retq                     
                                                                                          
.size target, .-target
