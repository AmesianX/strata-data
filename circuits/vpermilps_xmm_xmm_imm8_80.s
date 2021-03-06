  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label       
  vzeroall                                        #  2     0x5   3      OPC=vzeroall          
  callq .move_064_128_r8_r9_xmm1                  #  3     0x8   5      OPC=callq_label       
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  4     0xd   5      OPC=callq_label       
  unpcklps %xmm9, %xmm1                           #  5     0x12  4      OPC=unpcklps_xmm_xmm  
  movsldup %xmm1, %xmm12                          #  6     0x16  5      OPC=movsldup_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1            #  7     0x1b  5      OPC=callq_label       
  retq                                            #  8     0x20  1      OPC=retq              
                                                                                              
.size target, .-target
