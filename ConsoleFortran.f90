!  ConsoleFortran.f90 
!
!  FUNCTIONS:
!  ConsoleFortran - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: ConsoleFortran
!
!  PURPOSE:  Testing rand with gfortran.
!
!****************************************************************************

    program ConsoleFortran
      implicit none

      integer(8) npts
      parameter (npts = 10d5)

      integer(8) i

      real(8) f,sum
      real(8) xmin,xmax,x

      xmin = 0.0d0
      xmax = 1.0d0

      do i=1,npts
         x = (xmax-xmin)*rand(0) + xmin
         sum = sum + 4.0d0/(1.0d0 + x**2)
      enddo
      f = sum/npts
      
      write(*,*)'PI calculated with ',npts,' points = ',f
      call ZBQLUAB(-10.0,10.0)

      stop
      end

