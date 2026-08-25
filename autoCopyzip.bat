@ECHO off  
  
@REM add adb.exe to PATH
ECHO initialize...

@SET PATH=%PATH%;%CD%\Adb  
@REM SET PATH  
ECHO PATH
  
@REM label of infinite loop  
:LOOP  
  
ECHO waiting for insertion cellphone... 
adb wait-for-device    
@REM circulation install this catalogue's APP 
FOR %%i IN (*.zip) DO (   
    ECHO copying:%%i  
    adb push "%%i" /sdcard/install
    )  
  
ECHO copy Finish: opo nang ?!!!
PAUSE
GOTO LOOP 
@ECHO on 
