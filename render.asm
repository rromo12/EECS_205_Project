; #########################################################################
;
;   render.asm - Assembly file for EECS205 Assignment 4/5
;
;
; #########################################################################

      .586
      .MODEL FLAT,STDCALL
      .STACK 4096
      option casemap :none  ; case sensitive

    include stars.inc		
    include blit.inc
    include rotate.inc	
    include game.inc
	DrawAllSprites PROTO  STDCALL
.DATA 





Invader EECS205BITMAP <41, 30, 0,, offset Invader + sizeof Invader>
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,05ch,05ch,05ch,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,05ch,05ch
	BYTE 05ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 000h,05ch,05ch,05ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,05ch,05ch,05ch,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,05ch,05ch,05ch,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 05ch,05ch,05ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,05ch,05ch,05ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,000h,05ch,05ch,05ch,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,05ch
	BYTE 05ch,05ch,05ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,05ch,05ch
	BYTE 05ch,05ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,05ch,05ch,05ch,05ch,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,05ch,05ch,05ch,05ch,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 000h,05ch,05ch,05ch,05ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 05ch,05ch,05ch,05ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,05ch,05ch,05ch,05ch,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,000h,05ch,05ch,05ch,05ch,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h
	BYTE 000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h
	BYTE 000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,000h,000h,000h,000h,000h,000h,000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 000h,000h,000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h
	BYTE 000h,000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,000h,000h,000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h
	BYTE 000h,000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,000h,000h,000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h
	BYTE 000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h,05ch,05ch
	BYTE 05ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,05ch,05ch,05ch,000h,000h,000h,000h,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,000h,000h,000h,000h,05ch,05ch,05ch,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,05ch,05ch,05ch
	BYTE 000h,000h,000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h
	BYTE 05ch,05ch,05ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,05ch,05ch,05ch,000h,000h,000h,000h,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h,05ch,05ch,05ch,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,05ch
	BYTE 05ch,05ch,000h,000h,000h,000h,05ch,05ch,05ch,05ch,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,05ch,05ch
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h
	BYTE 000h,000h,05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,000h,000h,000h
	BYTE 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h
	BYTE 05ch,05ch,05ch,05ch,05ch,05ch,05ch,05ch,000h,000h,000h,05ch,05ch,05ch,05ch,05ch
	BYTE 05ch,05ch,05ch,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h

