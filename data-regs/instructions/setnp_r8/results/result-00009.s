  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_pf_into_rcx  #  1     0     5      OPC=callq_label      
  callq .read_pf_into_rbx  #  2     0x5   5      OPC=callq_label      
  popcntq %rbx, %r13       #  3     0xa   5      OPC=popcntq_r64_r64  
  adcl %ebx, %ecx          #  4     0xf   2      OPC=adcl_r32_r32     
  callq .read_pf_into_rbx  #  5     0x11  5      OPC=callq_label      
  retq                     #  6     0x16  1      OPC=retq             
                                                                      
.size target, .-target
