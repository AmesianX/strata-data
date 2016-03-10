  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastd %xmm10, %ymm9                      #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm  
  vmaxsd %xmm2, %xmm2, %xmm13                     #  3     0xa   4      OPC=vmaxsd_xmm_xmm_xmm    
  vandps %xmm2, %xmm13, %xmm8                     #  4     0xe   4      OPC=vandps_xmm_xmm_xmm    
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x12  5      OPC=callq_label           
  retq                                            #  6     0x17  1      OPC=retq                  
                                                                                                  
.size target, .-target