explosion EECS205BITMAP <59, 61, 255,, offset explosion + sizeof explosion>
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,020h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h
	BYTE 020h,020h,020h,020h,020h,020h,020h,020h,044h,0ffh,0ffh,0ffh,0ffh,0ffh,044h,024h
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,020h,020h,020h,020h,040h
	BYTE 044h,044h,064h,068h,044h,068h,020h,020h,000h,024h,024h,024h,044h,044h,024h,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,000h,020h,0ffh,0ffh,020h,040h,044h,044h,088h,0ach,0ach,088h
	BYTE 088h,0a8h,088h,088h,068h,044h,020h,044h,044h,064h,044h,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,020h,020h
	BYTE 020h,000h,020h,020h,044h,088h,0a8h,0f5h,0f5h,0f9h,0f5h,0ech,0f0h,0ech,0ach,0ach
	BYTE 0ach,0ach,0a8h,088h,0c8h,0a8h,064h,020h,020h,020h,000h,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,020h,020h,020h,044h,064h,068h,0ach
	BYTE 0d1h,0f5h,0f9h,0fdh,0feh,0f9h,0f0h,0f5h,0f1h,0f1h,0ach,0ach,0ech,0f0h,0f0h,0f0h
	BYTE 0ech,0a8h,0a8h,044h,044h,044h,020h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,020h,020h,020h,064h,064h,084h,088h,0ach,0cch,0d1h,0f9h,0fdh,0fdh,0fdh
	BYTE 0fdh,0f0h,0f5h,0f5h,0f5h,0d1h,0cch,0cch,0f0h,0f0h,0f0h,0f4h,0ech,0c8h,084h,064h
	BYTE 064h,044h,020h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 040h,044h,064h,044h,020h,020h,020h,0ffh,0ffh,0ffh,0ffh,0ffh,020h,044h,020h,064h
	BYTE 064h,064h,088h,0a8h,0cch,0d0h,0f9h,0f9h,0f9h,0fdh,0fdh,0fdh,0f8h,0fdh,0fdh,0fdh
	BYTE 0fdh,0f5h,0f4h,0f4h,0f4h,0f9h,0f8h,0f0h,0c8h,0a8h,044h,040h,044h,020h,020h,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,040h,064h,064h,044h,020h
	BYTE 020h,020h,024h,020h,0ffh,0ffh,0ffh,020h,020h,064h,084h,0a8h,0fah,0cch,0ech,0ech
	BYTE 0f4h,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0f9h,0f0h,0f9h,0fdh
	BYTE 0fdh,0fdh,0f9h,0f0h,0c8h,064h,020h,020h,020h,020h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,000h,040h,040h,040h,040h,044h,044h,020h,020h,0ffh,020h,020h,020h,020h
	BYTE 020h,040h,020h,044h,084h,0a8h,0f0h,0f8h,0f0h,0f9h,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh
	BYTE 0fdh,0fdh,0fdh,0fdh,0feh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0f0h
	BYTE 088h,068h,044h,000h,020h,020h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,044h,040h,040h
	BYTE 040h,040h,044h,040h,040h,020h,020h,020h,020h,020h,020h,044h,064h,0a8h,0a8h,0ech
	BYTE 0f0h,0f4h,0fdh,0f4h,0f9h,0fdh,0feh,0fdh,0fdh,0fdh,0feh,0feh,0fdh,0fdh,0fdh,0fdh
	BYTE 0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0feh,0feh,0fdh,0f4h,0cch,088h,064h,064h,064h
	BYTE 044h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,040h,020h,044h,040h,044h,044h,044h,044h,044h
	BYTE 040h,040h,020h,040h,040h,064h,088h,0a8h,0f0h,0ech,0f0h,0f8h,0fch,0f8h,0fch,0f8h
	BYTE 0fdh,0feh,0feh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh
	BYTE 0fdh,0fdh,0fdh,0feh,0fdh,0f9h,0ech,088h,064h,064h,088h,064h,044h,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,020h,024h,044h,044h,064h,044h,044h,064h,064h,040h,040h,040h,020h,044h
	BYTE 068h,0f5h,0f5h,0f9h,0f9h,0f8h,0fdh,0fdh,0fdh,0fdh,0fch,0fdh,0fdh,0fdh,0fdh,0fdh
	BYTE 0fdh,0fdh,0fdh,0feh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0f9h
	BYTE 0f4h,0f0h,0a8h,088h,088h,064h,088h,064h,020h,0ffh,0ffh,0ffh,0ffh,000h,020h,024h
	BYTE 044h,044h,044h,064h,064h,064h,040h,040h,020h,044h,08ch,088h,0f9h,0fdh,0f5h,0fdh
	BYTE 0fdh,0fdh,0fdh,0fdh,0fdh,0fch,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0feh,0feh,0feh
	BYTE 0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0f9h,0f9h,0f0h,0cch,088h,088h
	BYTE 088h,088h,0a8h,020h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,024h,044h,044h,064h
	BYTE 064h,044h,044h,044h,088h,0cch,0d0h,0f5h,0fdh,0f4h,0feh,0fdh,0fdh,0fdh,0fdh,0feh
	BYTE 0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0feh,0fdh,0feh,0feh,0feh,0fdh,0fdh,0feh,0fdh,0fdh
	BYTE 0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0f4h,0f0h,0a8h,088h,088h,0a8h,088h,064h,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,020h,044h,044h,064h,064h,044h,064h,0a8h
	BYTE 0f0h,0f9h,0f4h,0f8h,0f8h,0f0h,0fch,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh
	BYTE 0feh,0feh,0fdh,0feh,0feh,0feh,0feh,0feh,0feh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh
	BYTE 0fdh,0fdh,0f4h,0f4h,0f0h,088h,064h,088h,0a8h,0a8h,020h,0ffh,0ffh,0ffh,000h,000h
	BYTE 020h,000h,020h,020h,020h,040h,064h,064h,044h,088h,0c8h,0cch,0f0h,0f4h,0f4h,0fch
	BYTE 0f8h,0feh,0fdh,0fdh,0fdh,0fdh,0fch,0fdh,0fdh,0fdh,0fdh,0feh,0ffh,0fdh,0feh,0feh
	BYTE 0feh,0feh,0feh,0feh,0fdh,0fdh,0fdh,0fdh,0feh,0fdh,0fdh,0fdh,0fdh,0f9h,0f4h,0f5h
	BYTE 0f0h,088h,088h,0a8h,088h,044h,0ffh,0ffh,0ffh,044h,044h,044h,024h,020h,020h,044h
	BYTE 040h,064h,084h,088h,0c8h,0c8h,0ech,0f4h,0f8h,0fdh,0fdh,0fch,0feh,0fdh,0feh,0fdh
	BYTE 0f8h,0feh,0fdh,0fdh,0fdh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh
	BYTE 0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0f4h,0f4h,0f0h,0cch,088h,084h,084h
	BYTE 040h,0ffh,0ffh,0ffh,068h,064h,044h,020h,020h,020h,044h,088h,0c8h,0e8h,0ech,0ech
	BYTE 0ech,0ech,0f0h,0f4h,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0f4h,0f8h,0fch,0feh,0fdh,0fdh
	BYTE 0fdh,0fdh,0fdh,0fdh,0feh,0feh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0fdh,0fdh,0fdh,0fdh
	BYTE 0fdh,0fdh,0fdh,0fdh,0fdh,0f0h,0f0h,0f0h,0cch,0a8h,064h,040h,0ffh,0ffh,0ffh,064h
	BYTE 064h,064h,044h,044h,064h,0a8h,0f0h,0ech,0c8h,0ech,0f0h,0ech,0f0h,0f4h,0f8h,0fdh
	BYTE 0fdh,0fdh,0fch,0fch,0f8h,0f8h,0f8h,0f8h,0fdh,0fdh,0fdh,0ffh,0fdh,0fdh,0fdh,0fdh
	BYTE 0feh,0feh,0ffh,0ffh,0feh,0feh,0fdh,0feh,0feh,0fdh,0fdh,0feh,0fdh,0fdh,0fdh,0f9h
	BYTE 0f4h,0f0h,0ech,0ech,0a8h,064h,020h,0ffh,0ffh,0ffh,064h,064h,044h,044h,064h,088h
	BYTE 0ech,0ech,0cch,0ech,0ech,0f0h,0f0h,0f0h,0f8h,0f8h,0fdh,0fdh,0fdh,0fdh,0fch,0fdh
	BYTE 0fdh,0fch,0f8h,0feh,0fdh,0feh,0ffh,0feh,0fdh,0fdh,0feh,0feh,0feh,0feh,0ffh,0feh
	BYTE 0feh,0fdh,0fdh,0feh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0f9h,0f4h,0f0h,0ech,0ech,088h
	BYTE 064h,0ffh,0ffh,0ffh,0ffh,064h,064h,064h,068h,0ach,0ech,0ech,0ech,0c8h,0ech,0ech
	BYTE 0f0h,0f4h,0f4h,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0feh
	BYTE 0fdh,0fdh,0feh,0fdh,0feh,0feh,0fdh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0fdh,0fdh
	BYTE 0fdh,0fdh,0fdh,0fdh,0fdh,0f4h,0f4h,0f0h,0cch,0a8h,068h,020h,0ffh,0ffh,0ffh,0ffh
	BYTE 068h,064h,064h,088h,0cch,0f0h,0ech,0cch,0cch,0f0h,0f0h,0f0h,0f4h,0f8h,0f8h,0fdh
	BYTE 0fdh,0fdh,0feh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0feh,0feh,0feh,0feh
	BYTE 0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0fdh,0fdh,0fdh,0fdh,0fdh
	BYTE 0f0h,0f4h,0cch,088h,044h,044h,0ffh,0ffh,0ffh,0ffh,0ffh,068h,068h,064h,0ach,0f0h
	BYTE 0ech,0ech,0cch,0f0h,0f0h,0ech,0f0h,0f8h,0f8h,0f8h,0fdh,0fdh,0fdh,0feh,0fdh,0fdh
	BYTE 0fdh,0fdh,0feh,0feh,0fdh,0fdh,0ffh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0feh
	BYTE 0fdh,0feh,0feh,0feh,0ffh,0feh,0fdh,0fdh,0fdh,0fdh,0f9h,0f0h,0f0h,0ach,064h,020h
	BYTE 024h,020h,0ffh,0ffh,0ffh,0ffh,044h,064h,064h,0ech,0f0h,0f0h,0cch,0ech,0f4h,0f0h
	BYTE 0f0h,0f4h,0f9h,0f4h,0f4h,0f8h,0fdh,0fdh,0fdh,0fdh,0fdh,0feh,0feh,0feh,0feh,0ffh
	BYTE 0fdh,0feh,0feh,0fdh,0fdh,0feh,0feh,0feh,0feh,0feh,0fdh,0feh,0feh,0feh,0feh,0feh
	BYTE 0feh,0fdh,0fdh,0fdh,0fdh,0f4h,0f0h,0ech,0ach,024h,020h,020h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,020h,044h,044h,0ach,0cch,0f1h,0f0h,0f0h,0f0h,0f0h,0f4h,0f4h,0fdh,0f5h,0f4h
	BYTE 0f4h,0fdh,0fdh,0fdh,0feh,0feh,0feh,0feh,0fdh,0feh,0feh,0fdh,0fdh,0fdh,0fdh,0fdh
	BYTE 0fdh,0feh,0fdh,0fdh,0feh,0fdh,0fdh,0fdh,0feh,0ffh,0feh,0feh,0fdh,0fdh,0fdh,0fdh
	BYTE 0f4h,0f0h,0a8h,044h,044h,020h,044h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,024h,068h,0ach
	BYTE 0ach,0d0h,0f0h,0d0h,0cch,0f0h,0f4h,0f5h,0fdh,0f9h,0f5h,0f8h,0fdh,0fdh,0fdh,0fdh
	BYTE 0fdh,0fdh,0fdh,0feh,0feh,0feh,0fdh,0fdh,0feh,0feh,0feh,0fdh,0fdh,0fdh,0feh,0feh
	BYTE 0fdh,0fdh,0fdh,0feh,0feh,0feh,0feh,0fdh,0fdh,0fdh,0fdh,0f4h,0ech,0a8h,064h,044h
	BYTE 044h,020h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,024h,088h,0ach,0ach,0ach,0ach,0cch
	BYTE 0ech,0f0h,0f0h,0f9h,0f9h,0fdh,0f8h,0f8h,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0feh,0feh
	BYTE 0feh,0fdh,0feh,0feh,0feh,0feh,0fdh,0fdh,0feh,0feh,0feh,0feh,0fdh,0fdh,0fdh,0fdh
	BYTE 0fdh,0fdh,0fdh,0fdh,0fdh,0f9h,0f4h,0f0h,0a8h,084h,088h,064h,020h,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,020h,088h,0cch,0cch,0cch,0ach,0cch,0ech,0ech,0f4h,0fdh
	BYTE 0fdh,0f0h,0f4h,0f4h,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0ffh,0ffh,0ffh
	BYTE 0feh,0fdh,0fdh,0fdh,0feh,0ffh,0feh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0f8h
	BYTE 0f4h,0f0h,0f0h,0a8h,088h,064h,040h,040h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 020h,064h,084h,0a8h,0cch,0ach,0cch,0cch,0c8h,0ech,0f0h,0f0h,0f0h,0f0h,0f4h,0f4h
	BYTE 0fdh,0fdh,0fdh,0f8h,0fdh,0fdh,0fdh,0fdh,0feh,0feh,0feh,0feh,0fdh,0fdh,0fdh,0ffh
	BYTE 0feh,0feh,0fdh,0fdh,0f4h,0f8h,0f8h,0f8h,0f4h,0f8h,0f9h,0f4h,0f4h,0ech,084h,044h
	BYTE 040h,040h,040h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,064h,088h,0ach,0ach
	BYTE 088h,0c8h,0c8h,0c8h,0ech,0f0h,0ech,0f0h,0f0h,0f4h,0f4h,0f4h,0f4h,0fdh,0f8h,0f4h
	BYTE 0f8h,0fdh,0fdh,0feh,0feh,0feh,0feh,0feh,0fdh,0fdh,0feh,0fdh,0f9h,0f4h,0f9h,0f4h
	BYTE 0f4h,0f0h,0f4h,0f4h,0f4h,0f8h,0f4h,0f4h,0a8h,084h,040h,040h,040h,020h,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,064h,064h,068h,044h,044h,0ech,0ech,0ech,0ech
	BYTE 0ech,0ech,0ech,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0fdh,0f0h,0f4h,0f0h,0fdh,0fdh,0feh
	BYTE 0feh,0feh,0feh,0fdh,0fdh,0fdh,0fdh,0f5h,0f0h,0f4h,0f4h,0f4h,0f0h,0f4h,0f4h,0f8h
	BYTE 0f4h,0f4h,0f0h,0cch,084h,040h,040h,020h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,000h,024h,068h,068h,068h,088h,0cch,0ech,0ech,0ech,0ech,0ech,0ech,0f0h,0f0h
	BYTE 0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f4h,0fdh,0feh,0fdh,0feh,0fdh,0fdh,0fdh
	BYTE 0fdh,0f9h,0f5h,0f5h,0f9h,0f8h,0f8h,0f4h,0f4h,0f4h,0f4h,0f4h,0ech,0cch,088h,0a4h
	BYTE 064h,020h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,024h,044h,068h,06ch
	BYTE 08ch,088h,0a8h,0f0h,0f0h,0ech,0ech,0ech,0f0h,0ech,0cch,0f0h,0f0h,0f0h,0f0h,0ech
	BYTE 0ech,0f0h,0f4h,0f8h,0fch,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0f9h,0f9h,0fdh,0fdh
	BYTE 0f4h,0f4h,0f8h,0f8h,0f8h,0f4h,0cch,0cch,0c8h,0c8h,0a8h,040h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,044h,048h,068h,068h,088h,0ach,0ech,0f0h
	BYTE 0ech,0ech,0f0h,0f0h,0f0h,0ech,0ech,0f0h,0f0h,0f0h,0f0h,0ech,0cch,0f0h,0f4h,0f4h
	BYTE 0f8h,0fdh,0fdh,0fdh,0fdh,0fdh,0fdh,0f9h,0f9h,0f9h,0f5h,0f4h,0f9h,0f8h,0f4h,0f0h
	BYTE 0ech,0a8h,0c8h,0a8h,0a8h,084h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,068h,048h,044h,068h,0a8h,0cch,0f4h,0f0h,0f0h,0f4h,0f4h,0f4h
	BYTE 0ech,0ech,0ech,0ech,0f0h,0ech,0a8h,0a8h,0ach,0ech,0f0h,0f4h,0fdh,0fdh,0fdh,0fdh
	BYTE 0fdh,0f9h,0f9h,0f5h,0f0h,0f0h,0f0h,0f5h,0f5h,0f0h,0ech,0cch,0c8h,084h,064h,064h
	BYTE 020h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 044h,044h,044h,088h,0a8h,0cch,0ech,0f0h,0f4h,0f4h,0f4h,0f0h,0f0h,0f0h,0f0h,0ech
	BYTE 0cch,0cch,0ach,0ach,0ach,0cch,0f0h,0fdh,0fch,0fdh,0fdh,0f9h,0f4h,0f0h,0f0h,0ech
	BYTE 0f0h,0d0h,0f1h,0d1h,0f1h,0ach,088h,064h,044h,040h,040h,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,044h,020h,064h
	BYTE 0a8h,0ech,0f0h,0f4h,0f4h,0f4h,0f0h,0f0h,0ech,0cch,0cch,0ech,0ech,0cch,0cch,0ach
	BYTE 088h,088h,0a8h,0ech,0f0h,0f0h,0f0h,0cch,0a8h,0ach,0ach,0cch,0cch,0d0h,0f1h,0f1h
	BYTE 088h,064h,040h,044h,064h,040h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,044h,044h,064h,0a8h,0ech,0ech
	BYTE 0ech,0ech,0ech,0a8h,0a8h,0ech,0ech,0cch,0cch,0cch,0ach,0a8h,064h,064h,084h,0c8h
	BYTE 0c8h,0cch,0ach,088h,088h,0a8h,0cch,0ach,0cch,0cch,0cch,064h,020h,020h,044h,064h
	BYTE 040h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,020h,044h,064h,088h,0a8h,0a8h,0a8h,0cch
	BYTE 0cch,0cch,0cch,0a8h,0cch,0cch,088h,044h,044h,084h,0a8h,084h,088h,064h,064h,064h
	BYTE 088h,088h,088h,0cch,0a8h,088h,020h,020h,040h,044h,040h,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,000h,044h,0a8h,0a8h,0a8h,088h,0cch,0c8h,0cch,0cch,088h
	BYTE 088h,088h,064h,064h,084h,084h,064h,064h,064h,064h,064h,088h,088h,088h,0a8h,0a8h
	BYTE 088h,020h,020h,020h,020h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,020h,064h,088h,088h,0cch,0c8h,064h,064h,084h,0a4h,084h,064h,088h,064h
	BYTE 064h,064h,084h,064h,064h,064h,084h,088h,0a8h,0a8h,0a8h,088h,020h,020h,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,040h
	BYTE 064h,064h,088h,064h,064h,084h,0a4h,084h,0a8h,064h,064h,044h,044h,044h,044h,044h
	BYTE 064h,064h,084h,0a8h,0a8h,0a8h,064h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,020h,044h,040h,020h
	BYTE 040h,064h,064h,064h,064h,064h,044h,024h,020h,020h,044h,064h,068h,064h,088h,064h
	BYTE 064h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,020h,020h,020h,044h,044h,044h
	BYTE 044h,044h,020h,0ffh,000h,024h,044h,068h,064h,040h,064h,040h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,020h,044h,044h,040h,044h,044h,040h,044h,044h,020h,0ffh,0ffh
	BYTE 0ffh,024h,044h,044h,044h,020h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 044h,064h,064h,044h,040h,044h,044h,044h,044h,020h,0ffh,0ffh,0ffh,020h,024h,020h
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,044h,044h,040h,040h
	BYTE 040h,040h,044h,044h,020h,0ffh,0ffh,0ffh,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,020h,020h,040h,040h,040h,040h,020h,020h
	BYTE 020h,020h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,020h,040h,044h,040h,020h,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh




