  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                        
.target:                               #        0    0      OPC=<label>                   
  vfnmsub132pd %xmm3, %xmm1, %xmm2     #  1     0    5      OPC=vfnmsub132pd_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5  5      OPC=callq_label               
  vmovsd %xmm12, %xmm1, %xmm1          #  3     0xa  5      OPC=vmovsd_xmm_xmm_xmm        
  retq                                 #  4     0xf  1      OPC=retq                      
                                                                                          
.size target, .-target
