  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .move_016_008_bx_r12b_r13b  #  1     0     5      OPC=callq_label     
  callq .move_008_016_r12b_r13b_bx  #  2     0x5   5      OPC=callq_label     
  xorq %rax, %rax                   #  3     0xa   3      OPC=xorq_r64_r64    
  movq $0x1, %rax                   #  4     0xd   10     OPC=movq_r64_imm64  
  adcw %ax, %bx                     #  5     0x17  3      OPC=adcw_r16_r16    
  retq                              #  6     0x1a  1      OPC=retq            
                                                                              
.size target, .-target
