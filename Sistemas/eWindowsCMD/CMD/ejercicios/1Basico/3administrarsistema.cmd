:=============================================================
:Te da informacion del sistema y te abre una ventana
:para administrar el sistema
:=============================================================

@echo off
cls
systeminfo
SystemPropertiesAdvanced


echo.
echo "Proceso terminado... Pulsa una tecla"
pause>null

echo SystemPropertiesComputerName
echo SystemPropertiesDataExecutionPrevention
echo SystemPropertiesHardware
echo SystemPropertiesPerformance
echo SystemPropertiesProtection
echo SystemPropertiesRemote