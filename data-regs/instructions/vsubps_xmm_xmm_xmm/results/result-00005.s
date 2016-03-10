  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovss %xmm2, %xmm2, %xmm9  #  1     0    4      OPC=vmovss_xmm_xmm_xmm  
  subps %xmm3, %xmm9          #  2     0x4  4      OPC=subps_xmm_xmm       
  vmovapd %xmm9, %xmm1        #  3     0x8  5      OPC=vmovapd_xmm_xmm     
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
