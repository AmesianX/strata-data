  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .read_cf_into_rbx            #  1     0     5      OPC=callq_label     
  callq .move_064_032_rbx_r12d_r13d  #  2     0x5   5      OPC=callq_label     
  movswq %r12w, %rax                 #  3     0xa   4      OPC=movswq_r64_r16  
  movb %al, %ah                      #  4     0xe   2      OPC=movb_rh_r8      
  retq                               #  5     0x10  1      OPC=retq            
                                                                               
.size target, .-target
