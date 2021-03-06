  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovddup %ymm2, %ymm1           #  1     0     4      OPC=vmovddup_ymm_ymm       
  vmovapd %ymm2, %ymm11           #  2     0x4   4      OPC=vmovapd_ymm_ymm        
  punpcklqdq %xmm2, %xmm11        #  3     0x8   5      OPC=punpcklqdq_xmm_xmm     
  vunpckhpd %ymm1, %ymm11, %ymm1  #  4     0xd   4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
