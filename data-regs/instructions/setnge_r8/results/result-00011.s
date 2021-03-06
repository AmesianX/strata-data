  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label     
  callq .read_sf_into_rcx  #  2     0x5   5      OPC=callq_label     
  movswl %cx, %edx         #  3     0xa   3      OPC=movswl_r32_r16  
  xorw %dx, %bx            #  4     0xd   3      OPC=xorw_r16_r16    
  retq                     #  5     0x10  1      OPC=retq            
                                                                     
.size target, .-target
