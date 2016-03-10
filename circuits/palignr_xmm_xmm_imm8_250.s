  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxdq %xmm2, %xmm3  #  1     0    5      OPC=vpmovzxdq_xmm_xmm  
  cvtdq2pd %xmm3, %xmm1   #  2     0x5  4      OPC=cvtdq2pd_xmm_xmm   
  movhlps %xmm1, %xmm1    #  3     0x9  3      OPC=movhlps_xmm_xmm    
  retq                    #  4     0xc  1      OPC=retq               
                                                                      
.size target, .-target
