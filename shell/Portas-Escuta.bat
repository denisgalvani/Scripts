@ECHO OFF
SETLOCAL

@REM ================= Lista portas TCP na escuta no dispositivo ==================
@REM Indica que execut veis de Servi‡os abriram porta para comunica‡?o de rede

SET "HEADER_LINE==============================================================================="
SET "HEADER_TEXT=\\            Exibe situa‡Æo de conexäes de redes TCP/IP atuais             \\"
SET "SEPARATOR_D=.............................................................................."
SET "SEPARATOR_U=______________________________________________________________________________"

CLS
ECHO %HEADER_LINE%
ECHO %HEADER_TEXT%
ECHO %HEADER_LINE%
ECHO.
ECHO !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
ECHO !!                                                                          !!
ECHO !! ATEN€ÇO! Executar script como Administrador                              !!
ECHO !!                                                                          !!
ECHO !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
ECHO.
ECHO %SEPARATOR_D%
NETSTAT -aon -p TCP 0 | FINDSTR "PID LISTEN"
ECHO %SEPARATOR_D%
ECHO.

PAUSE