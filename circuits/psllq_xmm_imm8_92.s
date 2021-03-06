  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  pmovzxbd %xmm1, %xmm6            #  1     0     5      OPC=pmovzxbd_xmm_xmm         
  vcvtps2pd %xmm1, %ymm3           #  2     0x5   4      OPC=vcvtps2pd_ymm_xmm        
  vpunpcklqdq %xmm3, %xmm6, %xmm4  #  3     0x9   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  pmovzxbd %xmm4, %xmm1            #  4     0xd   5      OPC=pmovzxbd_xmm_xmm         
  punpckhqdq %xmm1, %xmm1          #  5     0x12  4      OPC=punpckhqdq_xmm_xmm       
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target
