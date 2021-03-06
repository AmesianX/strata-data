  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  callq .move_128_64_xmm3_xmm12_xmm13             #  2     0x5   5      OPC=callq_label         
  vmaxps %ymm3, %ymm3, %ymm1                      #  3     0xa   4      OPC=vmaxps_ymm_ymm_ymm  
  vmovdqu %xmm13, %xmm10                          #  4     0xe   5      OPC=vmovdqu_xmm_xmm     
  movddup %xmm3, %xmm8                            #  5     0x13  5      OPC=movddup_xmm_xmm     
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x18  5      OPC=callq_label         
  retq                                            #  7     0x1d  1      OPC=retq                
                                                                                                
.size target, .-target
