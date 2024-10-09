REM ==============================================================================
REM 							COMENTARIOS
REM Evita que los comandos se muestren en la consola mientras se ejecuta el script
REM Obtener la fecha actual en formato AAAAMMDD
REM sqlcmd -S <servidor> -i <ruta_del_sql> -U <usuario> -P "<contraseña>"
REM sqlcmd -S localhost -i C:\DATA\scripts\monthly\monthly.sql -E 
REM -E indica que se utilizará la autenticación de Windows
REM ==============================================================================
@echo off
set fecha=%date:~6,4%%date:~3,2%%date:~0,2%
 
sqlcmd -S localhost -i C:\DATA\scripts\monthly\monthly.sql -U sa -P "contraseña"



