; #########################################################################
;
;   logic.asm - Assembly file for EECS205 Assignment 4/5
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
gameover BYTE "gameover.wav",0
.CODE

;;sound
EXTERNDEF STDCALL PlaySoundA : NEAR
  PlaySoundA PROTO STDCALL :DWORD,:DWORD,:DWORD
  PlaySound equ <PlaySoundA>
  SND_ASYNC = 1h
  SND_LOOP = 0008h
 SND_FILENAME = 20000h
;; Define the function GameLogic
;; Since we have thoroughly covered defining functions in class, its up to you from here on out...
GameLogic PROC  CurrentKey


cmp CurrentKey,VK_R
jne game
INVOKE GameLogic,CurrentKey


game:
mov ebx, Sprites
mov ecx,ebx
add ecx,32
cmp (SPRITE PTR [ecx]).Visible,1
jne done
mov eax, 0
SpriteLoop:
;; player logic 
cmp (SPRITE PTR [ebx]).BMType, 1
jne Asteroid
		RightArrow:
		cmp CurrentKey,VK_RIGHT   
		jne LeftArrow 
		mov ecx, (SPRITE PTR [ebx]).LocX
		add ecx, 10
		mov (SPRITE PTR [ebx]).LocX, ecx
		mov edx, Sprites
		cmp (SPRITE PTR [edx]).Visible, 0
		jne leftedge
		mov (SPRITE PTR [edx]).LocX, ecx

		LeftArrow:
		cmp CurrentKey,VK_LEFT    
		jne leftedge
		mov ecx, (SPRITE PTR [ebx]).LocX
		sub ecx, 10
		mov (SPRITE PTR [ebx]).LocX, ecx
		mov edx, Sprites
		cmp (SPRITE PTR [edx]).Visible, 0
		jne leftedge
		mov (SPRITE PTR [edx]).LocX, ecx
		
;;Player Edge Logic
		leftedge:
		cmp (SPRITE PTR [ebx]).LocX,0
		jg rightedge
		mov (SPRITE PTR [ebx]).LocX,639
		jmp dun
		rightedge:
		cmp (SPRITE PTR [ebx]).LocX,639
		jl Asteroid
		mov (SPRITE PTR [ebx]).LocX,0
		

;;Asteroid/invader logic

Asteroid:
cmp (SPRITE PTR [ebx]).BMType,2
jne Laser
		MoveRight: ;;Health = 1
		cmp (SPRITE PTR [ebx]).Health, 1
		jne MoveLeft
		mov ecx, (SPRITE PTR [ebx]).LocX
		add ecx, (SPRITE PTR [ebx]).Other
		mov (SPRITE PTR [ebx]).LocX, ecx

		MoveLeft: ;;Health = -1
		cmp (SPRITE PTR [ebx]).Health, -1
		jne SwitchRight
		mov ecx, (SPRITE PTR [ebx]).LocX
		sub ecx, (SPRITE PTR [ebx]).Other
		mov (SPRITE PTR [ebx]).LocX, ecx

		;;DirectionChanges
		SwitchRight:
		cmp (SPRITE PTR [ebx]).LocX,639
		jl SwitchLeft
		mov ecx, (SPRITE PTR [ebx]).LocY
		add ecx, 20
		mov (SPRITE PTR [ebx]).LocY, ecx

		;;increase speed
		;;cmp (SPRITE PTR [ebx]).Other,1
		;;je exa

		;;mov ecx,(SPRITE PTR [ebx]).Other
		;;inc ecx
		;;mov (SPRITE PTR [ebx]).Other, ecx
		;;exa:
		mov (SPRITE PTR [ebx]).Health,-1
		jmp Laser

		SwitchLeft:
		cmp (SPRITE PTR [ebx]).LocX,0
		jg Laser
		mov ecx, (SPRITE PTR [ebx]).LocY
		add ecx, 20
		mov (SPRITE PTR [ebx]).LocY, ecx		
		mov (SPRITE PTR [ebx]).Health,1

Laser:
cmp (SPRITE PTR [ebx]).BMType,3
jne nextspt
		;;Key Press
		;;laser made visible if space is pressed
		cmp CurrentKey,VK_SPACE
		jne movementlogic
		cmp (SPRITE PTR [ebx]).Visible,0 
		jne movementlogic
		INVOKE PlaySound, OFFSET shoot, 0, SND_ASYNC+SND_FILENAME
		mov (SPRITE PTR [ebx]).Visible, 1
		
		;;if laser visible, then it moves up
		movementlogic:
		cmp (SPRITE PTR [ebx]).Visible, 1
		jne nextspt
		mov ecx,(SPRITE PTR [ebx]).LocY
		sub ecx, 4
		mov (SPRITE PTR [ebx]).LocY, ecx

		;;when it reaches the top laser is made innvisible and moved to original location
		cmp (SPRITE PTR [ebx]).LocY,0
		jg nextspt
		mov (SPRITE PTR [ebx]).Visible, 0
		mov (SPRITE PTR [ebx]).LocY,420







