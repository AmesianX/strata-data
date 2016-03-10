  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode           
.target:                                          #        0     0      OPC=<label>      
  callq .move_016_008_bx_r8b_r9b                  #  1     0     5      OPC=callq_label  
  callq .move_r9b_to_byte_3_of_ymm1               #  2     0x5   5      OPC=callq_label  
  callq .move_r8b_to_byte_2_of_ymm1               #  3     0xa   5      OPC=callq_label  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  4     0xf   5      OPC=callq_label  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x14  5      OPC=callq_label  
  retq                                            #  6     0x19  1      OPC=retq         
                                                                                         
.size target, .-target