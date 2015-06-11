; #########################################################################
;
;   rotate.asm - Assembly file for EECS205 Assignment 3
;
;
; #########################################################################

      .586
      .MODEL FLAT,STDCALL
      .STACK 4096
      option casemap :none  ; case sensitive

    include blit.inc		; Useful prototypes
    include rotate.inc		; 	and definitions
	include trig.inc

.DATA
	;; You may declare helper variables here, but it would probably be better to use local variables

.CODE


;; Define the functions BasicBlit and RotateBlit
;; Take a look at rotate.inc for the correct prototypes (if you don't follow these precisely, you'll get errors)
;; Since we have thoroughly covered defining functions in class, its up to you from here on out...
;; Remember to include the 'ret' instruction or your program will hang

BasicBlit PROC STDCALL uses eax ebx ecx edx esi edi lpBmp:PTR EECS205BITMAP, xcenter:DWORD, ycenter:DWORD 

mov edx, lpBmp
mov esi, xcenter
mov edi, ycenter 
INVOKE BlitReg
ret
BasicBlit ENDP

RotateBlit PROC STDCALL uses eax ebx ecx edx esi edi lpBmp:PTR EECS205BITMAP, xcenter:DWORD, ycenter:DWORD, angle:DWORD


LOCAL cosa:DWORD
LOCAL sina:DWORD
LOCAL shiftX:Dword
LOCAL shiftY:Dword
LOCAL dstWidth:Dword
LOCAL dstHeight:Dword
LOCAL srcX:Dword
LOCAL srcY:Dword
LOCAL dstX:Dword
LOCAL dstY:Dword
LOCAL finX:Dword
LOCAL finY:Dword

mov eax, angle
;;cosa = FixedCos(angle) 
;;sina = FixedSin(angle) 
;;esi = lpBitmap
mov esi, lpBmp			

invoke FixedCos, angle
mov cosa, eax

INVOKE FixedSin, angle			
mov sina, eax			
neg sina		

;;shiftX = (EECS205BITMAP PTR [esi]).dwWidth * cosa  / 2  ­ EECS205BITMAP PTR [esi]).dwHeight * sina / 2;

mov eax, (EECS205BITMAP PTR [esi]).dwHeight
shr eax, 1				;;eax<-dwHeight
imul sina				
	shr eax, 16
	shl edx, 16
	or eax, edx								;;eax<-dwHeight*sina
											;;eax<-dwHeight*sina/2
mov ebx, eax								;;ebx<-- dwHeight*sinA/2

mov eax, (EECS205BITMAP PTR [esi]).dwWidth	
shr eax, 1			;; eax<-dwWidth
imul cosa		
	shr eax, 16
	shl edx, 16
	or eax, edx										;; eax<-dwWidth*cosa
													;; eax<-dwWidth*cosa/2
sub eax, ebx										;; eax<-dwWidth*cosa/2 - dwWidth*sina/2
mov shiftX, eax 


;;shiftY = (EECS205BITMAP PTR [esi]).dwHeight * cosa / 2 +(EECS205BITMAP PTR [esi]).dwWidth * sina / 2;
mov eax, (EECS205BITMAP PTR [esi]).dwHeight				;;eax<-dwHeight
shr eax, 1
imul cosa		
	shr eax, 16
	shl edx, 16
	or eax, edx										;;eax<-dwHeight*cosa
													;;eax<-dwHeight*cosa/2
mov ebx, eax										;;ebx<--dwHeight*cosa/2


mov eax, (EECS205BITMAP PTR [esi]).dwWidth		
shr eax, 1		;;eax<-dwWidth
imul sina		
	shr eax, 16
	shl edx, 16
	or eax, edx										;;eax<-dwWidth*sina
													;;eax<-dwWidth*sina/2
add ebx, eax										;;ebx<-dwHeight*cosa/2 -dwWidth*sina/2
mov shiftY, ebx 


;;dstWidth= (EECS205BITMAP PTR [esi]).dwWidth + (EECS205BITMAP PTR [esi]).dwHeight; 
mov eax, (EECS205BITMAP PTR [esi]).dwWidth
mov ebx, (EECS205BITMAP PTR [esi]).dwHeight
add eax,ebx
mov dstWidth, eax
mov dstHeight,eax

;;for(dstX = ­dstWidth; dstX < dstWidth; dstX++)

mov eax, dstWidth
neg eax
mov dstX, eax


	jmp condition1 
	body1:

	
		 ;;for(dstY = ­dstHeight; dstY < dstHeight; dstY++) 
		mov eax, dstWidth
		neg eax
		mov dstY, eax
		jmp condition2 
		
		body2:
			;;srcX = dstX*cosa + dstY*sina;
			mov eax, dstX
			imul cosa
				shr eax, 16
				shl edx, 16
				or eax, edx
			mov ebx, eax
			mov eax, dstY
			imul sina
				shr eax, 16
				shl edx, 16
				or eax, edx
			add eax, ebx
			mov srcX, eax

			;;srcY = dstY*cosa – dstX*sina;
			mov eax, dstY
			imul cosa
				shr eax, 16
				shl edx, 16
				or eax, edx
			mov ebx, eax
			mov eax, dstX
			imul sina
				shr eax, 16
				shl edx, 16
				or eax, edx
			sub ebx, eax
			mov srcY, ebx
			
		
;;		if (srcX >= 0 && srcX < (EECS205BITMAP PTR [esi]).dwWidth && 
				cmp srcX,0
				jl elseskip
				mov eax, (EECS205BITMAP PTR [esi]).dwWidth
				cmp srcX, eax
				jg elseskip
;;           srcY >= 0 && srcY < (EECS205BITMAP PTR [esi]).dwHeight && 
				cmp srcY,0
				jl elseskip
				mov eax, (EECS205BITMAP PTR [esi]).dwHeight
				cmp srcY, eax
				jg elseskip
				
;;            (xcenter+dstX­shiftX) >= 0 && (xcenter+dstX­shiftX) < 639 && 
				mov eax, xcenter 
				add eax, dstX
				mov ebx, shiftX
				sub eax, ebx
				mov finX, eax
				cmp eax, 0
				jl elseskip
				cmp eax, 639
				jg elseskip

				
;;            (ycenter+dstY­shiftY) >= 0 && (ycenter+dstY­shiftY) < 479 && 
				mov eax, ycenter
				add eax, dstY
				mov ebx, shiftY
				sub eax,ebx
				mov finY, eax
				cmp eax, 0
				jl elseskip
				cmp eax, 479
				jg elseskip
				
;;            bitmap pixel (srcX,srcY) is not transparent) then
				
				mov ecx, (EECS205BITMAP PTR [esi]).lpBytes
				mov eax, (EECS205BITMAP PTR [esi]).dwWidth
				imul srcY
					
				add eax, srcX
				add eax, ecx
				mov bl, BYTE PTR [eax]
				mov cl,(EECS205BITMAP  PTR [esi]).bTransparent
				cmp cl, bl
				je elseskip
			;;          Copy color value from bitmap (srcX, srcY) to screen (xcenter+dstX­shiftX, ycenter+dstY­shiftX) 

				then:
					
					mov ecx, lpDisplayBits  ;;eax<- lpDisplayBits
					mov eax, dwPitch
					imul finY
					add eax, finX
					add eax, ecx
					mov BYTE PTR [eax], bl
					
		
		
		
		elseskip:
		inc dstY
		condition2: 
		mov ebx, dstHeight
		cmp dstY, ebx
		jl body2 
	inc dstX
    condition1:
	mov ebx, dstWidth
	cmp dstX, ebx
	jl body1 


ret

RotateBlit ENDP
END
