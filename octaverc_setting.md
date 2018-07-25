untuk autoload package octave:

	pkg load general
	pkg load control
	pkg load signal
	pkg load struct
	pkg load parallel
	pkg load gsl

untuk customizing prompt:

	PS1(">> ")

untuk ganti editor di octave dari emacs ke sublime:

	EDITOR("subl")

untuk menampilkan `printf` atau `disp` di dalam `loop` tanpa menunggu `script` atau `loop` selesai

`page_screen_output(0)
`page_output_immediately(1)