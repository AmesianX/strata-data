  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovss %xmm1, %xmm10, %xmm5          #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm      
  vpunpckldq %xmm5, %xmm11, %xmm6      #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movhlps %xmm1, %xmm6                 #  4     0xd   3      OPC=movhlps_xmm_xmm         
  vmovss %xmm1, %xmm6, %xmm2           #  5     0x10  4      OPC=vmovss_xmm_xmm_xmm      
  movaps %xmm2, %xmm1                  #  6     0x14  3      OPC=movaps_xmm_xmm          
  retq                                 #  7     0x17  1      OPC=retq                    
                                                                                         
.size target, .-target
