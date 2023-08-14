@echo off
rem # Encodage pour caractères accentués en UTF-8
chcp 65001
cls

:start
rem # Entête                      
echo                         ***  Générateur de fichiers vide  ***
echo                                        V 1.0                                       
echo.
echo.
echo                              __________________________
echo                                  - Menu principal -
echo                              __________________________
echo.
echo.

rem # Choix des fonctions
:etapes
echo   Liste des fonctions :
echo.
echo  1 - Création d'un fichier avec une taille personnalisée
echo  2 - Quitter le programme
echo.
SET /p FONCTIONS="Merci de choisir une fonction : "
IF %FONCTIONS% == 1 (goto :creation)
IF %FONCTIONS% == 2 (goto :fin)
IF %FONCTIONS% GEQ 3 exit
IF %FONCTIONS% LEQ 0 exit

rem # Création du fichier
:creation
cls
echo.
echo             ________________________________________________________________
echo                  - Création d'un fichier avec une taille personalisée -     
echo             ________________________________________________________________
echo.
echo.
echo  Rappel : 1 Mo = 1 048 576 octets et 1 Go = 1 073 741 824 octets.
echo.
echo.
SET /p TAILLE=Merci de renseigner une valeur en octects : 
SET /p NOM=Merci de renseigner un nom pour votre fichier : 
echo.
echo Votre fichier "%NOM%" va être créé sur le bureau Windows
echo.
fsutil file createnew %USERPROFILE%\Desktop\%NOM%.txt %TAILLE%
pause
cls
goto :start

rem # Fermeture du programme
:fin
echo.
exit