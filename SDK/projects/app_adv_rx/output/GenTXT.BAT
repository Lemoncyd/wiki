@echo on
.\output\HEXBIN.exe .\output\bk_fw.hex
.\output\bin_to_crcbin.exe .\output\bk_fw.bin 16384
rem del .\output\*.obj
rem del .\*.lst
@echo off