fighter_000 EECS205BITMAP <44, 37, 255,, offset fighter_000 + sizeof fighter_000>
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,049h,0b6h,049h,049h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,049h
	BYTE 0ffh,0e0h,0e0h,080h,080h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0e0h,0e0h,0e0h,080h,080h
	BYTE 080h,080h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,049h,091h,049h,013h,049h,00ah,024h,049h,024h,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,049h,091h,049h,013h,0ffh,00ah,024h,049h,024h,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,049h,091h
	BYTE 013h,013h,0ffh,00ah,00ah,049h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,049h,091h,013h,013h,013h,00ah
	BYTE 00ah,049h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,049h,0b6h,013h,013h,013h,00ah,00ah,091h,024h,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,049h,091h,0b6h,049h,013h,013h,00ah,024h,091h,049h,024h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,049h,091h,091h
	BYTE 0b6h,049h,0ffh,024h,091h,049h,049h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,049h,049h,091h,091h,0b6h,091h,091h
	BYTE 049h,049h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,049h,049h,091h,091h,091h,049h,049h,049h,049h,024h,024h
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0e0h,0e0h,080h,0ffh,0ffh
	BYTE 0ffh,049h,091h,049h,049h,091h,049h,049h,024h,024h,049h,024h,0ffh,0ffh,0ffh,080h
	BYTE 080h,080h,080h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0e0h,0ffh,0e0h,0e0h,080h,080h,0ffh,049h,091h,091h,0b6h
	BYTE 091h,049h,049h,024h,049h,049h,049h,049h,024h,0ffh,0e0h,080h,080h,080h,080h,080h
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0e0h,049h,049h,049h,024h,080h,0ffh,049h,091h,0b6h,0b6h,091h,091h,049h,049h
	BYTE 049h,049h,049h,049h,024h,0ffh,0e0h,024h,024h,024h,024h,080h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0b6h,091h,091h
	BYTE 091h,049h,024h,049h,091h,091h,0b6h,091h,091h,091h,049h,049h,049h,049h,049h,049h
	BYTE 049h,024h,091h,049h,049h,049h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0b6h,091h,091h,091h,049h,024h,0ffh
	BYTE 049h,0b6h,091h,091h,091h,091h,049h,049h,049h,049h,049h,049h,024h,0e0h,091h,049h
	BYTE 049h,049h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0b6h,091h,091h,091h,049h,024h,0e0h,0ffh,049h,049h,091h
	BYTE 091h,091h,049h,049h,049h,049h,024h,024h,0e0h,080h,091h,049h,049h,049h,024h,024h
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0b6h,091h,091h,091h,049h,024h,0e0h,0e0h,049h,091h,049h,049h,049h,049h,024h
	BYTE 024h,024h,049h,024h,080h,080h,091h,049h,049h,049h,024h,024h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,049h,049h,049h
	BYTE 049h,024h,024h,0e0h,0e0h,0b6h,049h,0b6h,0b6h,091h,080h,049h,049h,049h,024h,049h
	BYTE 080h,080h,049h,024h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0b6h,091h,091h,091h,091h,091h,049h,024h
	BYTE 0e0h,0b6h,049h,091h,0b6h,091h,080h,049h,049h,024h,024h,049h,080h,091h,049h,049h
	BYTE 049h,049h,049h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,049h,0b6h,091h,091h,091h,091h,091h,049h,024h,0e0h,0b6h,049h,0b6h
	BYTE 091h,049h,080h,024h,024h,049h,024h,049h,080h,091h,049h,049h,049h,049h,049h,024h
	BYTE 024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,049h,049h
	BYTE 0b6h,091h,091h,000h,091h,091h,049h,024h,0e0h,0b6h,091h,049h,0b6h,091h,080h,049h
	BYTE 049h,024h,049h,049h,080h,091h,049h,049h,000h,049h,049h,024h,024h,024h,024h,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,091h,049h,0b6h,091h,000h,0fch
	BYTE 000h,091h,049h,024h,0e0h,0b6h,091h,049h,091h,091h,080h,049h,024h,024h,049h,049h
	BYTE 080h,091h,049h,000h,090h,000h,049h,024h,024h,024h,049h,024h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,091h,0b6h,091h,049h,0b6h,000h,0fch,000h,0fch,000h,049h,024h
	BYTE 0e0h,0b6h,091h,049h,0b6h,049h,080h,024h,049h,024h,049h,049h,080h,091h,000h,090h
	BYTE 000h,090h,000h,024h,024h,024h,049h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0b6h,091h,049h,0e0h,0b6h,000h,000h,000h,000h,000h,049h,024h,080h,0b6h,091h,091h
	BYTE 049h,091h,080h,049h,024h,049h,049h,049h,080h,091h,000h,000h,000h,000h,000h,024h
	BYTE 024h,024h,049h,049h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,091h,0e0h,0e0h,080h
	BYTE 0b6h,091h,091h,091h,091h,091h,049h,024h,080h,0b6h,091h,0b6h,091h,049h,080h,024h
	BYTE 049h,049h,049h,049h,080h,091h,049h,049h,049h,049h,049h,024h,024h,080h,080h,080h
	BYTE 049h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0e0h,080h,080h,0ffh,0ffh,049h,049h,049h
	BYTE 049h,049h,024h,0e3h,0b6h,0b6h,091h,091h,0b6h,091h,024h,049h,049h,049h,049h,049h
	BYTE 024h,0e3h,024h,024h,024h,024h,024h,024h,0ffh,0ffh,080h,080h,080h,080h,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0e0h,080h,0ffh,0ffh,0ffh,0e0h,0ffh,0e0h,0e0h,0e0h,0e0h,080h,080h
	BYTE 0ffh,0b6h,049h,049h,049h,0b6h,091h,024h,024h,024h,024h,024h,0ffh,0e0h,0e0h,080h
	BYTE 080h,080h,080h,080h,080h,0ffh,0ffh,0ffh,080h,080h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0e0h,0e0h,0e0h,0e0h,080h,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0b6h,091h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0e0h,080h,080h,080h,080h,080h
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0b6h,091h,024h
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0b6h,091h,024h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0b6h,091h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0e0h,024h,080h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,080h,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	
	
	asteroid_000 EECS205BITMAP <56, 53, 255,, offset asteroid_000 + sizeof asteroid_000>
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,024h,024h,024h,024h,024h,049h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,024h,024h,024h,024h,049h,049h,049h,049h,024h
	BYTE 024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,024h,024h,024h,024h,049h
	BYTE 049h,049h,049h,049h,024h,024h,024h,024h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,049h,049h,049h,049h,049h,049h,049h,049h,049h,024h,024h,024h,024h,024h,024h
	BYTE 024h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,049h,049h,091h,091h,049h,049h,049h,049h,049h
	BYTE 049h,049h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,049h,049h,049h,091h
	BYTE 091h,049h,049h,049h,049h,049h,024h,024h,024h,049h,049h,024h,024h,024h,024h,024h
	BYTE 024h,049h,049h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,049h,049h,091h,091h,091h,091h,049h,049h,049h,049h,049h,049h,024h,024h
	BYTE 024h,024h,049h,049h,049h,024h,024h,024h,000h,024h,049h,024h,024h,024h,024h,024h
	BYTE 024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,049h,049h,091h,091h,091h,091h,049h,091h
	BYTE 049h,049h,049h,049h,049h,024h,024h,024h,024h,024h,024h,049h,049h,024h,024h,024h
	BYTE 024h,000h,024h,024h,024h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,049h,049h
	BYTE 091h,091h,091h,091h,091h,049h,024h,049h,091h,049h,049h,049h,049h,024h,024h,024h
	BYTE 024h,024h,024h,049h,049h,049h,024h,024h,024h,024h,024h,024h,024h,049h,024h,024h
	BYTE 024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,091h,049h,091h,091h,0b6h,091h,091h,049h,049h,049h,024h,024h
	BYTE 049h,049h,049h,049h,049h,024h,024h,024h,024h,024h,024h,024h,049h,049h,049h,049h
	BYTE 024h,024h,049h,049h,024h,024h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h
	BYTE 091h,091h,049h,049h,049h,049h,049h,049h,049h,091h,091h,049h,049h,024h,024h,024h
	BYTE 024h,024h,024h,024h,024h,049h,049h,049h,049h,049h,049h,024h,024h,024h,024h,024h
	BYTE 024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h,0b6h,091h,049h,049h,049h,049h,049h,049h,049h
	BYTE 091h,091h,091h,091h,049h,049h,024h,024h,024h,024h,024h,024h,024h,024h,049h,049h
	BYTE 049h,024h,024h,024h,024h,024h,024h,049h,049h,049h,024h,024h,024h,024h,024h,024h
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h,0b6h
	BYTE 091h,049h,049h,049h,049h,049h,049h,049h,049h,091h,091h,091h,049h,049h,049h,024h
	BYTE 024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,049h,049h,049h
	BYTE 024h,024h,049h,024h,024h,024h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,091h,0b6h,0b6h,091h,0b6h,0b6h,091h,049h,049h,049h,049h,049h,049h,049h
	BYTE 049h,091h,091h,091h,091h,049h,049h,049h,024h,024h,024h,024h,024h,024h,024h,024h
	BYTE 024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,049h,024h
	BYTE 024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,091h,0b6h,0b6h,091h,091h,0b6h
	BYTE 091h,091h,091h,091h,049h,049h,049h,049h,049h,049h,091h,091h,091h,091h,049h,049h
	BYTE 049h,049h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h
	BYTE 024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,091h,0b6h,091h,091h,091h,091h,0b6h,091h,091h,091h,091h,091h,091h,091h
	BYTE 091h,049h,049h,091h,091h,091h,091h,049h,049h,049h,049h,024h,024h,024h,024h,024h
	BYTE 024h,024h,024h,024h,024h,049h,049h,049h,024h,024h,024h,024h,024h,024h,024h,024h
	BYTE 024h,049h,049h,024h,024h,0ffh,0ffh,0ffh,0ffh,091h,0b6h,0b6h,091h,091h,091h,091h
	BYTE 091h,091h,091h,091h,0b6h,0b6h,091h,091h,091h,091h,049h,049h,049h,091h,091h,049h
	BYTE 049h,049h,049h,049h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,049h,049h
	BYTE 049h,024h,024h,024h,024h,049h,024h,024h,024h,024h,049h,049h,024h,024h,0ffh,0ffh
	BYTE 0ffh,091h,0b6h,0b6h,091h,091h,091h,091h,091h,091h,091h,049h,091h,0b6h,091h,091h
	BYTE 091h,091h,091h,049h,049h,049h,091h,049h,049h,049h,049h,049h,024h,024h,024h,024h
	BYTE 024h,049h,049h,049h,049h,049h,049h,049h,049h,049h,049h,024h,024h,049h,024h,024h
	BYTE 024h,024h,049h,049h,024h,024h,0ffh,0ffh,091h,0b6h,0b6h,0b6h,091h,091h,091h,091h
	BYTE 091h,091h,091h,091h,049h,091h,091h,0b6h,0b6h,091h,091h,049h,049h,049h,091h,091h
	BYTE 049h,049h,049h,049h,024h,024h,024h,024h,049h,049h,049h,049h,049h,049h,049h,091h
	BYTE 091h,049h,049h,049h,024h,024h,049h,024h,024h,024h,024h,049h,024h,024h,0ffh,0ffh
	BYTE 091h,0b6h,0b6h,0b6h,091h,091h,091h,091h,091h,091h,0b6h,091h,091h,091h,091h,091h
	BYTE 0b6h,0b6h,091h,091h,091h,091h,091h,091h,091h,049h,049h,049h,024h,024h,024h,024h
	BYTE 049h,049h,049h,049h,049h,049h,024h,024h,091h,091h,049h,049h,024h,024h,049h,049h
	BYTE 024h,024h,024h,049h,049h,024h,0ffh,0ffh,091h,0b6h,0b6h,0b6h,091h,091h,091h,0b6h
	BYTE 0b6h,091h,091h,091h,091h,091h,091h,091h,091h,091h,091h,091h,0b6h,091h,091h,091h
	BYTE 091h,091h,091h,049h,049h,024h,024h,024h,024h,049h,049h,049h,049h,024h,049h,049h
	BYTE 049h,091h,091h,049h,049h,024h,049h,049h,024h,024h,024h,024h,049h,024h,0ffh,0ffh
	BYTE 0ffh,091h,0b6h,0b6h,0b6h,091h,0b6h,0b6h,0b6h,091h,091h,049h,091h,091h,091h,091h
	BYTE 091h,091h,091h,0b6h,091h,091h,091h,049h,091h,091h,049h,049h,049h,024h,024h,024h
	BYTE 024h,049h,049h,049h,049h,024h,024h,049h,049h,049h,091h,049h,049h,024h,049h,049h
	BYTE 049h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h,091h,0b6h,0b6h
	BYTE 091h,0b6h,0b6h,091h,049h,091h,091h,091h,091h,091h,0b6h,0b6h,091h,091h,091h,049h
	BYTE 091h,091h,091h,049h,049h,049h,024h,024h,024h,049h,049h,049h,049h,024h,024h,024h
	BYTE 049h,024h,024h,049h,049h,049h,049h,049h,049h,049h,024h,024h,024h,024h,024h,0ffh
	BYTE 0ffh,091h,0b6h,0b6h,0b6h,091h,0b6h,091h,049h,091h,0b6h,0b6h,091h,091h,091h,091h
	BYTE 091h,091h,091h,0b6h,091h,091h,091h,049h,091h,091h,091h,091h,049h,049h,024h,024h
	BYTE 049h,049h,049h,049h,049h,049h,049h,024h,024h,024h,049h,049h,049h,049h,049h,049h
	BYTE 049h,049h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,091h,0b6h,0b6h,091h,0b6h,091h
	BYTE 049h,091h,091h,0b6h,091h,091h,091h,091h,091h,091h,0b6h,0b6h,0b6h,091h,091h,049h
	BYTE 049h,091h,091h,091h,049h,049h,024h,024h,049h,049h,049h,049h,024h,049h,049h,049h
	BYTE 049h,049h,049h,049h,049h,049h,049h,049h,049h,024h,024h,024h,024h,024h,024h,0ffh
	BYTE 0ffh,0ffh,091h,0b6h,0b6h,0b6h,0b6h,091h,049h,049h,091h,0b6h,091h,091h,091h,091h
	BYTE 091h,091h,091h,0b6h,0b6h,091h,091h,091h,049h,049h,049h,049h,049h,024h,024h,049h
	BYTE 049h,049h,049h,049h,024h,024h,049h,049h,049h,049h,049h,049h,049h,049h,049h,049h
	BYTE 024h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h,0b6h,0b6h
	BYTE 091h,049h,049h,091h,091h,091h,091h,091h,091h,091h,091h,0b6h,0b6h,091h,091h,049h
	BYTE 049h,049h,049h,091h,049h,049h,049h,049h,049h,049h,049h,049h,024h,024h,024h,049h
	BYTE 049h,049h,049h,049h,024h,024h,024h,024h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h,0b6h,091h,091h,091h,091h,091h,091h,091h,091h
	BYTE 091h,091h,091h,091h,0b6h,0b6h,091h,049h,049h,049h,049h,049h,049h,049h,049h,049h
	BYTE 024h,024h,024h,049h,024h,024h,024h,049h,049h,024h,024h,024h,024h,024h,024h,024h
	BYTE 024h,049h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,091h,0b6h,0b6h,0b6h
	BYTE 0b6h,091h,091h,091h,091h,091h,091h,091h,091h,091h,091h,091h,0b6h,0b6h,091h,049h
	BYTE 049h,049h,049h,049h,049h,049h,049h,049h,049h,024h,024h,024h,024h,024h,024h,049h
	BYTE 024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h,091h,091h,091h,091h,091h,091h,091h
	BYTE 091h,091h,091h,091h,091h,0b6h,091h,049h,049h,049h,049h,049h,049h,049h,091h,091h
	BYTE 049h,049h,024h,024h,024h,024h,049h,049h,024h,024h,024h,024h,049h,049h,024h,024h
	BYTE 024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,0b6h
	BYTE 0b6h,0b6h,091h,091h,091h,091h,091h,091h,091h,091h,091h,091h,091h,091h,091h,049h
	BYTE 049h,049h,049h,091h,049h,024h,049h,091h,049h,049h,024h,024h,024h,024h,049h,024h
	BYTE 024h,024h,049h,049h,049h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h,0b6h,091h,091h,0b6h,0b6h,091h
	BYTE 0b6h,091h,091h,091h,091h,091h,091h,049h,049h,049h,049h,091h,049h,024h,049h,091h
	BYTE 049h,049h,024h,024h,024h,049h,024h,024h,024h,024h,049h,049h,024h,024h,024h,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h
	BYTE 0b6h,0b6h,0b6h,0b6h,0b6h,0b6h,091h,091h,091h,091h,091h,091h,091h,091h,091h,091h
	BYTE 049h,049h,049h,091h,091h,049h,024h,049h,049h,049h,024h,024h,049h,024h,024h,024h
	BYTE 024h,024h,049h,049h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h,0b6h,091h,091h,091h
	BYTE 091h,091h,091h,091h,091h,091h,091h,091h,049h,049h,049h,091h,091h,091h,049h,049h
	BYTE 049h,049h,024h,049h,049h,024h,024h,024h,024h,049h,024h,024h,024h,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,091h,0b6h,0b6h,0b6h,091h,091h,091h,0b6h,0b6h,091h,091h,091h,0b6h,091h,091h
	BYTE 091h,091h,049h,049h,091h,091h,091h,049h,049h,049h,049h,049h,024h,024h,024h,024h
	BYTE 024h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h,0b6h,091h,049h
	BYTE 091h,0b6h,091h,091h,091h,091h,091h,091h,091h,091h,091h,049h,049h,091h,049h,049h
	BYTE 049h,049h,049h,049h,024h,024h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,091h,0b6h,0b6h,0b6h,091h,049h,049h,091h,091h,091h,091h,091h,091h,091h
	BYTE 091h,091h,091h,091h,091h,091h,049h,049h,049h,024h,049h,049h,049h,024h,024h,024h
	BYTE 024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h,091h
	BYTE 091h,091h,091h,091h,091h,091h,0b6h,091h,091h,091h,091h,091h,091h,049h,049h,049h
	BYTE 049h,049h,049h,049h,049h,024h,024h,024h,024h,024h,024h,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,091h,091h,0b6h,0b6h,0b6h,0b6h,0b6h,0b6h,091h,091h,0b6h,0b6h,091h
	BYTE 091h,091h,091h,091h,091h,049h,049h,049h,049h,049h,049h,049h,049h,049h,024h,024h
	BYTE 024h,049h,024h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,091h,091h
	BYTE 091h,0b6h,0b6h,0b6h,0b6h,0b6h,0b6h,0b6h,091h,091h,091h,091h,091h,049h,049h,049h
	BYTE 049h,049h,091h,091h,091h,049h,024h,024h,024h,049h,024h,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,091h,091h,0b6h,0b6h,0b6h,0b6h
	BYTE 0b6h,091h,091h,091h,091h,049h,049h,049h,024h,091h,091h,091h,091h,091h,049h,024h
	BYTE 049h,091h,049h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,091h,091h,0b6h,0b6h,0b6h,0b6h,091h,091h,091h,091h,049h,024h
	BYTE 049h,049h,049h,049h,091h,091h,091h,049h,091h,049h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,0b6h
	BYTE 0b6h,0b6h,091h,091h,091h,091h,091h,024h,049h,049h,049h,049h,049h,049h,091h,091h
	BYTE 091h,049h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h,091h,091h,0b6h,091h,024h
	BYTE 024h,049h,049h,049h,049h,049h,091h,091h,091h,049h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 091h,0b6h,0b6h,0b6h,091h,091h,091h,091h,024h,024h,024h,049h,049h,049h,091h,091h
	BYTE 091h,049h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h,091h,0b6h,091h
	BYTE 091h,091h,024h,024h,049h,049h,024h,091h,091h,049h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,091h,0b6h,0b6h,0b6h,0b6h,0b6h,091h,091h,091h,024h,024h,024h,091h,091h
	BYTE 091h,049h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h,0b6h
	BYTE 0b6h,0b6h,091h,091h,091h,091h,091h,091h,049h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,091h,0b6h,0b6h,0b6h,091h,091h,091h,091h,091h,091h,091h,049h,049h
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,091h,0b6h,0b6h
	BYTE 091h,091h,091h,091h,091h,049h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,091h,091h,091h,091h,091h,049h,049h,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 049h,049h,049h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh

