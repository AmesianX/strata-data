  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP  Bytes  Opcode              
.target:                                          #        0    0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0    5      OPC=callq_label     
  vmovd %xmm9, %ebx                               #  2     0x5  4      OPC=vmovd_r32_xmm   
  movzwl %bx, %ebx                                #  3     0x9  3      OPC=movzwl_r32_r16  
  retq                                            #  4     0xc  1      OPC=retq            
                                                                                           
.size target, .-target