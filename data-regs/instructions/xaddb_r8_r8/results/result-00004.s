  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movsbl %bl, %r15d   #  1     0    4      OPC=movsbl_r32_r8   
  xorq %rax, %rax     #  2     0x4  3      OPC=xorq_r64_r64    
  adcb %cl, %bl       #  3     0x7  2      OPC=adcb_r8_r8      
  movzwl %r15w, %ecx  #  4     0x9  4      OPC=movzwl_r32_r16  
  retq                #  5     0xd  1      OPC=retq            
                                                               
.size target, .-target