nuke_001 EECS205BITMAP <15, 16, 255,, offset nuke_001 + sizeof nuke_001>
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,01ch,01ch,01ch,01ch,01ch,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,0ffh,0ffh,0ffh,0ffh,0ffh,01ch
	BYTE 01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,0ffh,0ffh,0ffh,01ch,01ch,01ch
	BYTE 01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,0ffh,0ffh,01ch,01ch,01ch,01ch
	BYTE 01ch,0ffh,0ffh,0ffh,01ch,01ch,01ch,01ch,01ch,0ffh,01ch,01ch,01ch,01ch,01ch,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 01ch,01ch,01ch,01ch,01ch,0ffh,01ch,01ch,01ch,01ch,01ch,0ffh,0ffh,0ffh,01ch,01ch
	BYTE 01ch,01ch,01ch,0ffh,0ffh,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch
	BYTE 01ch,01ch,0ffh,0ffh,0ffh,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,01ch,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,01ch,01ch,01ch,01ch,01ch,0ffh,0ffh,0ffh,0ffh,0ffh




	;;Helpful Structures
	POINT STRUCT
		 x    DWORD  ?
		 y    DWORD  ?
	POINT ENDS


Bullet SPRITE <320,420 ,0, offset nuke_001,3,1,1,10>
Player SPRITE <320,420, 1, offset fighter_000, 1,1, 1, 35>
Explosion SPRITE <0,0,0,offset explosion, 4,1,0,84>
Asteroid10 SPRITE <25,50,1, offset Invader,2,1,1, 22>
Asteroid1 SPRITE <80,50,1, offset Invader,2,1,1, 22>
Asteroid6 SPRITE <135,50,1, offset Invader,2,1,1, 22>
Asteroid2 SPRITE <190,50,1, offset Invader,2,1,1, 22>
Asteroid7 SPRITE <245,50,1, offset Invader,2,1,1, 22>
Asteroid3 SPRITE <300,50,1, offset Invader,2,1, 1, 22>
Asteroid8 SPRITE <355,50,1, offset Invader,2,1, 1, 22>
Asteroid4 SPRITE <410,50,1, offset Invader,2,1,1, 22>
Asteroid9 SPRITE <465,50,1, offset Invader,2,1,1, 22>
Asteroid5 SPRITE <520,50,1, offset Invader,2,1,1, 22>
Asteroid11 SPRITE <575,50,1, offset Invader,2,1,1,22>

