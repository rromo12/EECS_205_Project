; #########################################################################
;
;   stars.asm - Assembly file for EECS205 Assignment 1
;	Draws stars using DrawStarReg, mov, add and sub operations 
;
; #########################################################################

      .586
      .MODEL FLAT,STDCALL
      .STACK 4096
      option casemap :none  ; case sensitive

    include stars.inc

.CODE

; Routine which uses DrawStarReg to create all the stars
DrawAllStars PROC 

    ;; Place your code here
	
	;Draw First Diagonal
	mov esi, 0
	mov edi, 50
	call DrawStarReg

	add esi, 15
	add edi, 10	
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

   	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg


	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

   	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

		add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

   	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

		add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

   	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

	add esi, 15
	add edi, 10 
	call DrawStarReg

;Draw Second Diagonal
	mov esi, 0
	mov edi, 480
	call DrawStarReg
	
	add esi, 15
	sub edi, 10 
	call DrawStarReg
	
	add esi, 15
	sub edi, 10 
	call DrawStarReg
	
	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	
	add esi, 15 
	sub edi, 10 
	call DrawStarReg

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	

	add esi, 15 
	sub edi, 10 
	call DrawStarReg
	
; Center Dots	
	mov esi, 323
	mov edi, 265
	call DrawStarReg
	
	mov esi, 322
	mov edi, 265
	call DrawStarReg
; Vertical line 1
	mov esi, 322
	mov edi, 0
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
		
; Vertical Line 2 
	mov esi, 323
	mov edi, 0
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	add edi, 10
	call DrawStarReg
	
; Horizontal Line
	mov esi,0
	mov edi, 265
	call DrawStarReg
	
	add esi, 15
	call DrawStarReg
	
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg
	add esi, 15
	call DrawStarReg

ret             ;; Don't delete this line
    
DrawAllStars ENDP

END
