  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                
.target:                                        #        0    0      OPC=<label>           
  pmovzxwd %xmm1, %xmm2                         #  1     0    5      OPC=pmovzxwd_xmm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  2     0x5  5      OPC=callq_label       
  movzwl %r13w, %ebx                            #  3     0xa  4      OPC=movzwl_r32_r16    
  retq                                          #  4     0xe  1      OPC=retq              
                                                                                           
.size target, .-target
