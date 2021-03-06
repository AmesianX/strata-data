  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label           
  callq .move_064_128_r8_r9_xmm2  #  2     0x5   5      OPC=callq_label           
  vmovups %xmm2, %xmm1            #  3     0xa   4      OPC=vmovups_xmm_xmm       
  vmovhlps %xmm2, %xmm1, %xmm1    #  4     0xe   4      OPC=vmovhlps_xmm_xmm_xmm  
  punpcklqdq %xmm2, %xmm1         #  5     0x12  4      OPC=punpcklqdq_xmm_xmm    
  retq                            #  6     0x16  1      OPC=retq                  
                                                                                  
.size target, .-target
