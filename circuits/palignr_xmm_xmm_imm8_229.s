  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                
.target:                                        #        0    0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label       
  cvtpd2ps %xmm5, %xmm1                         #  2     0x5  4      OPC=cvtpd2ps_xmm_xmm  
  subpd %xmm1, %xmm1                            #  3     0x9  4      OPC=subpd_xmm_xmm     
  retq                                          #  4     0xd  1      OPC=retq              
                                                                                           
.size target, .-target
