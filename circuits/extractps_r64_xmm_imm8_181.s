  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm3                       #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  cvtsd2ss %xmm1, %xmm3                           #  2     0x5   4      OPC=cvtsd2ss_xmm_xmm      
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label           
  movq %xmm11, %rbx                               #  4     0xe   5      OPC=movq_r64_xmm          
  retq                                            #  5     0x13  1      OPC=retq                  
                                                                                                  
.size target, .-target
