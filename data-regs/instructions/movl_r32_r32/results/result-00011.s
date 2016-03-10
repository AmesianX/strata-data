  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movq $0x0, %rbx   #  1     0    10     OPC=movq_r64_imm64  
  addb %bl, %bh     #  2     0xa  2      OPC=addb_rh_r8      
  xaddl %ecx, %ebx  #  3     0xc  3      OPC=xaddl_r32_r32   
  retq              #  4     0xf  1      OPC=retq            
                                                             
.size target, .-target