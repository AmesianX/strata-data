  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x1, %r13          #  1     0     10     OPC=movq_r64_imm64  
  movsbl %r13b, %edi       #  2     0xa   4      OPC=movsbl_r32_r8   
  addq %r13, %rdi          #  3     0xe   3      OPC=addq_r64_r64    
  callq .read_zf_into_rbx  #  4     0x11  5      OPC=callq_label     
  xchgw %bx, %cx           #  5     0x16  3      OPC=xchgw_r16_r16   
  retq                     #  6     0x19  1      OPC=retq            
                                                                     
.size target, .-target
