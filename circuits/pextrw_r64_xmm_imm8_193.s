  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmaxsd %xmm1, %xmm1, %xmm3                    #  1     0     4      OPC=vmaxsd_xmm_xmm_xmm  
  vpmovzxwq %xmm3, %xmm1                        #  2     0x4   5      OPC=vpmovzxwq_xmm_xmm   
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0x9   5      OPC=callq_label         
  callq .move_032_064_r12d_r13d_rbx             #  4     0xe   5      OPC=callq_label         
  retq                                          #  5     0x13  1      OPC=retq                
                                                                                              
.size target, .-target
