::Keyword Find
:: ######################################################
:: VERSION 0.1.130611
:: SCRIPT: show same
:: CREATION DATE: 2013-06-11
:: LAST MODIFIED: 2013-06-11
:: AUTHOR: Cst. Mark SOUTHBY, #53384
:: EMAIL: mark.southby@rcmp-grc.gc.ca
:: ######################################################
:: DESCRIPTION: Simple batch to automate drag and drop keyword and search text files (ie: compare credit card numbers)
:: can be run from command prompt as:
:: show_same.cmd keyword.txt list.txt >RESULTS.txt
:: ######################################################
@echo off
cls
if "%1" =="" GOTO BLANK
if "%1" =="/?" GOTO HELP 
if "%1" =="-h" GOTO HELP 
if "%1" =="--help" GOTO HELP else GOTO run

:run
findstr /g:%1 %2
goto exit

:blank
set /p key=Click and drag your keyword file to this prompt window and press enter:
set /p search=Click and drag your 'list to search' file to this prompt window and press enter:
cls
findstr /g:%key% %search%  > RESULTS.txt
echo.
echo.
type RESULTS.txt
echo.
echo.
echo Results saved to RESULTS.txt
echo To open in notepad 
pause
start notepad RESULTS.txt
goto exit


:HELP
echo.
echo Run:
echo show_same.cmd (keyword_file.txt) (list_to_search.txt) 
goto exit

:exit