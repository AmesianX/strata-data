  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label     
  vzeroall                           #  2     0x5   3      OPC=vzeroall        
  movq $0x20, %r8                    #  3     0x8   10     OPC=movq_r64_imm64  
  callq .move_byte_0_of_ymm1_to_r8b  #  4     0x12  5      OPC=callq_label     
  callq .move_064_128_r8_r9_xmm1     #  5     0x17  5      OPC=callq_label     
  retq                               #  6     0x1c  1      OPC=retq            
                                                                               
.size target, .-target
