  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  vmovupd %xmm2, %xmm2                            #  2     0x5   4      OPC=vmovupd_xmm_xmm   
  movsldup %xmm10, %xmm1                          #  3     0x9   5      OPC=movsldup_xmm_xmm  
  movlhps %xmm2, %xmm1                            #  4     0xe   3      OPC=movlhps_xmm_xmm   
  retq                                            #  5     0x11  1      OPC=retq              
                                                                                              
.size target, .-target
