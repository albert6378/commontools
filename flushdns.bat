@ echo off
REM �ص���ǰĿ¼���� �Թ���Ա�������
@ cd /d %~dp0
@ echo hosts��ʼ����
@ attrib -R C:\windows\system32\drivers\etc\hosts
REM Ҫд��hosts������
REM @ echo 127.0.0.1 baidu.com >> hosts
@ xcopy hosts C:\Windows\System32\Drivers\etc\hosts /y /e
@ attrib +R C:\windows\system32\drivers\etc\hosts
@ ipconfig /flushdns
@ echo hosts���³ɹ�
@ echo. & pause
