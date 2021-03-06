  .text
  .globl move_64_128_xmm10_xmm11_xmm1
  .type move_64_128_xmm10_xmm11_xmm1, @function
#! maybe-read { %xmm10 %xmm11 }
#! maybe-write { %xmm1 }
#! must-undef { %ymm15 }
.move_64_128_xmm10_xmm11_xmm1:
  # ----------------------------------------------------------------------------
  # moves the lower 64 bits of xmm11 to the higher 64 bits of xmm1,
  # and the lower 64 bits of xmm10 to the lower 64 bits of xmm1
  # ----------------------------------------------------------------------------
  #
  # move low bits
  movsd %xmm10, %xmm1
  shufps $0x39, %xmm1, %xmm1
  shufps $0x39, %xmm1, %xmm1
  #
  # move high bits
  movsd %xmm11, %xmm1
  shufps $0x39, %xmm1, %xmm1
  shufps $0x39, %xmm1, %xmm1
  retq

.size move_64_128_xmm10_xmm11_xmm1, .-move_64_128_xmm10_xmm11_xmm1
  retq
