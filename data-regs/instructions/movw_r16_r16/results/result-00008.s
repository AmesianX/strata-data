  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  movswq %cx, %rbp                #  2     0xa   4      OPC=movswq_r64_r16  
  xchgl %ebp, %ebx                #  3     0xe   2      OPC=xchgl_r32_r32   
  retq                            #  4     0x10  1      OPC=retq            
                                                                            
.size target, .-target