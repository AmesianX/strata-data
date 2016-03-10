  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  xorq %rbx, %rbx                                 #  2     0x5   3      OPC=xorq_r64_r64         
  vminps %xmm11, %xmm11, %xmm3                    #  3     0x8   5      OPC=vminps_xmm_xmm_xmm   
  vhaddpd %xmm3, %xmm11, %xmm8                    #  4     0xd   4      OPC=vhaddpd_xmm_xmm_xmm  
  movq %xmm8, %rax                                #  5     0x11  5      OPC=movq_r64_xmm         
  xchgl %ebx, %eax                                #  6     0x16  2      OPC=xchgl_r32_r32        
  retq                                            #  7     0x18  1      OPC=retq                 
                                                                                                 
.size target, .-target