@echo off
REM Este es un programa para copiar los archivos de sonido
REM para el escenario "The first Carlist War (1833-1839)"
REM de Civilization II (Fantastic Worlds Edition). 
REM Creado por Javier Arriaga, 2-II-2001.
if exist carlismo.scn goto SI
echo ERROR: I can't find file "carlismo.scn". Make sure
echo	    you are running from the correct directory.
goto END	
:SI
if exist ..\civ2.exe set fuente=..\sound
if exist ..\..\civ2.exe set fuente=..\..\sound
if exist ..\..\..\civ2.exe set fuente=..\..\..\sound
if exist ..\..\..\..\civ2.exe set fuente=..\..\..\..\sound
if %fuente% == "" goto ERROR
md sound
copy %fuente%\infantry.wav sound
copy %fuente%\swrdhors.wav sound
cd sound
rename infantry.wav extra1.wav
rename swrdhors.wav extra5.wav
copy extra1.wav extra2.wav
copy extra1.wav extra3.wav
copy extra1.wav extra4.wav
copy extra1.wav extra6.wav
copy extra1.wav extra8.wav
copy extra1.wav custom1.wav
copy extra1.wav custom2.wav
copy extra1.wav custom3.wav
cd..
cls
echo Sound files installed. Pleased verify a "sound" sub-directory
echo has been created in your "carlismo" directory.
goto END
:ERROR
echo error: I wasn't able to find the civ2 game directory, try
echo        installing the scenario on civ2\scenario\carlismo.
:END
rem End of program