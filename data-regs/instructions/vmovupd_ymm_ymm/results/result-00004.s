  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP  Bytes  Opcode                  
.target:                             #        0    0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9     #  1     0    5      OPC=callq_label         
  vminps %ymm2, %ymm2, %ymm1         #  2     0x5  4      OPC=vminps_ymm_ymm_ymm  
  callq .move_r8b_to_byte_0_of_ymm1  #  3     0x9  5      OPC=callq_label         
  retq                               #  4     0xe  1      OPC=retq                
                                                                                  
.size target, .-target
