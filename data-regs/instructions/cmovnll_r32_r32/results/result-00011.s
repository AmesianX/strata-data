  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setge %ah           #  1     0    3      OPC=setge_rh         
  salb $0x1, %ah      #  2     0x3  2      OPC=salb_rh_one      
  xchgl %ecx, %ebx    #  3     0x5  2      OPC=xchgl_r32_r32    
  cmovbel %ecx, %ebx  #  4     0x7  3      OPC=cmovbel_r32_r32  
  retq                #  5     0xa  1      OPC=retq             
                                                                
.size target, .-target
