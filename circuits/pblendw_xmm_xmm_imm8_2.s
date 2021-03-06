  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovzxbd %xmm2, %ymm3                    #  1     0     5      OPC=vpmovzxbd_ymm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label        
  callq .move_r8b_to_byte_2_of_ymm1         #  3     0xa   5      OPC=callq_label        
  callq .move_r9b_to_byte_3_of_ymm1         #  4     0xf   5      OPC=callq_label        
  retq                                      #  5     0x14  1      OPC=retq               
                                                                                         
.size target, .-target
