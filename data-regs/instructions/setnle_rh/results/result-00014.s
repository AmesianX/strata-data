  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label  
  setnge %bh               #  2     0x5   3      OPC=setnge_rh    
  callq .set_szp_for_ebx   #  3     0x8   5      OPC=callq_label  
  sete %ah                 #  4     0xd   3      OPC=sete_rh      
  retq                     #  5     0x10  1      OPC=retq         
                                                                  
.size target, .-target
