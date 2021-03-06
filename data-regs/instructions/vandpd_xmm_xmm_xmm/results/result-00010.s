  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  andps %xmm3, %xmm2                #  1     0     3      OPC=andps_xmm_xmm    
  callq .move_128_064_xmm2_r12_r13  #  2     0x3   5      OPC=callq_label      
  callq .move_064_128_r12_r13_xmm3  #  3     0x8   5      OPC=callq_label      
  vmovupd %xmm3, %xmm1              #  4     0xd   4      OPC=vmovupd_xmm_xmm  
  retq                              #  5     0x11  1      OPC=retq             
                                                                               
.size target, .-target
