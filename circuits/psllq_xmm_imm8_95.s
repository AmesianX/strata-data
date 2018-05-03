  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                   
.target:                        #        0    0      OPC=<label>              
  vsqrtss %xmm1, %xmm1, %xmm15  #  1     0    4      OPC=vsqrtss_xmm_xmm_xmm  
  pxor %xmm15, %xmm1            #  2     0x4  5      OPC=pxor_xmm_xmm         
  movhlps %xmm1, %xmm1          #  3     0x9  3      OPC=movhlps_xmm_xmm      
  retq                          #  4     0xc  1      OPC=retq                 
                                                                              
.size target, .-target
