include irvine32.inc
.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
	n dword 47
	Fib dword ?
.code
main proc
	push n
	call Fibo
	mov Fib, eax
	call writedec
	call crlf
	invoke ExitProcess, 0
main endp
Fibo proc
	push ebp
	mov ebp, esp
	push ebx
	push ecx
	mov ebx, 1
	mov eax, 1
	mov ecx, n
	sub ecx, 2
Fibo_lap:
	xchg eax, ebx
	add eax, ebx
	loop Fibo_lap
	pop ecx
	pop ebx
	pop ebp
	ret 4
Fibo endp
end main