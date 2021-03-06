  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpckhps %xmm3, %xmm2, %xmm1   #  1     0    4      OPC=vunpckhps_xmm_xmm_xmm  
  vunpcklpd %xmm1, %xmm2, %xmm15  #  2     0x4  4      OPC=vunpcklpd_xmm_xmm_xmm  
  movdqu %xmm15, %xmm1            #  3     0x8  5      OPC=movdqu_xmm_xmm         
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
