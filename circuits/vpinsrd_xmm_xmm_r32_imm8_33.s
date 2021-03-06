  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  movd %ebx, %xmm1               #  1     0     4      OPC=movd_xmm_r32           
  vunpcklps %xmm1, %xmm2, %xmm6  #  2     0x4   4      OPC=vunpcklps_xmm_xmm_xmm  
  vminss %xmm6, %xmm2, %xmm1     #  3     0x8   4      OPC=vminss_xmm_xmm_xmm     
  movsd %xmm6, %xmm1             #  4     0xc   4      OPC=movsd_xmm_xmm          
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
