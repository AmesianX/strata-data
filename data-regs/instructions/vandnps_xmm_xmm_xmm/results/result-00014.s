  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP  Bytes  Opcode                 
.target:                     #        0    0      OPC=<label>            
  andnps %xmm3, %xmm2        #  1     0    3      OPC=andnps_xmm_xmm     
  vorpd %xmm2, %xmm2, %xmm1  #  2     0x3  4      OPC=vorpd_xmm_xmm_xmm  
  retq                       #  3     0x7  1      OPC=retq               
                                                                         
.size target, .-target
