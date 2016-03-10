  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  xorb %al, %al    #  1     0    2      OPC=xorb_r8_r8      
  cmovlw %ax, %ax  #  2     0x2  4      OPC=cmovlw_r16_r16  
  sbbb %ah, %bl    #  3     0x6  2      OPC=sbbb_r8_rh      
  retq             #  4     0x8  1      OPC=retq            
                                                            
.size target, .-target
