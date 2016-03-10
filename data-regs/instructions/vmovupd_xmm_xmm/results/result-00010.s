  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode           
.target:                              #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r10_r11    #  1     0     5      OPC=callq_label  
  vzeroall                            #  2     0x5   3      OPC=vzeroall     
  callq .move_byte_17_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label  
  callq .move_r8b_to_byte_19_of_ymm1  #  4     0xd   5      OPC=callq_label  
  callq .move_064_128_r10_r11_xmm1    #  5     0x12  5      OPC=callq_label  
  callq .move_r8b_to_byte_16_of_ymm1  #  6     0x17  5      OPC=callq_label  
  retq                                #  7     0x1c  1      OPC=retq         
                                                                             
.size target, .-target