  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovd %ebx, %xmm2              #  1     0     4      OPC=vmovd_xmm_r32          
  vunpcklps %xmm2, %xmm1, %xmm5  #  2     0x4   4      OPC=vunpcklps_xmm_xmm_xmm  
  movsd %xmm5, %xmm1             #  3     0x8   4      OPC=movsd_xmm_xmm          
  minsd %xmm5, %xmm1             #  4     0xc   4      OPC=minsd_xmm_xmm          
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
