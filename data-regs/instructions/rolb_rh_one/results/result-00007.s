  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode            
.target:         #        0    0      OPC=<label>       
  movb %ah, %al  #  1     0    2      OPC=movb_r8_rh    
  cwtl           #  2     0x2  1      OPC=cwtl          
  addw %ax, %ax  #  3     0x3  3      OPC=addw_r16_r16  
  retq           #  4     0x6  1      OPC=retq          
                                                        
.size target, .-target
