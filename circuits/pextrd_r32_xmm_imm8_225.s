  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vpbroadcastq %xmm5, %xmm2                     #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm  
  vmovaps %xmm2, %xmm3                          #  3     0xa   4      OPC=vmovaps_xmm_xmm       
  vmovq %xmm3, %rbx                             #  4     0xe   5      OPC=vmovq_r64_xmm         
  retq                                          #  5     0x13  1      OPC=retq                  
                                                                                                
.size target, .-target
