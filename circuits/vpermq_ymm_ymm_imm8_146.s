  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9     #  1     0     5      OPC=callq_label            
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vmovsd %xmm11, %xmm2, %xmm8           #  3     0xa   5      OPC=vmovsd_xmm_xmm_xmm     
  callq .move_128_256_xmm8_xmm9_ymm3    #  4     0xf   5      OPC=callq_label            
  vunpcklpd %ymm2, %ymm3, %ymm1         #  5     0x14  4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                                  #  6     0x18  1      OPC=retq                   
                                                                                         
.size target, .-target
