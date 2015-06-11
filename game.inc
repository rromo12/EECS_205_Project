; #########################################################################
;
;   game.inc - Includes for EECS205 Assignment 4/5
;
;
; #########################################################################

;; These are library routines that you will call (but do NOT have to implement)
BeginDraw PROTO
EndDraw PROTO

;; You should not need to modify these prototypes (actually, it would probably be bad)
GameInit PROTO
GameMain PROTO mouseStatus:DWORD, keyDown:DWORD, keyUp:DWORD

;; Useful Library Routines
DrawString PROTO x:DWORD, y:DWORD, string:PTR BYTE 
DrawInt PROTO x:DWORD, y:DWORD, value:DWORD

;; Feel free to modify the following
GameRender PROTO 
GameLogic PROTO CurrentKey:DWORD ;;CurrentDirection:DWORD;;xinc:DWORD, yinc:DWORD
Collision PROTO Sprite1:DWORD, Sprite2:DWORD 
SPRITE STRUCT
 LocX		  DWORD  ?
 LocY		  DWORD  ?
 Visible      DWORD  ?
 BitmapPTR    DWORD  ?	
 BMType       DWORD  ?
 Health	      DWORD  ?
 Other	      DWORD  ?
 Radius		  DWORD  ?
SPRITE ENDS

EXTERNDEF Sprites : DWORD
EXTERNDEF expl: DWORD
EXTERNDEF NumSprites: DWORD

