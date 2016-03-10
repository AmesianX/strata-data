  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode            
.target:                              #        0     0      OPC=<label>       
  movl %ebx, %r9d                     #  1     0     3      OPC=movl_r32_r32  
  callq .move_128_064_xmm2_r12_r13    #  2     0x3   5      OPC=callq_label   
  vzeroall                            #  3     0x8   3      OPC=vzeroall      
  callq .move_064_128_r12_r13_xmm1    #  4     0xb   5      OPC=callq_label   
  callq .move_r9b_to_byte_11_of_ymm1  #  5     0x10  5      OPC=callq_label   
  retq                                #  6     0x15  1      OPC=retq          
                                                                              
.size target, .-target
