  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r12_r13   #  1     0     5      OPC=callq_label              
  vzeroall                           #  2     0x5   3      OPC=vzeroall                 
  callq .move_016_008_bx_r8b_r9b     #  3     0x8   5      OPC=callq_label              
  vfmadd132ss %xmm4, %xmm15, %xmm1   #  4     0xd   5      OPC=vfmadd132ss_xmm_xmm_xmm  
  callq .move_064_128_r12_r13_xmm1   #  5     0x12  5      OPC=callq_label              
  callq .move_r8b_to_byte_4_of_ymm1  #  6     0x17  5      OPC=callq_label              
  callq .move_r9b_to_byte_5_of_ymm1  #  7     0x1c  5      OPC=callq_label              
  retq                               #  8     0x21  1      OPC=retq                     
                                                                                        
.size target, .-target
