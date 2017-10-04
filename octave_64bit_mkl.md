	
	git clone https://github.com/siko1056/GNU-Octave-enable-64.git
	cd GNU-Octave-enable-64

pastikan versi gcc, g++ dan gfortran sama. jika tidak sama menyebabkan compile failed
	
	gcc --version
	g++ --version
	gfortran --version

install dgn versi yg sama
	
	sudo apt-get install gcc
	sudo apt-get install g++
	sudo apt-get install gfortran

symbolic link. pada kasus ini, gfortran saya tidak sama versinya dgn gcc dan g++
	
	sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-4.8 50

untuk install openblas library
	
	make -j2 openblas


untuk install suitesparce library untuk pengguna nVidia. skip jika tidak pakai nVidia. saya pakai radeon, coba install library ini, hasilnya error.
	
	make -j2 suitesparse

untuk install qrupdate library
	
	make -j2 qrupdate

untuk install arpack library
	
	make -j2 arpack

untuk install octave
	
	make -j2 octave

Hasil benchmark dengan linpack:


Download intel math kernel library (intel mkl)
pilih student atau educator untuk free
	
	https://software.intel.com/en-us/parallel-studio-xe/choose-download

