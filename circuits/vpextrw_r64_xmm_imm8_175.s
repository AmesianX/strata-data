  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm7, %xmm3                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm  
  xorl %ebx, %ebx                               #  3     0xa   2      OPC=xorl_r32_r32       
  callq .move_128_064_xmm3_r10_r11              #  4     0xc   5      OPC=callq_label        
  adcw %r11w, %bx                               #  5     0x11  4      OPC=adcw_r16_r16       
  retq                                          #  6     0x15  1      OPC=retq               
                                                                                             
.size target, .-target