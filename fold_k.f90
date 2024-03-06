program fold_k

    ! a programme to fold back an input k point outside FBZ to inside FBZ (1D) 
    implicit none
    
    double precision :: kpt,f_kpt,rem
     ! Prompt the user for input
    print *, 'Enter k point in crystal coordinates kx'
    
    ! Read input from the user
    read(*, *) kpt

    rem = kpt - int(kpt)
    print*,"rem",rem
    
    if(kpt .ge. 0) then
       if (rem .le. 0.5) then
           f_kpt = rem  
       else 
           f_kpt = rem - 1
       endif
    else
        if (abs(rem) .le. 0.5) then
            f_kpt = rem  
        else 
            f_kpt = rem + 1
        endif
    endif

    print*, f_kpt

    
 end program fold_k
