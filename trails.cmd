@REM echo ON 
@set /A x = 1000 
@set /A y = 1 
@set y = %y% 
@echo %x% 

@set y = %y:~-1% 
@echo %y%