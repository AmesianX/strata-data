  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_pf_into_rbx  #  1     0    5      OPC=callq_label  
  addb %bh, %bl            #  2     0x5  2      OPC=addb_r8_rh   
  retq                     #  3     0x7  1      OPC=retq         
                                                                 
.size target, .-target
