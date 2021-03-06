  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  callq .move_byte_13_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label   
  xorq %rbx, %rbx                     #  2     0x5   3      OPC=xorq_r64_r64  
  callq .read_zf_into_rbx             #  3     0x8   5      OPC=callq_label   
  callq .move_byte_12_of_ymm1_to_r8b  #  4     0xd   5      OPC=callq_label   
  callq .move_008_016_r8b_r9b_bx      #  5     0x12  5      OPC=callq_label   
  retq                                #  6     0x17  1      OPC=retq          
                                                                              
.size target, .-target
