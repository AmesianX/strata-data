  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpmovzxwq %xmm1, %xmm1            #  1     0    5      OPC=vpmovzxwq_xmm_xmm        
  vpunpckhqdq %ymm1, %ymm1, %ymm10  #  2     0x5  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovq %xmm10, %rbx                #  3     0x9  5      OPC=vmovq_r64_xmm            
  retq                              #  4     0xe  1      OPC=retq                     
                                                                                      
.size target, .-target
