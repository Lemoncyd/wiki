@echo off
rem 删除lib源文件，及其工程
if exist sdk\projects\lib goto clearlib else goto skipClearLib
:clearlib
del sdk\projects\lib /s/q
rd sdk\projects\lib /s/q
:skipClearLib

if exist sdk\ble_sim_adv goto clearLibSrc else goto skipClearLibSrc
:clearLibSrc
del sdk\ble_sim_adv /s/q
rd sdk\ble_sim_adv /s/q
:skipClearLibSrc
del *.docx  /s/q
rd .git /s /q

rem 删除编译时生成的不必要文件
rem 设定删除的文件类型列表
set fileext1=*.obj
set fileext2=*.__i
rem 删除tx应用编译时生成的不必要文件
set tarPath=sdk\projects\app_adv_rx
del %tarPath%\output\%fileext1% /F/Q
del %tarPath%\output\%fileext2% /F/Q
del %tarPath%\lst /F/Q
rem 删除rx应用编译时生成的不必要文件
set tarPath=sdk\projects\app_adv_tx
del %tarPath%\output\%fileext1% /F/Q
del %tarPath%\output\%fileext2% /F/Q
del %tarPath%\lst /F/Q

rem 压缩 -ar "压缩的文件" "压缩到的文件全路径.zip"
rem path=%path%;C:\Program Files (x86)\360\360zip\
360zip -ar "%cd%\sdk" "%cd%.zip"
360zip -ar "%cd%\hw" "%cd%.zip"
360zip -ar "%cd%\app_notes" "%cd%.zip"
360zip -ar "%cd%\tools" "%cd%.zip"
360zip -ar "%cd%\BK2480_BLE_Release.pdf" "%cd%.zip"