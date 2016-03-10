  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm7, %xmm5, %xmm7                 #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  3     0x9   5      OPC=callq_label            
  movsd %xmm7, %xmm1                            #  4     0xe   4      OPC=movsd_xmm_xmm          
  retq                                          #  5     0x12  1      OPC=retq                   
                                                                                                 
.size target, .-target