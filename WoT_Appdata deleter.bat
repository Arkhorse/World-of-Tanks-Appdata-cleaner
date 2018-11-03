@Echo off
cls
Title World of Tanks APPDATA cache remover

:start
	ECHO.
		set choice=
		set /p choice=Do you want to back up your settings file? (Y/N)
		if not '%choice%'=='' set choice=%choice:~0,1%
		if '%choice%'=='Y' goto Y
		if '%choice%'=='y' goto Y
		if '%choice%'=='Yes' goto Y
		if '%choice%'=='yes' goto Y
		if '%choice%'=='N' goto N
		if '%choice%'=='n' goto N
		if '%choice%'=='No' goto N
		if '%choice%'=='no' goto N
			goto start
	:Y
		copy %APPDATA%\wargaming.net\WorldOfTanks\preferences.xml %APPDATA%\wargaming.net\
		rd %APPDATA%\wargaming.net\WorldOfTanks /s /q
		mkdir %APPDATA%\wargaming.net\WorldOfTanks
		copy %APPDATA%\wargaming.net\preferences.xml %APPDATA%\wargaming.net\WorldOfTanks\preferences.xml
	goto Exit
	:N
		rd %APPDATA%\wargaming.net\WorldOfTanks /s /q
		mkdir %APPDATA%\wargaming.net\WorldOfTanks
	goto Exit
	:Exit
		Echo Goodbye
	exit	