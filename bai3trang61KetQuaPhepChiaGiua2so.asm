include irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
	sobichia dword 100
	sochia dword 15
	thuong dword ?
.code
main proc
	mov eax, sobichia
	mov ebx, sochia
	xor ecx, ecx ;
whilel:
	cmp eax, ebx
	jp endw
	inc ecx
	sub eax, ebx
	jmp whilel
endw:
	mov thuong, ecx
	mov eax, ecx
	call writedec
	call crlf
	invoke ExitProcess,0
main endp
end main