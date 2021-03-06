  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label         
  movd %ebx, %xmm3                  #  2     0x5   4      OPC=movd_xmm_r32        
  callq .move_064_128_r12_r13_xmm1  #  3     0x9   5      OPC=callq_label         
  vmovss %xmm3, %xmm1, %xmm1        #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm  
  retq                              #  5     0x12  1      OPC=retq                
                                                                                  
.size target, .-target
