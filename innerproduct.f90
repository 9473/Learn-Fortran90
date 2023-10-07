!fortran for Quantum physics

!inner product c = \sum_i^n{v_i w_i}
subroutine innerproduct(v1,v2,n,c)
implicit none

integer :: n,i
! real*8 :: v1(0:n-1),v2(0:n-1),c -------example1
complex*16 :: v1(0:n-1),v2(0:n-1),c

c = 0.0d0


do i = 0,n-1

!    c = c+ v1(i)*v2(i)-------example1
    c = c+ dconjg(v1(i))*v2(i)
    
enddo

end subroutine innerproduct

!！！！！！！！！！！！！！！！！！！！！！！example1:real vector
!program example1
!implicit none
!
!real*8 :: v1(0:3),v2(0:3),c !v1,v2 = 1x4 column matrice
!
!v1 = (/1.0, 2.0, 3.0, 4.0/)
!v2 = (/2.0, 3.0, 1.0, -1.0/)
!
!call innerproduct(v1,v2,4,c)
!
!print*, c
!
!
!end program


program example2
implicit none

complex*16 :: v1(0:2),v2(0:2),c

v1(0) = dcmplx(1,0)
v1(1) = dcmplx(1,-1)
v1(2) = dcmplx(2,3)

v2(0) = dcmplx(2,0)
v2(1) = dcmplx(3,-1)
v2(2) = dcmplx(2,-3)

call innerproduct(v1,v2,3,c)

print*, c

end program