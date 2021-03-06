  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label        
  vzeroall                          #  2     0x5   3      OPC=vzeroall           
  xchgw %bx, %r13w                  #  3     0x8   4      OPC=xchgw_r16_r16      
  vmovsldup %xmm1, %xmm1            #  4     0xc   4      OPC=vmovsldup_xmm_xmm  
  callq .move_064_128_r12_r13_xmm1  #  5     0x10  5      OPC=callq_label        
  retq                              #  6     0x15  1      OPC=retq               
                                                                                 
.size target, .-target
