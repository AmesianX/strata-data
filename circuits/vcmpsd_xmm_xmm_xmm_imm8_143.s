  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                
.target:                          #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label       
  vzeroall                        #  2     0x5   3      OPC=vzeroall          
  movmskpd %xmm14, %r14           #  3     0x8   5      OPC=movmskpd_r64_xmm  
  decl %r14d                      #  4     0xd   3      OPC=decl_r32          
  movswq %r14w, %r8               #  5     0x10  4      OPC=movswq_r64_r16    
  callq .move_064_128_r8_r9_xmm1  #  6     0x14  5      OPC=callq_label       
  retq                            #  7     0x19  1      OPC=retq              
                                                                              
.size target, .-target
