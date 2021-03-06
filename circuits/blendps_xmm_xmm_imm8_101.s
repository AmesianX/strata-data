  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  movsldup %xmm2, %xmm13                          #  2     0x5   5      OPC=movsldup_xmm_xmm       
  vunpckhps %xmm11, %xmm13, %xmm10                #  3     0xa   5      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xf   5      OPC=callq_label            
  movss %xmm2, %xmm1                              #  5     0x14  4      OPC=movss_xmm_xmm          
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
