@ECHO  __ 
@ECHO ^|  ^|
@ECHO ^|  ^|
@ECHO ^|  ^|
@ECHO ^|  ^|

@SET /P First= Is this one using for the first time : 
@REM if /i First == 
@if /i %First:~0,1%  == Y ( @ECHO yes 
@call firsttime
@ECHO git init will be called )

@GOTO :EOF

@:firsttime 
@SETLOCAL
@ECHO "called firsttime function"

@git init

@SET /P repo 


@ENDLOCAL
@EXIT /b 

@:commitToRepo
@SETLOCAL

@SET /P commitMsg= If you want to enter commit message please enter (Default: First Commit) : 
@if [%a%]==[] (@SET commitMsg= First Commit)
@git commit -m %commitMsg%

@ENDLOCAL
@EXIT /b 