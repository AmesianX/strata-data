  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0xfffffffffffffff9, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  callq .move_128_064_xmm1_r12_r13  #  2     0xa   5      OPC=callq_label     
  xchgq %r13, %rbx                  #  3     0xf   3      OPC=xchgq_r64_r64   
  retq                              #  4     0x12  1      OPC=retq            
                                                                              
.size target, .-target