;;move on to next sprite 
nextspt:
add ebx, 32
inc eax
cmp eax, NumSprites
jle SpriteLoop


;;HitDetecionloop
mov ebx, Sprites
mov edx, 0
mov esi, 0
mov edi, 0
SpriteLoop2:
INVOKE Collision, Sprites, ebx
cmp eax,1 ;; if a hit collision returns 1
jne nextspt2 ;;if no collision move on
cmp (SPRITE PTR [ebx]).BMType, 2
jne nextspt2 ;; if collision is not with asteroid mov on
;;make asteroid not visible 
INVOKE PlaySound, OFFSET explosion, 0, SND_ASYNC+SND_FILENAME
mov (SPRITE PTR [ebx]).Visible,0
mov  edi,(SPRITE PTR [ebx]).LocY
mov  esi,(SPRITE PTR [ebx]).LocX
;; esi,edi<-x,y location for explotion
;;make laser not visible and move it to original location
mov ebx, Sprites
mov (SPRITE PTR [ebx]).Visible,0
mov (SPRITE PTR [ebx]).LocY,420
;;draw explosion at proper location
mov ebx, expl
mov  (SPRITE PTR [ebx]).LocY,edi
mov (SPRITE PTR [ebx]).LocX, esi
mov (SPRITE PTR [ebx]).Visible,1

;;mov on to next sprite
nextspt2:
add ebx, 32
inc edx
cmp edx, NumSprites
jle SpriteLoop2




;;;;HitDetecionloop player
mov ebx, Sprites
mov ecx,ebx
add ecx,32
mov edx, 0
mov esi, 0
mov edi, 0
SpriteLoop3:
INVOKE Collision, ecx, ebx
cmp eax,1 ;; if a hit collision returns 1
jne nextspt3 ;;if no collision move on
cmp (SPRITE PTR [ebx]).BMType, 2
jne nextspt3 ;; if collision is not with asteroid mov on
pushad
INVOKE PlaySound, OFFSET explosion, 0, SND_ASYNC+SND_FILENAME
popad
;;make asteroid not visible 
mov (SPRITE PTR [ebx]).Visible,0
mov  edi,(SPRITE PTR [ebx]).LocY
mov  esi,(SPRITE PTR [ebx]).LocX
;; esi,edi<-x,y location for explotion
;;make player not visible and move it to original location
mov (SPRITE PTR [ecx]).Visible,0
mov (SPRITE PTR [ecx]).LocY,420
;;draw explosion at proper location
mov ebx, expl
mov  (SPRITE PTR [ebx]).LocY,edi
mov (SPRITE PTR [ebx]).LocX, esi
mov (SPRITE PTR [ebx]).Visible,1
;;mov on to next sprite
nextspt3:
add ebx, 32
inc edx
cmp edx, NumSprites
jle SpriteLoop3








;;Explosion logic timing
mov ebx,expl
mov ecx,(SPRITE PTR [ebx]).Other
inc ecx
mov (SPRITE PTR [ebx]).Other, ecx 
cmp ecx,90
jne dun
mov (SPRITE PTR [ebx]).Visible,0
mov (SPRITE PTR [ebx]).Other,0

dun:
mov ebx, Sprites
mov ecx,ebx
add ecx,32
cmp (SPRITE PTR [ecx]).Visible,1
je done
INVOKE PlaySound, OFFSET gameover, 0, SND_ASYNC+SND_FILENAME
done:
ret
GameLogic ENDP





Collision PROC uses ebx ecx edx esi edi SpritePTR1:DWORD, SpritePTR2:DWORD
;;(x2-x1)^2
mov ebx, SpritePTR1
mov ecx, SpritePTR2
cmp (SPRITE PTR [ecx]).Visible,0
je setZero
cmp (SPRITE PTR [ebx]).Visible,0
je setZero
mov eax,(SPRITE PTR [ebx]).LocX
sub eax,(SPRITE PTR [ecx]).LocX
imul eax
mov edi, eax
;;(y2-y1)^2
mov eax,(SPRITE PTR [ebx]).LocY
sub eax,(SPRITE PTR [ecx]).LocY
imul eax
add edi, eax
;;edi<- (x2-x1)^2+(y2-y1)^2

mov eax, (SPRITE PTR [ebx]).Radius
add eax, (SPRITE PTR [ecx]).Radius
imul eax
;;eax<- (R1+R2)^2
sub eax, edi
cmp eax, 0 
jl setZero
mov eax, 1
jmp processed


setZero:
mov eax,0

processed:
ret
Collision ENDP


END
