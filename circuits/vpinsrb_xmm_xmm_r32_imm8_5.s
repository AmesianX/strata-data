  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r10_r11   #  1     0     5      OPC=callq_label  
  vzeroall                           #  2     0x5   3      OPC=vzeroall     
  callq .move_032_016_ebx_r8w_r9w    #  3     0x8   5      OPC=callq_label  
  callq .move_064_128_r10_r11_xmm1   #  4     0xd   5      OPC=callq_label  
  callq .move_r8b_to_byte_5_of_ymm1  #  5     0x12  5      OPC=callq_label  
  retq                               #  6     0x17  1      OPC=retq         
                                                                            
.size target, .-target
