  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode              
.target:                                        #        0    0      OPC=<label>         
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0    5      OPC=callq_label     
  movzwq %r11w, %rbx                            #  2     0x5  4      OPC=movzwq_r64_r16  
  xorb %bh, %bh                                 #  3     0x9  2      OPC=xorb_rh_rh      
  retq                                          #  4     0xb  1      OPC=retq            
                                                                                         
.size target, .-target
