  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode               
.target:                                          #        0     0      OPC=<label>          
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7    #  2     0x5   5      OPC=callq_label      
  callq .move_64_128_xmm8_xmm9_xmm1               #  3     0xa   5      OPC=callq_label      
  movlhps %xmm5, %xmm1                            #  4     0xf   3      OPC=movlhps_xmm_xmm  
  retq                                            #  5     0x12  1      OPC=retq             
                                                                                             
.size target, .-target
