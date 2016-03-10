  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm11, %xmm2                         #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11                #  3     0xa   5      OPC=callq_label        
  movq %r11, %rbx                                 #  4     0xf   3      OPC=movq_r64_r64       
  retq                                            #  5     0x12  1      OPC=retq               
                                                                                               
.size target, .-target