all:
	cd app1; make
	cd app2; make

clean:
	cd app1; make clean
	cd app2; make clean
	cd lib1; make clean

clobber:
	cd app1; make clobber
	cd app2; make clobber
	cd lib1; make clobber
