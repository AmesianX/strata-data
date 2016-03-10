  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  xorb %al, %al  #  1     0    2      OPC=xorb_r8_r8  
  setae %r15b    #  2     0x2  4      OPC=setae_r8    
  negb %r15b     #  3     0x6  3      OPC=negb_r8     
  adcb %al, %ah  #  4     0x9  2      OPC=adcb_rh_r8  
  retq           #  5     0xb  1      OPC=retq        
                                                      
.size target, .-target