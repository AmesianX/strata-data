  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovhlps %xmm2, %xmm2, %xmm14     #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm     
  vpunpcklqdq %xmm3, %xmm14, %xmm1  #  2     0x4  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                              #  3     0x8  1      OPC=retq                     
                                                                                      
.size target, .-target
