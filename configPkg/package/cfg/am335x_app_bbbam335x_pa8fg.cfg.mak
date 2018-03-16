# invoke SourceDir generated makefile for am335x_app_bbbam335x.pa8fg
am335x_app_bbbam335x.pa8fg: .libraries,am335x_app_bbbam335x.pa8fg
.libraries,am335x_app_bbbam335x.pa8fg: package/cfg/am335x_app_bbbam335x_pa8fg.xdl
	$(MAKE) -f /home/robertcabral/UFC/Semestre_7/RTOS/GPIO_RTOS/conf/src/makefile.libs

clean::
	$(MAKE) -f /home/robertcabral/UFC/Semestre_7/RTOS/GPIO_RTOS/conf/src/makefile.libs clean

