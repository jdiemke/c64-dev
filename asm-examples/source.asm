KERNAL_CHR_OUT = $ffd2

.segment "CODE"
  ; 12 bytes of tokenized basic for “10 SYS 2061”
  .byte $0B, $08, $0A, $00, $9E, $32, $30, $36, $31, $00, $00, $00
  ; address 2061 starts directly after the 12 bytes
  ldx #0 
loop:
  lda text,x
  beq loop2
  jsr KERNAL_CHR_OUT
  inx
  bne loop

loop2:   
  inc $d020
  jmp loop2

text:
  .byte "hello world in ca65!!", 0