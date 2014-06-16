OBJS = suspect2.o twoloophiggs.o bsg.o sdecay.o

FC=gfortran
FFLAGS=-Wall -Wno-unused -Wno-unused-dummy-argument -Wcharacter-truncation -Wunderflow -Wconversion

.f.o:
	$(FC) -c $(FFLAGS) -finit-local-zero $*.f


sdecay: $(OBJS)
	$(FC) $(OBJS) -o run

.PHONY: clean
clean:
	@rm -f $(OBJS) run
