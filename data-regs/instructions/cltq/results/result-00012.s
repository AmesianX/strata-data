  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movslq %eax, %rbx                #  1     0     3      OPC=movslq_r64_r32  
  callq .move_064_032_rbx_r8d_r9d  #  2     0x3   5      OPC=callq_label     
  callq .move_032_064_r8d_r9d_rbx  #  3     0x8   5      OPC=callq_label     
  movslq %ebx, %rax                #  4     0xd   3      OPC=movslq_r64_r32  
  retq                             #  5     0x10  1      OPC=retq            
                                                                             
.size target, .-target