Asteroid12 SPRITE <25, 100 ,1, offset Invader,2,1,1,22>
Asteroid13 SPRITE <80, 100 ,1, offset Invader,2,1,1,22>
Asteroid14 SPRITE <135, 100 ,1, offset Invader,2,1,1,22>
Asteroid15 SPRITE <190, 100 ,1, offset Invader,2,1,1,22>
Asteroid16 SPRITE <245, 100 ,1 , offset Invader,2,1,1,22>
Asteroid17 SPRITE <300, 100 ,1, offset Invader,2,1, 1,22>
Asteroid18 SPRITE <355, 100 ,1, offset Invader,2,1, 1,22>
Asteroid19 SPRITE <410, 100 ,1, offset Invader,2,1,1,22>
Asteroid20 SPRITE <465, 100 ,1, offset Invader,2,1,1,22>
Asteroid21 SPRITE <520, 100 ,1, offset Invader,2,1,1,22>
Asteroid22 SPRITE <575, 100 ,1, offset Invader,2,1,1,22>


Asteroid23 SPRITE <25, 150 ,1, offset Invader,2,1,1,22>
Asteroid24 SPRITE <80, 150 ,1, offset Invader,2,1,1,22>
Asteroid25 SPRITE <135, 150 ,1, offset Invader,2,1,1,22>
Asteroid26 SPRITE <190, 150 ,1, offset Invader,2,1,1,22>
Asteroid27 SPRITE <245, 150 ,1 , offset Invader,2,1,1,22>
Asteroid28 SPRITE <300, 150 ,1, offset Invader,2,1, 1,22>
Asteroid29 SPRITE <355, 150 ,1, offset Invader,2,1, 1,22>
Asteroid30 SPRITE <410, 150 ,1, offset Invader,2,1,1,22>
Asteroid31 SPRITE <465, 150 ,1, offset Invader,2,1,1,22>
Asteroid32 SPRITE <520, 150 ,1, offset Invader,2,1,1,22>
Asteroid33 SPRITE <575, 150 ,1, offset Invader,2,1,1,22>

