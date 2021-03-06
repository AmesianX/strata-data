  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label       
  unpckhpd %xmm3, %xmm3             #  2     0x5   4      OPC=unpckhpd_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13  #  3     0x9   5      OPC=callq_label       
  vzeroall                          #  4     0xe   3      OPC=vzeroall          
  movq %r12, %r11                   #  5     0x11  3      OPC=movq_r64_r64      
  callq .move_064_128_r10_r11_xmm1  #  6     0x14  5      OPC=callq_label       
  retq                              #  7     0x19  1      OPC=retq              
                                                                                
.size target, .-target
