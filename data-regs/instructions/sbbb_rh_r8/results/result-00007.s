  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movsbl %ah, %ecx    #  1     0    3      OPC=movsbl_r32_rh    
  movb %bl, %ch       #  2     0x3  2      OPC=movb_rh_r8       
  cmovaeq %rcx, %rcx  #  3     0x5  4      OPC=cmovaeq_r64_r64  
  sbbb %ch, %ah       #  4     0x9  2      OPC=sbbb_rh_rh       
  retq                #  5     0xb  1      OPC=retq             
                                                                
.size target, .-target
