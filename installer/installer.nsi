Name "Tarea U07 - Buscador de texto"
OutFile "Tarea_U07_Setup.exe"
InstallDir "$DESKTOP\TareaU07"

Page directory
Page instfiles

Section "Principal" SecMain
  SetOutPath "$INSTDIR"
  File "Fuentes_Tarea_U07.jar"
  SetOutPath "$INSTDIR\lib"
  File "javafx-graphics-25-ea+10-win.jar"
  WriteRegStr HKCU "Software\TareaU07" "" "$INSTDIR"
  WriteUninstaller "$INSTDIR\Uninstall.exe"
SectionEnd

Section "Uninstall"
  Delete "$INSTDIR\Fuentes_Tarea_U07.jar"
  Delete "$INSTDIR\lib\javafx-graphics-25-ea+10-win.jar"
  Delete "$INSTDIR\Uninstall.exe"
  RMDir "$INSTDIR\lib"
  RMDir "$INSTDIR"
  DeleteRegKey /ifempty HKCU "Software\TareaU07"
SectionEnd