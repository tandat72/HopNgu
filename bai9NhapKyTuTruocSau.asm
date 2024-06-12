include irvine32.inc

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
	tb1 byte 13,10,"Nhap mot ky tu :",0
	tb2 byte 13,10,"Nam ky tu truoc :",0
	tb3 byte 13,10,"Nam ky tu sau :",0
	kytu byte ? 
.code
main proc
	mov edx, offset tb1
	call writestring
	call readchar
	mov kytu, al

	mov edx, offset tb2
	call writestring

	mov al, kytu
	sub al, 5
	mov ecx, 5
lap1:
	jecxz ketthuc1
	call writechar
	dec ecx
	inc al
	jmp lap1
ketthuc1:

mov edx, offset tb3
	call writestring
	mov al, kytu
	mov ecx, 5
lap:
	jecxz ketthuc
	call writechar
	dec ecx
	inc al
	jmp lap
ketthuc:
	call crlf
	invoke ExitProcess, 0
main endp
end main
