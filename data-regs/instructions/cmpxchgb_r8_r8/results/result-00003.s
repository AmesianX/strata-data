  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movb %bl, %ch      #  1     0    2      OPC=movb_rh_r8      
  cmpxchgb %al, %ch  #  2     0x2  3      OPC=cmpxchgb_rh_r8  
  cmovew %cx, %bx    #  3     0x5  4      OPC=cmovew_r16_r16  
  retq               #  4     0x9  1      OPC=retq            
                                                              
.size target, .-target
