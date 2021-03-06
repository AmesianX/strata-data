  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                   
.target:                            #        0     0      OPC=<label>              
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label          
  vzeroall                          #  2     0x5   3      OPC=vzeroall             
  vhsubpd %xmm9, %xmm12, %xmm1      #  3     0x8   5      OPC=vhsubpd_xmm_xmm_xmm  
  movq %rbx, %r10                   #  4     0xd   3      OPC=movq_r64_r64         
  callq .move_064_128_r10_r11_xmm1  #  5     0x10  5      OPC=callq_label          
  retq                              #  6     0x15  1      OPC=retq                 
                                                                                   
.size target, .-target
