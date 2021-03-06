  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                 
.target:                                        #        0    0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label        
  vpmovzxwq %xmm4, %ymm9                        #  2     0x5  5      OPC=vpmovzxwq_ymm_xmm  
  movq %xmm9, %rbx                              #  3     0xa  5      OPC=movq_r64_xmm       
  retq                                          #  4     0xf  1      OPC=retq               
                                                                                            
.size target, .-target
