include irvine32.inc

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
	tb1 byte 13,10,"Nhap mot ky tu :"
	tb2 byte 13,10,"Nhap tu ke :"
	kytu byte ? 
.code
main proc
	mov edx, offset tb1
	call writestring
	call readchar
	mov kytu, al

	mov edx, offset tb1
	call writestring

	mov al, kytu
	inc al
	mov ecx, 5
lap:
	jecxz ketthuc
	call writechar
	dec ecx
	inc al
	push eax
	mov al, 10
	call writechar
	mov al, 8
	call writechar
	pop eax
	jmp lap
ketthuc:
	call crlf
	invoke ExitProcess, 0
main endp
end main