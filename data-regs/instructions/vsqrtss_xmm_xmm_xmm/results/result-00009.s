  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  sqrtss %xmm3, %xmm2             #  1     0     4      OPC=sqrtss_xmm_xmm     
  callq .move_128_064_xmm2_r8_r9  #  2     0x4   5      OPC=callq_label        
  vzeroall                        #  3     0x9   3      OPC=vzeroall           
  mulps %xmm9, %xmm6              #  4     0xc   4      OPC=mulps_xmm_xmm      
  vmovshdup %xmm6, %xmm1          #  5     0x10  4      OPC=vmovshdup_xmm_xmm  
  callq .move_064_128_r8_r9_xmm1  #  6     0x14  5      OPC=callq_label        
  retq                            #  7     0x19  1      OPC=retq               
                                                                               
.size target, .-target
