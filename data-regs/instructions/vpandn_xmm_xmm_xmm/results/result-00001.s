  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                   
.target:                             #        0     0      OPC=<label>              
  vandnps %xmm3, %xmm2, %xmm3        #  1     0     4      OPC=vandnps_xmm_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13   #  2     0x4   5      OPC=callq_label          
  vzeroall                           #  3     0x9   3      OPC=vzeroall             
  callq .move_064_128_r12_r13_xmm1   #  4     0xc   5      OPC=callq_label          
  callq .move_byte_4_of_ymm1_to_r9b  #  5     0x11  5      OPC=callq_label          
  callq .move_r9b_to_byte_4_of_ymm1  #  6     0x16  5      OPC=callq_label          
  retq                               #  7     0x1b  1      OPC=retq                 
                                                                                    
.size target, .-target