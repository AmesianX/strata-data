  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vpunpckldq %xmm1, %xmm1, %xmm5  #  1     0    4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovhlps %xmm5, %xmm1, %xmm5    #  2     0x4  4      OPC=vmovhlps_xmm_xmm_xmm    
  movd %xmm5, %ebx                #  3     0x8  4      OPC=movd_r32_xmm            
  retq                            #  4     0xc  1      OPC=retq                    
                                                                                   
.size target, .-target
