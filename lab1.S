.global lab1
.syntax unified

#define A #7
#define B #2
#define C #3

lab1:
	push {lr}
	
	mov r0, A		// A
	mov r1, B		// B
	mul r1, r0		// A * B
	mov r2, 10		// 10
	cmp r1, r2		// A * B ||| 10
	
ITE	GE
	orrGE r1, r0, B	// A | B
	andLT r1, r0, B	// A & B
	
	mov r2, C		// C
	mul r1, r2		// (A [] B) * C
	
	pop {pc}



