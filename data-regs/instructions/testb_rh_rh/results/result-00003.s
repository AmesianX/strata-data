  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %bh, %esp  #  1     0    3      OPC=movzbl_r32_rh  
  movzbl %ah, %esi  #  2     0x3  3      OPC=movzbl_r32_rh  
  testb %sil, %spl  #  3     0x6  3      OPC=testb_r8_r8    
  retq              #  4     0x9  1      OPC=retq           
                                                            
.size target, .-target
