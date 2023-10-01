!THE GROSS FRAME OF A FORTRAN PROGRAM
program datatype
implicit none

print*, 'hello'
!!!!!!!!!!!!!!!!!




real*4::a
real*8 :: b,c

a = 53.3
b = 52.3
c = 52.3d0

print*,a,b,c
!53.2999992 52.299999237060547 52.299999999999997
!单个real有8位数，real*就有16位数?
!b,c不一样，造成b后面乱码是因为b不告诉Fortran它作为双精度浮点数

!!!!!!!!!!!!!!!!!!



complex :: a
complex*16 :: b

a = cmplx(1.d0,3.d0)
b = dcmplx(1.d0,3.d0)

print*,a,b
!   (1.00000000,3.00000000)               (1.0000000000000000,3.0000000000000000)

!!!!!!!!!!!!!!!!!!!




character(len=5) :: s
character(len=7) :: k
character(len=10) ::g

s = 'physics'
k = 'physics'
g = 'physics'

print*,s,k,g
!!physiphysicsphysics

!!!!!!!!!!!!!!!!!!!!!!!!!



integer,parameter :: k=2
real,parameter :: g=9.8
! 值得注意的是，再定义常量的时候必须得同时赋值，否则会报错




end program datatype
