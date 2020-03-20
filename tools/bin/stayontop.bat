@ECHO OFF
if [%1]==[] (
	echo usage: stayontop [Window name] [1|0]
	goto:eof
)
if [%2]==[] (
	echo Digite 0 ou 1 para definir stayontop.
	set /p bool=
) else (
	set bool=%2
)
nircmd win settopmost ititle %1 %bool%