MF=     Makefile

FC=     mpif90
FFLAGS= -g

LFLAGS= $(FFLAGS)

EXE=    test

SRC= \
        randgen.f    \
        ConsoleFortran.f90  \

#
# No need to edit below this line
#

.SUFFIXES:
.SUFFIXES: .f .o
.SUFFIXES: .f90 .o

OBJ=    $(SRC:.f=.o)
OBJ=    $(SRC:.f90=.o)

.f.o:
	$(FC) $(FFLAGS) -c $<

.f90.o:
	$(FC) $(FFLAGS) -c $<

all:    $(EXE)

$(EXE): $(OBJ)
	$(FC) $(LFLAGS) -o $@ $(OBJ)

$(OBJ): $(MF)

tar:
	tar cvf $(EXE).tar $(MF) $(SRC)

clean:
	rm -f $(EXE) core *.o *.mod

