  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label      
  vzeroall                        #  2     0x5   3      OPC=vzeroall         
  callq .move_064_128_r8_r9_xmm3  #  3     0x8   5      OPC=callq_label      
  vsqrtpd %ymm3, %ymm1            #  4     0xd   4      OPC=vsqrtpd_ymm_ymm  
  retq                            #  5     0x11  1      OPC=retq             
                                                                             
.size target, .-target
