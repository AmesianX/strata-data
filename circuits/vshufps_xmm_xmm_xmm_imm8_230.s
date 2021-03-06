  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label          
  vsqrtsd %xmm2, %xmm3, %xmm1                   #  2     0x5   4      OPC=vsqrtsd_xmm_xmm_xmm  
  unpcklps %xmm5, %xmm6                         #  3     0x9   3      OPC=unpcklps_xmm_xmm     
  movsd %xmm6, %xmm1                            #  4     0xc   4      OPC=movsd_xmm_xmm        
  retq                                          #  5     0x10  1      OPC=retq                 
                                                                                               
.size target, .-target
