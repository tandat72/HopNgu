include irvine32.inc

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
	m dword 300
	n dword 90
	us dword ?


.code
main proc
	push n
	push m
	call uscln
	mov us, eax
	call writedec
	call crlf
	invoke ExitProcess, 0
main endp
uscln proc
	push ebp
	mov ebp, esp

	push ebx
	push edx

	mov eax, [ebp+8]
	cmp eax, [ebp+12]
	jle uscln_lonhon
	xchg eax, [ebp+12]
uscln_lonhon:
	mov ebx, [ebp+12]
uscln_dowhile:
	cdq 
	div ebx
	or edx, edx
	jz uscln_enddowhile
	mov eax, ebx
	mov ebx, edx
	jmp uscln_dowhile
uscln_enddowhile:
	mov eax, ebx
	pop edx
	pop ebx
	pop ebp
	ret 8
uscln endp
end main