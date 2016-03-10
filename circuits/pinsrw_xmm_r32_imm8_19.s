  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  orb %bl, %bl                       #  1     0     2      OPC=orb_r8_r8    
  callq .move_016_008_bx_r8b_r9b     #  2     0x2   5      OPC=callq_label  
  callq .move_r8b_to_byte_6_of_ymm1  #  3     0x7   5      OPC=callq_label  
  callq .move_r9b_to_byte_7_of_ymm1  #  4     0xc   5      OPC=callq_label  
  retq                               #  5     0x11  1      OPC=retq         
                                                                            
.size target, .-target