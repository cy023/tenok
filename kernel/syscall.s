.syntax unified

.macro syscall syscall_num
	push {r7}             //preserve old r7 for overwriting
	mov  r7, \syscall_num //write syscall number to r7 as new value
	svc  0                //trigger svc interrupt handler
	nop
	pop  {r7}             //resume old r7 value
	bx lr                 //return
.endm

.type   sched_yield, %function
.global sched_yield
sched_yield:
	syscall #1

.type   set_irq, %function
.global set_irq
set_irq:
	syscall #2

.type   set_program_name, %function
.global set_program_name
set_program_name:
	syscall #3

.type   fork, %function
.global fork
fork:
	syscall #4

.type   sleep, %function
.global sleep
sleep:
	syscall #5

.type   mount, %function
.global mount
mount:
	syscall #6

.type   open, %function
.global open
open:
	syscall #7

.type   read, %function
.global read
read:
	syscall #8

.type   write, %function
.global write
write:
	syscall #9

.type   lseek, %function
.global lseek
lseek:
	syscall #10

.type   fstat, %function
.global fstat
fstat:
	syscall #11

.type   opendir, %function
.global opendir
opendir:
	syscall #12

.type   readdir, %function
.global readdir
readdir:
	syscall #13

.type   getpriority, %function
.global getpriority
getpriority:
	syscall #14

.type   setpriority, %function
.global setpriority
setpriority:
	syscall #15

.type   getpid, %function
.global getpid
getpid:
	syscall #16

.type   mknod, %function
.global mknod
mknod:
	syscall #17
