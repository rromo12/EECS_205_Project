; #########################################################################
;
;   game.asm - Assembly file for EECS205 Assignment 4/5
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
    include keys.inc	
	
.DATA
	 shoot BYTE "shoot.wav",0
	 explosion BYTE "explosion.wav",0
	 intro BYTE "intro.wav",0

.CODE
;;Sound
  EXTERNDEF STDCALL PlaySoundA : NEAR
  PlaySoundA PROTO STDCALL :DWORD,:DWORD,:DWORD
  PlaySound equ <PlaySoundA>
  SND_ASYNC = 1h
  SND_LOOP = 0008h
 SND_FILENAME = 20000h


;; Define the functions GameMain and GameInit
;; Since we have thoroughly covered defining functions in class, its up to you from here on out...
	GameInit PROC 
	     ;;
		 INVOKE PlaySound, OFFSET intro, 0, SND_ASYNC+SND_FILENAME
	ret
	GameInit ENDP 



	GameMain PROC mouseStatus:DWORD, keyDown:DWORD, keyUp:DWORD
		
	INVOKE GameLogic, keyDown
	INVOKE GameRender 	
	ret
	GameMain ENDP



END
