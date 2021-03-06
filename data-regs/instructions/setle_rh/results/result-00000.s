  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label      
  setnge %bh               #  2     0x5   3      OPC=setnge_rh        
  popcntq %rbx, %rdi       #  3     0x8   5      OPC=popcntq_r64_r64  
  popcntq %rdi, %rcx       #  4     0xd   5      OPC=popcntq_r64_r64  
  setnz %ah                #  5     0x12  3      OPC=setnz_rh         
  retq                     #  6     0x15  1      OPC=retq             
                                                                      
.size target, .-target
