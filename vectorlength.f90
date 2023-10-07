!the norm of vector is the length of abstract vector
!the norm of v = \sqrt{\langle v|v \rangle} = \sqrt{\sum_i^n v_i v_i}
subroutine normvec(v,n,norm)
implicit none

integer :: n,i
!real*8 :: v(0:n-1), c, norm  ----------example1
complex*16 :: v(0:n-1), c
real*8 :: norm

c = 0.0d0
norm = 0.0d0

do i = 0,n-1
!    c = c+ v(i)*v(i) -------example1
    c = c+ conjg(v(i))*v(i)
enddo
norm = dsqrt(abs(c))

end subroutine normvec


!！！！！！！！！！！！！！！！！！！！！example1 real
!program example
!implicit none
!
!real*8 :: v(0:3),norm
!
!v = (/1.0, 2.0, 3.0, 4.0/)
!
!call normvec(v,4,norm)
!
!print*, norm
!
!
!end program



!！！！！！！！！！！！！！！！！！！！！！！example2 complex
program example2
implicit none

complex*16 :: v(0:2)
real*8 :: norm

v(0) = dcmplx(1,0)
v(2) = dcmplx(2,3)
v(1) = dcmplx(1,-1)

call normvec(v,3,norm)

print*, norm


end program