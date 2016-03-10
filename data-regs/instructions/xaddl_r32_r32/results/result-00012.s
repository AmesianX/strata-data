  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorw %ax, %ax     #  1     0    3      OPC=xorw_r16_r16   
  adcl %ebx, %ecx   #  2     0x3  2      OPC=adcl_r32_r32   
  xchgl %ebx, %ecx  #  3     0x5  2      OPC=xchgl_r32_r32  
  retq              #  4     0x7  1      OPC=retq           
                                                            
.size target, .-target