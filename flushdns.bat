@ echo off
REM 回到当前目录兼容 以管理员身份运行
@ cd /d %~dp0
@ echo hosts开始更新
@ attrib -R C:\windows\system32\drivers\etc\hosts
REM 要写入hosts的内容
REM @ echo 127.0.0.1 baidu.com >> hosts
@ xcopy hosts C:\Windows\System32\Drivers\etc\hosts /y /e
@ attrib +R C:\windows\system32\drivers\etc\hosts
@ ipconfig /flushdns
@ echo hosts更新成功
@ echo. & pause
