! Normalization of a vector
! v' = \frac{v}{norm v}
subroutine Normalization(v,n)
implicit none

integer :: n,i
!real*8 :: v(0:n-1),c --------example1
complex*16 :: v(0:n-1),c

c = 0.0d0

do i = 0,n-1
!    c = c+ v(i)*v(i)
    c = c+ dconjg(v(i))*v(i)
enddo
v = v/dsqrt(abs(c))

end subroutine

!！！！！！！！！！！！！！！！！！！！！！！！！example1:real
!program example1
!implicit none
!
!real*8 :: v(0:3)
!
!v = (/1.0, 2.0, 3.0, 4.0/)
!
!call normalization(v,4)
!print*, v
!
!end program


!！！！！！！！！！！！！！！！！！！！！！！！！example2:complex
program example2
implicit none

complex*16 :: v(0:2)

v(0) = dcmplx(1,0)
v(1) = dcmplx(1,-1)
v(2) = dcmplx(2,3)

call normalization(v,3)
print*, v

end program