azcopy copy "https://pleneeprog.file.core.windows.net/plenee/*?sv=2019-12-12&ss=f&srt=sco&sp=rl&se=2333-10-26T09:56:24Z&st=2020-10-26T01:56:24Z&spr=https,http&sig=i6d7j%%2BlejeONKZ%%2Fmx0ddC7S1jMB4gWrrGMpA8s300i4%%3D" "C:/" --recursive --overwrite ifSourceNewer
echo off > nul
echo[
echo[
echo[
echo[
echo Finished copying files.
echo Press YES on the next screen to create Desktop Shortcut
echo[
echo[
net sess>NUL 2>&1||(powershell saps '%0'-Verb RunAs&exit)
copy /Y "c:\Plenee\plenee.lnk" %public%\Desktop
echo[
echo[
echo[
echo Installation complete - press any key to exit
pause > nul 