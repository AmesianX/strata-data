  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vpmovsxdq %xmm2, %ymm10     #  1     0     5      OPC=vpmovsxdq_ymm_xmm   
  vmovshdup %ymm10, %ymm10    #  2     0x5   5      OPC=vmovshdup_ymm_ymm   
  vcvtpd2ps %ymm10, %xmm7     #  3     0xa   5      OPC=vcvtpd2ps_xmm_ymm   
  vandpd %xmm7, %xmm7, %xmm1  #  4     0xf   4      OPC=vandpd_xmm_xmm_xmm  
  retq                        #  5     0x13  1      OPC=retq                
                                                                            
.size target, .-target
