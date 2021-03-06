  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label  
  setle %bh                #  2     0x5   3      OPC=setle_rh     
  callq .set_szp_for_bx    #  3     0x8   5      OPC=callq_label  
  setnz %bl                #  4     0xd   3      OPC=setnz_r8     
  retq                     #  5     0x10  1      OPC=retq         
                                                                  
.size target, .-target
