; #########################################################################
;
;   trig.asm - Assembly file for EECS205 Assignment 3
;
;
; #########################################################################

      .586
      .MODEL FLAT,STDCALL
      .STACK 4096
      option casemap :none  ; case sensitive

    include trig.inc	

.DATA

;;  These are some useful constants (fixed point values that correspond to important angles)
PI_HALF = 102943           	;;  PI / 2
PI =  205887	                ;;  PI 
TWO_PI	= 411774                ;;  2 * PI 
PI_INC_RECIP =  5340353        	;;  128 / PI   (use this to find the table entry for a given angle
								;;              it is easier to use than divison would be)

.CODE

;; Define the functions FixedSin and FixedCos
;; Since we have thoroughly covered defining functions in class, its up to you from here on out...
;; Remember to include the 'ret' instruction or your program will hang
;; Also, don't forget to set your return values
;;    To convert a FIXED value in eax into an integer:  sar eax, 16
;;    To convert an integer value in eax into a FIXED:  shl eax, 16

	FixedSin PROC STDCALL uses ebx ecx edx edi dwAngle:FIXED 
	local negflag:dword

	mov negflag,0
	
	
	cond4:
	cmp dwAngle,0
	jg cond1
	add dwAngle, TWO_PI
	jmp cond4

	cond1:
	cmp dwAngle, TWO_PI 			;;2pi<X<inf
		jl cond2					 ;;if x<2pi move on
		mov eax, TWO_PI				 ;; else sub 2pi
		sub dwAngle, eax			 ;; and loop
		jmp cond1
	
	cond2:					;;pi<x<2pi needs work
	cmp dwAngle, PI
		jl cond3					;;if x<pi move on
		sub dwAngle, PI				;;else subtract pi 
		mov negflag, 1				;; and set neg flag

	
	cond3:					;;pi/2<x<pi
	cmp dwAngle, PI_HALF		;; if x<=pi/2 move on and get sin(x) from table
	jle calc
	mov ebx, PI					;; else subtract x from pi
	sub ebx, dwAngle			;; and set this to x
	mov dwAngle, ebx			;; x<- pi-x

	calc:					;;0<x<pi/2
	mov eax, dwAngle
	mov ebx, PI_INC_RECIP
	imul ebx
	sub edx, 1
	shl edx, 1
	mov eax, dword PTR [SINTAB + edx]
	shr eax, 16
	
	jmp negcheck

	negcheck:
	cmp negflag,1 
	jne fin
	mov ebx, 0 
	sub ebx,eax
	mov eax,ebx
	jmp fin
		
	fin:
	ret
	FixedSin ENDP


	;;Fixed Cos uses a pi/2 shift added to the angle and the Fixed Sin procedure 	
	FixedCos PROC STDCALL uses ebx dwAngle:FIXED 
	mov ebx, PI_HALF
	add dwAngle, ebx
	INVOKE FixedSin, dwAngle
	ret
	FixedCos ENDP


	
END
