  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  orps %xmm1, %xmm1                   #  1     0     3      OPC=orps_xmm_xmm  
  callq .move_byte_2_of_rbx_to_r8b    #  2     0x3   5      OPC=callq_label   
  callq .move_r8b_to_byte_14_of_ymm1  #  3     0x8   5      OPC=callq_label   
  callq .move_016_008_bx_r8b_r9b      #  4     0xd   5      OPC=callq_label   
  callq .move_r9b_to_byte_13_of_ymm1  #  5     0x12  5      OPC=callq_label   
  callq .move_r8b_to_byte_12_of_ymm1  #  6     0x17  5      OPC=callq_label   
  callq .move_byte_3_of_rbx_to_r9b    #  7     0x1c  5      OPC=callq_label   
  callq .move_r9b_to_byte_15_of_ymm1  #  8     0x21  5      OPC=callq_label   
  retq                                #  9     0x26  1      OPC=retq          
                                                                              
.size target, .-target
