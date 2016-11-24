CODE SEGMENT 
	ASSUME CS:CODE 
START: 
		JMP TO  
		DATA DB 89H,86H,0C7H,0C7H,0C0H     
TO: 	LEA SI,DATA         
		MOV BL,11101111B   
NEXT:   MOV DX,0FF20H         
		MOV AL,BL         
		OUT DX,AL         
		ROR BL,1          
		CMP AL,10111111B         
		JZ TO          
		MOV DX,0FF21H         
		MOV AL,[SI]         
		OUT DX,AL         
		INC SI          
		CALL DELAY         
		JMP NEXT   
		DELAY PROC          
		MOV CL,0FFH      
X1:		DEC CL         
		JNZ X1   
		DELAY ENDP       
		HLT       
		CODE ENDS       
			END START