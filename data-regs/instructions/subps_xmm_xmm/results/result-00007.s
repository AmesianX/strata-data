  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovaps %xmm1, %xmm15        #  1     0     4      OPC=vmovaps_xmm_xmm     
  vmovsd %xmm2, %xmm2, %xmm4   #  2     0x4   4      OPC=vmovsd_xmm_xmm_xmm  
  vsubps %ymm4, %ymm15, %ymm3  #  3     0x8   4      OPC=vsubps_ymm_ymm_ymm  
  movdqa %xmm3, %xmm1          #  4     0xc   4      OPC=movdqa_xmm_xmm      
  retq                         #  5     0x10  1      OPC=retq                
                                                                             
.size target, .-target