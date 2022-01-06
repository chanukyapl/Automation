@SETlocal
@SET name="hello dear"
@REM @echo ON
@ECHO %name%
@REM SET /P hello= CHOICE 
@REM @for %%x in (%*) do @echo %%x
@SET /P chanu= PROMPT 
@echo %chanu%
@REM @:my 
@for %%i in (a b c) do @call :for_body %%i ; @ECHO "HEllo"
@exit /b
@:for_body
@echo 1 %1
@EXIT /b
@REM goto :cont
@echo 2 %1

@  :cont
@exit /b
@
@EXIT /b

@REM git push https://chanukyapl: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@chanukyapl/%repo%.git