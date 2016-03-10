  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r8_r9  #  1     0     5      OPC=callq_label     
  movq $0x0, %rbx                 #  2     0x5   10     OPC=movq_r64_imm64  
  addl %r9d, %ebx                 #  3     0xf   3      OPC=addl_r32_r32    
  retq                            #  4     0x12  1      OPC=retq            
                                                                            
.size target, .-target
