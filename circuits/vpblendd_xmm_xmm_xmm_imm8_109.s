  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                  
.target:                               #        0    0      OPC=<label>             
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0    5      OPC=callq_label         
  vmovss %xmm3, %xmm2, %xmm1           #  2     0x5  4      OPC=vmovss_xmm_xmm_xmm  
  unpcklpd %xmm11, %xmm1               #  3     0x9  5      OPC=unpcklpd_xmm_xmm    
  retq                                 #  4     0xe  1      OPC=retq                
                                                                                    
.size target, .-target