Asteroid34 SPRITE <25, 200 ,1, offset Invader,2,1,1,22>
Asteroid35 SPRITE <80, 200 ,1, offset Invader,2,1,1,22>
Asteroid36 SPRITE <135, 200 ,1, offset Invader,2,1,1,22>
Asteroid37 SPRITE <190, 200 ,1, offset Invader,2,1,1,22>
Asteroid38 SPRITE <245, 200 ,1 , offset Invader,2,1,1,22>
Asteroid39 SPRITE <300, 200 ,1, offset Invader,2,1, 1,22>
Asteroid40 SPRITE <355, 200 ,1, offset Invader,2,1, 1,22>
Asteroid41 SPRITE <410, 200 ,1, offset Invader,2,1,1,22>
Asteroid42 SPRITE <465, 200 ,1, offset Invader,2,1,1,22>
Asteroid43 SPRITE <520, 200 ,1, offset Invader,2,1,1,22>
Asteroid44 SPRITE <575, 200 ,1, offset Invader,2,1,1,22>








NumSprites DWORD 47
Sprites DWORD offset Bullet
expl DWORD offset Explosion
.CODE


DrawAllSprites PROC ;;uses ebx 
mov eax, 0
mov ebx, Sprites
DNS:
cmp (SPRITE PTR [ebx]).Visible, 1
jne nextSprite
INVOKE BasicBlit,(SPRITE PTR [ebx]).BitmapPTR, (SPRITE PTR [ebx]).LocX ,(SPRITE PTR [ebx]).LocY


nextSprite:
add ebx, 32
inc eax
cmp eax, NumSprites
jne DNS

ret
DrawAllSprites ENDP

;; Define the function GameRender
;; Since we have thoroughly covered defining functions in class, its up to you from here on out...
GameRender PROC
INVOKE BeginDraw
INVOKE DrawAllStars
INVOKE DrawAllSprites
INVOKE EndDraw

ret
GameRender ENDP



	
END
