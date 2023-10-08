real*8 Function ran()
implicit none
 
 real*8 :: dmu64
 integer(8) :: ran64,mu164,add64
 
 common/bran64/dmu64,ran64,mu164,add64
 
 ran64 = ran64 * mu164 + add64
 ran = 0.5d0 + dmu64*dble(ran64)
 
 end function ran
 
 
 subroutine initran(w)
 implicit none
 
 integer(8) ::  irmax
 integer(8) :: w
 
 real*8 :: dmu64
 integer(8) :: ran64,mu164,add64
 
 common/bran64/dmu64,ran64,mu164,add64
 
 irmax = 2_8**31
 ! 2 ** 31
 irmax = 2*(irmax**2 - 1) + 1
 mu164 = 2862933555777941757_8
 add64 = 1013904243
 dmu64 = 0.5d0/dble(irmax)
 
 open (10,file = 'seed.in', status = 'old')
 read (10, *) ran64
 close (10)
 
 
 if (w .ne. 0) then
    open (10,file = 'seed.in', status = 'unknown')
    write (10,*) abs((ran64*mu164)/5 + 5265361)
    close (10)
 endif
 
end subroutine
 
 
 program textran
 implicit none
    integer(8) :: w
    w = 1.d0
    call initran(w)
 end program