  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setle %bh                #  1     0    3      OPC=setle_rh     
  decb %bh                 #  2     0x3  2      OPC=decb_rh      
  callq .read_sf_into_rbx  #  3     0x5  5      OPC=callq_label  
  retq                     #  4     0xa  1      OPC=retq         
                                                                 
.size target, .-target
