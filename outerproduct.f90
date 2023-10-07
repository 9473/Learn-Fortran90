!outer product
!A_ij = <i|A|j> = v_i w_j^*


!subroutine outerproduct(v,w,n1,n2,A)
!implicit none
!
!integer :: n1,n2,i,j
!real*8 :: v(0:n1-1),w(0:n2-1),A(0:n1-1,0:n2-1)
!
!A = 0.0d0
!do i = 0,n1-1
!    do j = 0,n2-1
!        A(i,j) = v(i)*w(j)
!    enddo
!enddo
!end subroutine

subroutine outerproduct(v,w,n1,n2,A)
implicit none

integer :: n1,n2,i,j
complex*16 :: v(0:n1-1),w(0:n2-1),A(0:n1-1,0:n2-1)

A = 0.0d0
do i = 0,n1-1
    do j = 0,n2-1
        A(i,j) = v(i)*dconjg(w(j))
    enddo
enddo
end subroutine


!------example1:real
!program example1
!implicit none
!
!real*8 :: v(0:1),w(0:2),A(0:1,0:2)
!
!v = (/1.0, 2.0/)
!w = (/2.0, 3.0, 1.0/)
!
!call outerproduct(v,w,2,3,A)
!print*, A
!
!end program



!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

program example1
implicit none

complex*16 :: v(0:1),w(0:2),A(0:1,0:1)
integer :: i,j

v(0) = dcmplx(1,0)
v(1) = dcmplx(1,-1)

w(0) = dcmplx(2,0)
w(1) = dcmplx(3,-1)

call outerproduct(v,w,2,2,A)
!print*, A

do i = 0,1
    do j = 0,1
        write(111,*) A(i,j)
    enddo
enddo


end program