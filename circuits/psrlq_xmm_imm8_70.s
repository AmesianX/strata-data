  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  vandnpd %xmm1, %xmm1, %xmm8  #  1     0    4      OPC=vandnpd_xmm_xmm_xmm  
  punpcklqdq %xmm8, %xmm1      #  2     0x4  5      OPC=punpcklqdq_xmm_xmm   
  unpckhpd %xmm1, %xmm1        #  3     0x9  4      OPC=unpckhpd_xmm_xmm     
  retq                         #  4     0xd  1      OPC=retq                 
                                                                             
.size target, .-target
