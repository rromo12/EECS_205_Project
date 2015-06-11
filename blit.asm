; #########################################################################
;
;   blit.asm - Assembly file for EECS205 Assignment 2
;
;
; #########################################################################

      .586
      .MODEL FLAT,STDCALL
      .STACK 4096
      option casemap :none  ; case sensitive

    include blit.inc		; Take a look at this file to understand how
				;      bitmaps are declared
.DATA
	;; You may declare helper variables here.
	bmpX Dword 0 
	bmpY Dword 0
	dWidth Dword ?
	dHeight Dword ? 
	screenX Dword ?
	screenY Dword ?
	centerX Dword ?
	centerY Dword ?
	srcbitmap Dword ?
	est Dword ?


.CODE

; Routine which draws a bitmap to the screen
BlitReg PROC 

    ;; Here is some C-like pseudocode. You can use this as a starting point
    ;; 	 (or start from scratch if you feel like it)
    ;; Feel free to declare variables (global) if it helps. There is a pretty
    ;;   good chance that you won't fit everything in registers
	;; EDX pointer to SrcBitmap
	mov srcbitmap, edx								
	mov centerX, esi								;;centerX <-ESi
	mov centerY, edi 								;;centerY <- EDi
	mov ebx, (EECS205BITMAP PTR [edx]).dwWidth		;;EBx<-dwWidth
	mov dWidth, ebx									;;dwidth<-dwWidth
	mov ebx, (EECS205BITMAP PTR [edx]).dwHeight		;;ebx<-dwHeight
	mov dHeight,ebx									;;dHeight<-dwHeight
    
	
	;; 	for(bmpY = 0;  bmpY < srcBitmap->dwHeight; bmpY++)
	mov bmpY, 0 

	jmp condition1 
	body1:

		;;	for(bmpX = 0;  bmpX < srcBitmap->dwWidth; bmpX++) 
		mov bmpX, 0
		jmp condition2 
		body2:

				;;		{
			    ;; 		        screenX = centerX + bmpX - srcBitmap->dwWidth/2;
				;;
								mov eax, bmpX
								mov screenX, eax								;;ScreenX<-bmpX
								mov esi, centerX								;;esi<-CenterX
								add screenX, esi								;;ScreenX<-bmpX+CenterX
								mov esi, screenX								;;ESI<-centerX+bmpX
								mov ebx, dWidth									;;ebx<-dwWidth
								shr ebx,1										;;ebx<-dwWidth/2
								sub esi, ebx 									;;esi<- centerX+bmpX-dwWidth/2
								mov screenX, esi
				
				;; 		        screenY = centerY + bmpY - srcBitmap->dwHeight/2;
								mov eax, bmpY
								mov screenY, eax								;;ScreenY<-bmpY
								mov esi, centerY								;;esi<-centerY
								add screenY, esi								;;ScreenY<-centerY+bmpY
								mov esi, screenY								;;esi<-ScreenY
								mov ebx, dHeight								;;ebx<-dwHeight
								shr ebx,1										;;ebx<-dwHeight/2
								sub  esi, ebx									;;ebx<- centerY+bmpY-dwHeight/2
								mov screenY, esi

			
				;; 			if (srcBitmap->lpBytes[bmpY*srcBitmap->dwWidth+bmpX] != srcBitmap->bTransparent
				;; 			    screenX >= 0 && screxenX <= 639 
				;; 			    screenY >= 0 && screenY <= 479)
				
								mov edx, srcbitmap										  ;;edx<- ptr to bitmap
								mov cl,(EECS205BITMAP  PTR [edx]).bTransparent            ;;cl<-btransparent
								mov esi, (EECS205BITMAP PTR [edx]).lpBytes				  ;;esi<- addr lpbytes
								mov eax, bmpY											  ;;eax<-bmpy
								mov edx, (EECS205BITMAP PTR [edx]).dwWidth
								mov ebx, dWidth											  ;;ebx<-dWidth
								mul ebx													  ;;eax<-bmpy*dwidth
								add eax,bmpX											  ;;eax<-bmpy*width+bmpX
								add esi, eax											  ;;esi<- esi +eax
								mov al, BYTE PTR[esi]									  ;;al<-lpbytes[bmpY*dwidth+bmpx]
		
		
								cmp cl, al
							    je elseskip
								cmp screenX, 0			;;screenX >= 0 
								jl elseskip
								cmp screenX, 639		;;screenX <= 639
								jg elseskip
								cmp screenY, 0			;;screenY >= 0 
								jl elseskip
								cmp screenY,479			;;screenY <= 479
								jg elseskip
							  
							then: 	
								
								;;
								;; 				lpDisplayBits[screenY*dwPitch + screenX] =
								;; 					srcBitmap->lpBytes[bmpY*srcBitmap->dwWidth+bmpX];


								mov eax, dwPitch		;; eax<-dwPitch
								mul screenY				;; eax<-dwPitch*ScreenY
								add eax, screenX		;; eax<-dwPitch*ScreenY+screenX 
								mov ebx, eax			;; ebx<-dwPitch*ScreenY+ScreenX

								
								mov eax, dWidth			;;eax<- dwidth
								mul bmpY				;;eax<- dwidth*bmpy
								add eax, bmpX			;;eax<- dwidth*bmpY+bmpX
								mov ecx, eax			;;ecx<- dwidth*bmpY+bmpX

								
								mov edx, srcbitmap		;;edx<- ptr to bitmap								
								mov eax, (EECS205BITMAP  PTR [edx]).lpBytes ;;EAX<- ADDR lpbytes
								add eax, ecx  								;;EAX<-ADDR lpbytes + dwidth*bmpY+bmpX
								mov cl, BYTE PTR [eax]						;;cl<-byte at addr lpbytes + dwidth*bmpY+bmpX
								
								
								mov eax, lpDisplayBits  ;;eax<- lpDisplayBits
								add eax, ebx			;;eax<- addr lpdisplaybits+dwPitch*ScreenY+ScreenX
								mov BYTE PTR [eax], cl	;; addr at eax <- cl
							

							elseskip:			 		
 		inc bmpX
		condition2: 
		mov ebx, dWidth
		cmp bmpX, ebx
		jl body2 
	inc bmpY
    condition1:
	mov ebx, dHeight
	cmp bmpY, ebx
	jl body1 

    ret             ;; Don't delete this line
    
BlitReg ENDP


.DATA
		
StarBitmap EECS205BITMAP <32, 36, 0ffh,, offset StarBitmap + sizeof StarBitmap>
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh
	BYTE 0feh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh
	BYTE 0feh,0feh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0fdh
	BYTE 0f9h,0f9h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0fdh
	BYTE 0f8h,0f8h,0fdh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0fdh
	BYTE 0f8h,0f8h,0f8h,0feh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0fdh
	BYTE 0f8h,0f8h,0d8h,0f9h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0f9h
	BYTE 0f8h,0f8h,0d8h,0d8h,0feh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0fdh,0f8h
	BYTE 0f8h,0f4h,0f8h,0d8h,0d9h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fah,0feh,0fdh,0f8h
	BYTE 0f8h,0f4h,0f8h,0d8h,0d8h,0fdh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0fdh,0f8h
	BYTE 0f4h,0f4h,0f4h,0f8h,0f8h,0d4h,0feh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0feh,0f9h,0d4h
	BYTE 0f8h,0f4h,0f4h,0d4h,0f8h,0f8h,0d4h,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0f9h,0fdh,0f8h,0f8h
	BYTE 0f4h,0f8h,0f4h,0f4h,0f8h,0d4h,0d4h,0f8h,0d9h,0d9h,0d9h,0f9h,0d9h,0f9h,0d9h,0fah
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0fdh,0f9h,0f8h,0f8h,0f8h,0f8h
	BYTE 0f8h,0d4h,0f8h,0f8h,0f4h,0f8h,0f8h,0d8h,0f8h,0f8h,0f8h,0f8h,0d8h,0d4h,0d5h,0feh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0feh,0f9h,0f9h,0f8h,0f8h,0fch,0fch,0f8h,0f8h
	BYTE 0f8h,0f8h,0f8h,0f8h,0f4h,0f8h,0b0h,0d8h,0d8h,0f8h,0f8h,0f4h,0f8h,0d8h,0d9h,0feh
	BYTE 0ffh,0ffh,0feh,0fdh,0f9h,0f8h,0f8h,0f8h,0f8h,0f8h,0fdh,0fdh,0f8h,0f8h,0f8h,0f8h
	BYTE 0f8h,0b0h,0d8h,0f8h,0f8h,0f8h,044h,08ch,0d4h,0d8h,0d4h,0d4h,0d4h,0d4h,0feh,0ffh
	BYTE 0feh,0feh,0d9h,0d8h,0f8h,0f8h,0fch,0fch,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0fch
	BYTE 0f8h,06ch,06ch,0fch,0f8h,0d8h,06ch,06ch,0d4h,0f8h,0d4h,0d4h,0d4h,0d5h,0ffh,0ffh
	BYTE 0ffh,0dah,0d4h,0d4h,0f8h,0f8h,0f8h,0f8h,0f4h,0f4h,0f4h,0f8h,0f8h,0f8h,0fch,0fch
	BYTE 0fdh,06ch,06ch,0fdh,0fch,0d8h,048h,068h,0f8h,0d4h,0d4h,0d4h,0d4h,0feh,0ffh,0ffh
	BYTE 0ffh,0ffh,0feh,0d8h,0d4h,0f4h,0f8h,0f4h,0f4h,0f4h,0f8h,0f8h,0f8h,0f8h,0fch,0fch
	BYTE 0fdh,048h,048h,0fdh,0fch,0fch,044h,024h,0f8h,0d4h,0d4h,0d4h,0d9h,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0feh,0f9h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0fch,0fch,0fch
	BYTE 0fdh,048h,000h,0fdh,0fch,0f8h,048h,024h,0f8h,0f4h,0d4h,0d5h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0feh,0f9h,0f8h,0f8h,0d8h,0f8h,0f8h,0f8h,0f8h,0fch,0fch,0fch
	BYTE 0fch,06ch,020h,0f8h,0fch,0fch,090h,044h,0f8h,0f4h,0d4h,0fah,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fdh,0f9h,0d8h,0d8h,0f8h,0f8h,0f8h,0fch,0fch,0fch
	BYTE 0fch,0b4h,020h,0fdh,0fch,0fch,0d8h,0d8h,0f8h,0f4h,0d5h,0feh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0f9h,0d8h,0f8h,0f8h,0f8h,0fch,0fch,0fch
	BYTE 0fch,0fch,0fch,0fch,0fch,0fch,0f8h,0d8h,0f8h,0f4h,0d5h,0feh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0f9h,0f8h,0f8h,0f8h,0fch,0fch,0fch
	BYTE 0fch,0fch,0fch,0fch,0fch,0fch,0fch,0d8h,0f8h,0d4h,0d4h,0feh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0f8h,0f8h,0f8h,0f8h,0fch,0fch
	BYTE 0fch,0fch,0fch,0fch,0fch,0f8h,0f8h,0d8h,0f8h,0d4h,0d4h,0feh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0f8h,0f8h,0f8h,0f8h,0f8h,0fch
	BYTE 0fch,0fch,0fch,0fch,0f8h,0f8h,0f8h,0d8h,0d4h,0d4h,0d4h,0feh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h
	BYTE 0f8h,0fch,0f8h,0f8h,0f8h,0f8h,0d8h,0f8h,0f4h,0d4h,0d4h,0f9h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0f8h,0f8h,0f4h,0f8h,0f8h,0f8h
	BYTE 0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0f8h,0d4h,0d4h,0d4h,0f4h,0f9h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fah,0f8h,0f4h,0f4h,0f8h,0f8h,0f8h
	BYTE 0f8h,0f8h,0f8h,0f8h,0d4h,0d4h,0d4h,0d4h,0d4h,0d4h,0d4h,0d5h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fah,0f8h,0f4h,0f4h,0f4h,0f4h,0d4h
	BYTE 0d4h,0d8h,0d4h,0f9h,0f9h,0d5h,0b0h,0d4h,0d4h,0d4h,0d4h,0d4h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0f9h,0f8h,0f4h,0f4h,0f4h,0d4h,0d4h
	BYTE 0d8h,0d4h,0feh,0ffh,0ffh,0ffh,0feh,0d5h,0d5h,0d4h,0d4h,0d5h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0f9h,0f8h,0f4h,0f4h,0f4h,0d4h,0d8h
	BYTE 0d5h,0feh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fah,0d5h,0b5h,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0f9h,0f4h,0f4h,0f4h,0d4h,0d4h,0f9h
	BYTE 0feh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0d9h,0d8h,0d4h,0d4h,0d5h,0fah,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0fah,0d4h,0d4h,0d5h,0feh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0dah,0d5h,0d4h,0feh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0f9h,0feh,0ffh,0ffh,0ffh,0ffh
	BYTE 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh
		

END
