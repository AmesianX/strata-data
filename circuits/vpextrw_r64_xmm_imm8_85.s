  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                
.target:                               #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  pmovzxwq %xmm11, %xmm1               #  2     0x5   6      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9       #  3     0xb   5      OPC=callq_label       
  movzwl %r9w, %ebx                    #  4     0x10  4      OPC=movzwl_r32_r16    
  retq                                 #  5     0x14  1      OPC=retq              
                                                                                   
.size target, .-target
