  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                     
.target:                           #        0    0      OPC=<label>                
  vxorps %xmm2, %xmm2, %xmm12      #  1     0    4      OPC=vxorps_xmm_xmm_xmm     
  vunpcklpd %xmm1, %xmm12, %xmm10  #  2     0x4  4      OPC=vunpcklpd_xmm_xmm_xmm  
  movddup %xmm10, %xmm1            #  3     0x8  5      OPC=movddup_xmm_xmm        
  retq                             #  4     0xd  1      OPC=retq                   
                                                                                   
.size target, .-target