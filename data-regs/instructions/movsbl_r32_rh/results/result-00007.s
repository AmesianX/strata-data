  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbw %ah, %bx   #  1     0    4      OPC=movsbw_r16_rh  
  movsbl %bl, %ebx  #  2     0x4  3      OPC=movsbl_r32_r8  
  retq              #  3     0x7  1      OPC=retq           
                                                            
.size target, .-target
