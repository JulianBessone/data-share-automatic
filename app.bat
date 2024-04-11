@echo off
title Copia de Seguridad

color a
echo.
echo.
echo.
echo.      ******                                                    
echo.      /*////**                                                   
echo.      /*   /**   *****   ******  ******  ******  *******   ***** 
echo.      /******   **///** **////  **////  **////**//**///** **//**
echo.      /*//// **/*******//***** //***** /**   /** /**  /**/*******
echo.      /*    /**/**////  /////** /////**/**   /** /**  /**/**//// 
echo.      /******* //****** ******  ****** //******  ***  /**//******
echo.      ///////   ////// //////  //////   //////  ///   //  ////// 
echo.
echo.                      Technologhy Innovations ©
echo.                          Make with 🧠 - 2024
echo.
echo.
echo.

REM Lee la ruta de origen desde config.txt
for /f "tokens=1,* delims==" %%a in (config.txt) do (
    if "%%a"=="RUTA_ORIGEN" set RUTA_ORIGEN=%%b
    if "%%a"=="RUTA_DESTINO" set RUTA_DESTINO=%%b
)

REM Verifica si la ruta de origen está definida
if "%RUTA_ORIGEN%"=="" (
    echo Error: No se encontró la ruta de origen en config.txt
    pause
    exit /b
)

REM Verifica si la ruta de destino está definida
if "%RUTA_DESTINO%"=="" (
    echo Error: No se encontró la ruta de destino en config.txt
    pause
    exit /b
)

REM Verifica si la ruta de origen existe
if not exist "%RUTA_ORIGEN%\" (
    echo Error: La ruta de origen no existe
    pause
    exit /b
)

REM Verifica si la ruta de destino existe
if not exist "%RUTA_DESTINO%\" (
    echo Error: La ruta de destino no existe
    pause
    exit /b
)

REM Copia los archivos desde la ruta de origen a la ruta de destino
xcopy "%RUTA_ORIGEN%\*" "%RUTA_DESTINO%\" /E /Y

echo Copia de seguridad completada.
