  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                        
.target:                                    #        0     0      OPC=<label>                   
  vmovd %ebx, %xmm1                         #  1     0     4      OPC=vmovd_xmm_r32             
  vfnmsub213ss %xmm2, %xmm2, %xmm2          #  2     0x4   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label               
  callq .move_r8b_to_byte_16_of_ymm1        #  4     0xe   5      OPC=callq_label               
  vmovss %xmm1, %xmm2, %xmm1                #  5     0x13  4      OPC=vmovss_xmm_xmm_xmm        
  retq                                      #  6     0x17  1      OPC=retq                      
                                                                                                
.size target, .-target