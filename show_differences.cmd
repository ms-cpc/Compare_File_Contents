setlocal
for /f %%i in (listtosearch.txt) do set %%i=%%i
for /f %%j in (keywords.txt) do if not defined %%j echo %%i