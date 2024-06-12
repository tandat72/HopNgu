include irvine32.inc
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
	tb1 byte 13, 10, "Nhap so giay: ",0
	sogiay dword ?
	gio dword ?
	phut dword ?
	giay dword ?
	tb2 byte 13, 10, "Gio : ",0
	tb3 byte 13, 10, "Phut :",0
	tb4 byte 13, 10, "Giay : ",0
.code
main proc
	mov edx, offset tb1
	call WriteString
	call ReadDec

	mov sogiay, eax 
	mov ebx, 60 
	xor edx, edx
	div ebx

	mov giay, edx 
	xor edx, edx 
	div ebx 
	mov phut, edx
	mov gio, eax

	mov edx, offset tb2
	call WriteString
	mov eax, gio
	call writedec

	mov edx, offset tb3
	call WriteString
	mov eax, phut
	call writedec

	mov edx, offset tb4
	call WriteString
	mov eax, giay
	call writedec
	call crlf
invoke ExitProcess,0
main endp
end main
