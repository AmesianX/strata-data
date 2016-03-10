  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                 
.target:                                        #        0    0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm1                        #  1     0    5      OPC=vpmovzxwd_ymm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x5  5      OPC=callq_label        
  movzwl %r13w, %ebx                            #  3     0xa  4      OPC=movzwl_r32_r16     
  retq                                          #  4     0xe  1      OPC=retq               
                                                                                            
.size target, .-target