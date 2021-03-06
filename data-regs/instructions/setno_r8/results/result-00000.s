  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_of_into_rcx  #  1     0    5      OPC=callq_label   
  shll $0x1, %ecx          #  2     0x5  2      OPC=shll_r32_one  
  callq .read_pf_into_rbx  #  3     0x7  5      OPC=callq_label   
  retq                     #  4     0xc  1      OPC=retq          
                                                                  
.size target, .-target
