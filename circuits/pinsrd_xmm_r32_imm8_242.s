  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label             
  movd %ebx, %xmm14                             #  2     0x5   5      OPC=movd_xmm_r32            
  vpunpckldq %xmm7, %xmm14, %xmm14              #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  movlhps %xmm14, %xmm1                         #  4     0xe   4      OPC=movlhps_xmm_xmm         
  retq                                          #  5     0x12  1      OPC=retq                    
                                                                                                  
.size target, .-target
