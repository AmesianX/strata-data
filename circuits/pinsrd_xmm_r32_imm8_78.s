  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  movd %ebx, %xmm14                               #  1     0     5      OPC=movd_xmm_r32           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vunpcklps %xmm11, %xmm14, %xmm5                 #  3     0xa   5      OPC=vunpcklps_xmm_xmm_xmm  
  movlhps %xmm5, %xmm1                            #  4     0xf   3      OPC=movlhps_xmm_xmm        
  retq                                            #  5     0x12  1      OPC=retq                   
                                                                                                   
.size target, .-target
