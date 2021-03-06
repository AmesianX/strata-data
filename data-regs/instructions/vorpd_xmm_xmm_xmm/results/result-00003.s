  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9    #  1     0     5      OPC=callq_label           
  callq .move_128_064_xmm3_r12_r13  #  2     0x5   5      OPC=callq_label           
  orq %r9, %r13                     #  3     0xa   3      OPC=orq_r64_r64           
  vbroadcastss %xmm3, %xmm1         #  4     0xd   5      OPC=vbroadcastss_xmm_xmm  
  orq %r8, %r12                     #  5     0x12  3      OPC=orq_r64_r64           
  callq .move_064_128_r12_r13_xmm1  #  6     0x15  5      OPC=callq_label           
  retq                              #  7     0x1a  1      OPC=retq                  
                                                                                    
.size target, .-target
