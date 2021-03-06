  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode           
.target:                 #        0    0      OPC=<label>      
  andb %ch, %bh          #  1     0    2      OPC=andb_rh_rh   
  andb %cl, %bl          #  2     0x2  2      OPC=andb_r8_r8   
  callq .clear_cf        #  3     0x4  5      OPC=callq_label  
  callq .set_szp_for_bx  #  4     0x9  5      OPC=callq_label  
  retq                   #  5     0xe  1      OPC=retq         
                                                               
.size target, .-target
