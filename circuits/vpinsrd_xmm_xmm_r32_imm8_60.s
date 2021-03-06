  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label         
  movd %ebx, %xmm8                #  2     0x5   5      OPC=movd_xmm_r32        
  negb %r8b                       #  3     0xa   3      OPC=negb_r8             
  callq .move_064_128_r8_r9_xmm3  #  4     0xd   5      OPC=callq_label         
  vmovss %xmm8, %xmm3, %xmm1      #  5     0x12  5      OPC=vmovss_xmm_xmm_xmm  
  retq                            #  6     0x17  1      OPC=retq                
                                                                                
.size target, .-target
