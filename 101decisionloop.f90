program decisionLOOP
implicit none

integer :: a
a = 3

if (a<5) then
    a = a+2
else
    a = a-2
end if
print*,a
!5
!!!!!!!!!!!!!!!!!!!




integer :: a,i
integer :: b
integer :: c
integer :: n


a = 3
do i = 0,5,1
    a = a+1
enddo

print*,a

b = 3
do i = 1,4,2
    b = b+i
    print*,b
enddo

print*,b
!9
!4
!7
!7

!!!!!!!!!!!!!!!!


c = 4
n = 0
do while(n<=5)
c = c+n
n = n+1
print*,c,n
enddo
!           4           1
!           5           2
 !          7           3
 !         10           4
 !         14           5
 !         19           6

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




!构造实际步长循环的方法如下所示
integer :: i
real*8 :: j

do i = 0,10,1
    j=i/10.0d0
    print*,j
enddo
!   0.0000000000000000
 ! 0.10000000000000001
 ! 0.20000000000000001
  !0.29999999999999999
  !0.40000000000000002
!  0.50000000000000000
 ! 0.59999999999999998
 ! 0.69999999999999996
 ! 0.80000000000000004
 ! 0.90000000000000002
 !  1.0000000000000000
!在上面的示例中，我们使用了一个虚拟变量j用于实际步骤大小。
!它将以0.1的步骤从0到1打印J

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!









end program decision