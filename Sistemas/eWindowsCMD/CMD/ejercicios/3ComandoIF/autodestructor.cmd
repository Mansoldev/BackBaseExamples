,=================================================================================================================================
,presenta una cuenta atras desde 10 y al finalizar dicha cuenta autodestruirse.
,los numeros impares en pantalla negra con letra blanca
,los pares pantalla amarilla con letra negra
,en ambos casos, la pantalla de la consola sera la mínima
,=================================================================================================================================
@echo off
cls
mode con cols=15
mode con lines=8

echo 10
mode con cols=15
mode con lines=8
color 60
choice /c p /d p /t 1 >nul
cls

echo 9
mode con cols=15
mode con lines=8
color 07	
choice /c p /d p /t 1 >nul
cls

echo 8
mode con cols=15
mode con lines=8
color 60	
choice /c p /d p /t 1 >nul
cls

echo 7
mode con cols=15
mode con lines=8
color 07	
choice /c p /d p /t 1 >nul
cls

echo 6
mode con cols=15
mode con lines=8
color 60	
choice /c p /d p /t 1 >nul
cls

echo 5
mode con cols=15
mode con lines=8
color 07	
choice /c p /d p /t 1 >nul
cls

echo 4
mode con cols=15
mode con lines=8
color 60	
choice /c p /d p /t 1 >nul
cls

echo 3
mode con cols=15
mode con lines=8
color 07	
choice /c p /d p /t 1 >nul
cls

echo 2
mode con cols=15
mode con lines=8
color 60	
choice /c p /d p /t 1 >nul
cls

echo 1
mode con cols=15
mode con lines=8
color 07	
choice /c p /d p /t 1 >nul
cls


pause>nul