  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  popcntl %ebx, %r9d  #  1     0    5      OPC=popcntl_r32_r32  
  sbbl %ecx, %ebx     #  2     0x5  2      OPC=sbbl_r32_r32     
  retq                #  3     0x7  1      OPC=retq             
                                                                
.size target, .-target
