  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9                #  1     0     5      OPC=callq_label         
  vzeroall                                      #  2     0x5   3      OPC=vzeroall            
  movd %r9d, %xmm1                              #  3     0x8   5      OPC=movd_xmm_r32        
  callq .move_064_128_r8_r9_xmm2                #  4     0xd   5      OPC=callq_label         
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  5     0x12  5      OPC=callq_label         
  vsubpd %xmm13, %xmm1, %xmm6                   #  6     0x17  5      OPC=vsubpd_xmm_xmm_xmm  
  movd %ebx, %xmm7                              #  7     0x1c  4      OPC=movd_xmm_r32        
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  8     0x20  5      OPC=callq_label         
  retq                                          #  9     0x25  1      OPC=retq                
                                                                                              
.size target, .-target
