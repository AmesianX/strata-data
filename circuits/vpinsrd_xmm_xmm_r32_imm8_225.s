  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  movd %ebx, %xmm7                                #  1     0     4      OPC=movd_xmm_r32            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  vpunpckldq %xmm7, %xmm7, %xmm9                  #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vxorps %xmm9, %xmm11, %xmm1                     #  4     0xd   5      OPC=vxorps_xmm_xmm_xmm      
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label             
  retq                                            #  6     0x17  1      OPC=retq                    
                                                                                                    
.size target, .-target
