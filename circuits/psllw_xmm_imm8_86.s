  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode              
.target:                             #        0    0      OPC=<label>         
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0    5      OPC=callq_label     
  movapd %xmm9, %xmm1                #  2     0x5  5      OPC=movapd_xmm_xmm  
  andnpd %xmm1, %xmm1                #  3     0xa  4      OPC=andnpd_xmm_xmm  
  retq                               #  4     0xe  1      OPC=retq            
                                                                              
.size target, .-target
