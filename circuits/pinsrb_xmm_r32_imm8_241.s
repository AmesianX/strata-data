  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode            
.target:                             #        0    0      OPC=<label>       
  movw %bx, %r9w                     #  1     0    4      OPC=movw_r16_r16  
  callq .move_r9b_to_byte_1_of_ymm1  #  2     0x4  5      OPC=callq_label   
  retq                               #  3     0x9  1      OPC=retq          
                                                                            
.size target, .-target
