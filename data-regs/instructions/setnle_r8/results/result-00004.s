  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label  
  setnge %sil              #  2     0x5   4      OPC=setnge_r8    
  negw %bx                 #  3     0x9   3      OPC=negw_r16     
  adcb %sil, %sil          #  4     0xc   3      OPC=adcb_r8_r8   
  callq .read_zf_into_rbx  #  5     0xf   5      OPC=callq_label  
  retq                     #  6     0x14  1      OPC=retq         
                                                                  
.size target, .-target
