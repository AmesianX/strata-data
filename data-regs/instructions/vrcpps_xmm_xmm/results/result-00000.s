  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                
.target:                          #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label       
  vzeroall                        #  2     0x5   3      OPC=vzeroall          
  vsqrtpd %ymm9, %ymm14           #  3     0x8   5      OPC=vsqrtpd_ymm_ymm   
  vrsqrtps %ymm14, %ymm2          #  4     0xd   5      OPC=vrsqrtps_ymm_ymm  
  callq .move_064_128_r8_r9_xmm2  #  5     0x12  5      OPC=callq_label       
  vrcpps %ymm2, %ymm1             #  6     0x17  4      OPC=vrcpps_ymm_ymm    
  retq                            #  7     0x1b  1      OPC=retq              
                                                                              
.size target, .-target
