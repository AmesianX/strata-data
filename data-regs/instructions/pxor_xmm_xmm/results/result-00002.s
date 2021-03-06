  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpxor %xmm2, %xmm1, %xmm2         #  1     0     4      OPC=vpxor_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11  #  2     0x4   5      OPC=callq_label        
  movsbq %r10b, %rax                #  3     0x9   4      OPC=movsbq_r64_r8      
  xchgb %al, %r10b                  #  4     0xd   3      OPC=xchgb_r8_r8        
  callq .move_064_128_r10_r11_xmm1  #  5     0x10  5      OPC=callq_label        
  retq                              #  6     0x15  1      OPC=retq               
                                                                                 
.size target, .-target
