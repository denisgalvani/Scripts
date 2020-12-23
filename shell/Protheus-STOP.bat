@ECHO OFF
SETLOCAL

@REM =============== Vari veis com nome e IDs de Servi‡os do Windows ==============
@REM Nomes podem ter espa‡os e caracteres especiais.
@REM Para escapagem manter todo comando SET de atribui‡?o entre aspas 
SET "SVC_BD_NAME=SQL Server (MSSQLSERVER)"
SET "SVC_BD_S_ID=MSSQLSERVER"
SET "SVC_LS_NAME=TOTVS | License Server Virtual"
SET "SVC_LS_S_ID=licenseVirtual"
SET "SVC_TP_NAME=TOTVS | DBAccess"
SET "SVC_TP_S_ID=DBACCESS"
SET "SVC_AP_NAME=TOTVS | Protheus 12.1.23"
SET "SVC_AP_S_ID=PROTHEUS12123"

SET "HEADER_LINE==============================================================================="
SET "HEADER_TEXT=\\                        TOTVS PROTHEUS - SERVI€OS                         \\"
SET "SEPARATOR_D=.............................................................................."
SET "SEPARATOR_U=______________________________________________________________________________"

CLS
ECHO %HEADER_LINE%
ECHO %HEADER_TEXT%
ECHO %HEADER_LINE%
ECHO.
ECHO !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
ECHO !!                                                                          !!
ECHO !! ATEN€?O! Executar script como Administrador                              !!
ECHO !!                                                                          !!
ECHO !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
ECHO.
ECHO ------------------------------------------------------------------------------
ECHO ==^> PARANDO SERVI€OS DO AMBIENTE...                                          =
ECHO ------------------------------------------------------------------------------
ECHO.
ECHO %SEPARATOR_D%
ECHO # 04. Servi‡o "%SVC_AP_NAME%"
ECHO       > Service Name: %SVC_AP_S_ID%
ECHO %SEPARATOR_D%
sc stop "%SVC_AP_S_ID%"
ECHO %SEPARATOR_U%
ECHO.
ECHO %SEPARATOR_D%
ECHO # 03. Servi‡o "%SVC_TP_NAME%"
ECHO       > Service Name: %SVC_TP_S_ID%
ECHO %SEPARATOR_D%
sc stop "%SVC_TP_S_ID%"
ECHO %SEPARATOR_U%
ECHO.
ECHO %SEPARATOR_D%
ECHO # 02. Servi‡o "%SVC_LS_NAME%"
ECHO       > Service Name: "%SVC_LS_S_ID%"
ECHO %SEPARATOR_D%
sc stop "%SVC_LS_S_ID%"
ECHO %SEPARATOR_U%
ECHO.
ECHO %SEPARATOR_D%
ECHO # 01. Servi‡o "%SVC_BD_NAME%"
ECHO       > Service Name: %SVC_BD_S_ID%
ECHO %SEPARATOR_D%
sc stop "%SVC_BD_S_ID%"
ECHO %SEPARATOR_U%
ECHO.

PAUSE

CLS
ECHO %HEADER_LINE%
ECHO %HEADER_TEXT%
ECHO %HEADER_LINE%
ECHO.
ECHO ------------------------------------------------------------------------------
ECHO ==^> SITUA€?O DOS SERVI€OS NO AMBIENTE...                                     =
ECHO ------------------------------------------------------------------------------
ECHO.
ECHO "%SVC_BD_NAME%"
ECHO %SEPARATOR_D%
sc queryex "%SVC_BD_S_ID%" | findstr "NOME_DO_SERV ESTADO PID"
@REM ECHO %SEPARATOR_D%
@REM sc qc "%SVC_BD_S_ID%" | findstr "CONTROLE_DE_ERRO NOME_DO_CAMINHO NOME_DO_IN"
ECHO %SEPARATOR_U%
ECHO.
ECHO "%SVC_LS_NAME%"
ECHO %SEPARATOR_D%
sc queryex "%SVC_LS_S_ID%" | findstr "NOME_DO_SERV ESTADO PID"
@REM ECHO %SEPARATOR_D%
@REM sc qc "%SVC_LS_S_ID%" | findstr "CONTROLE_DE_ERRO NOME_DO_CAMINHO NOME_DO_IN"
ECHO %SEPARATOR_U%
ECHO.
ECHO "%SVC_TP_NAME%"
ECHO %SEPARATOR_D%
sc queryex "%SVC_TP_S_ID%" | findstr "NOME_DO_SERV ESTADO PID"
@REM ECHO %SEPARATOR_D%
@REM sc qc "%SVC_TP_S_ID%" | findstr "CONTROLE_DE_ERRO NOME_DO_CAMINHO NOME_DO_IN"
ECHO %SEPARATOR_U%
ECHO.
ECHO "%SVC_AP_NAME%"
ECHO %SEPARATOR_D%
sc queryex "%SVC_AP_S_ID%" | findstr "NOME_DO_SERV ESTADO PID"
@REM ECHO %SEPARATOR_D%
@REM sc qc "%SVC_AP_S_ID%" | findstr "CONTROLE_DE_ERRO NOME_DO_CAMINHO NOME_DO_IN"
ECHO %SEPARATOR_U%
ECHO.

ENDLOCAL
PAUSE