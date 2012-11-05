set demoDir=c:\tmp\demo
set dbURL=jdbc:mysql://rtemplet-64x4:5029/cdr_dwh
set dbUser=druser
set dbPassword=drpassword
set DR=C:\devtools\datarush-6.0.0-50\bin\dr.bat
set MYSQL=C:\Progra~1\Infobright\bin\mysql.exe --defaults-file=C:\Progra~1\Infobright\my-ib.ini -uroot cdr_dwh 

call %MYSQL%< c:\tmp\demo\tableCreate.sql

call %DR% --override reader.source=%demoDir%\data\result1.txt.gz --override database.url=%dbURL% ^
--override database.user=%dbUser% --override database.password=%dbPassword% --override writer.target=%demoDir%\results.txt --runjson %demoDir%\CDR_trickle_load.dr
call %MYSQL%< c:\tmp\demo\tablePopulate.sql
timeout 10 /NOBREAK

call %DR% --override reader.source=%demoDir%\data\result2.txt.gz --override database.url=%dbURL% ^
--override database.user=%dbUser% --override database.password=%dbPassword% --override writer.target=%demoDir%\results.txt --runjson %demoDir%\CDR_trickle_load.dr
call %MYSQL%< c:\tmp\demo\tablePopulate.sql
timeout 10 /NOBREAK

call %DR% --override reader.source=%demoDir%\data\result3.txt.gz --override database.url=%dbURL% ^
--override database.user=%dbUser% --override database.password=%dbPassword% --override writer.target=%demoDir%\results.txt --runjson %demoDir%\CDR_trickle_load.dr
call %MYSQL%< c:\tmp\demo\tablePopulate.sql
timeout 10 /NOBREAK

call %DR% --override reader.source=%demoDir%\data\result4.txt.gz --override database.url=%dbURL% ^
--override database.user=%dbUser% --override database.password=%dbPassword% --override writer.target=%demoDir%\results.txt --runjson %demoDir%\CDR_trickle_load.dr
call %MYSQL%< c:\tmp\demo\tablePopulate.sql
timeout 10 /NOBREAK

call %DR% --override reader.source=%demoDir%\data\result5.txt.gz --override database.url=%dbURL% ^
--override database.user=%dbUser% --override database.password=%dbPassword% --override writer.target=%demoDir%\results.txt --runjson %demoDir%\CDR_trickle_load.dr
call %MYSQL%< c:\tmp\demo\tablePopulate.sql
timeout 10 /NOBREAK

call %DR% --override reader.source=%demoDir%\data\result6.txt.gz --override database.url=%dbURL% ^
--override database.user=%dbUser% --override database.password=%dbPassword% --override writer.target=%demoDir%\results.txt --runjson %demoDir%\CDR_trickle_load.dr
call %MYSQL%< c:\tmp\demo\tablePopulate.sql
timeout 10 /NOBREAK

call %DR% --override reader.source=%demoDir%\data\result7.txt.gz --override database.url=%dbURL% ^
--override database.user=%dbUser% --override database.password=%dbPassword% --override writer.target=%demoDir%\results.txt --runjson %demoDir%\CDR_trickle_load.dr
call %MYSQL%< c:\tmp\demo\tablePopulate.sql
timeout 10 /NOBREAK

call %DR% --override reader.source=%demoDir%\data\result8.txt.gz --override database.url=%dbURL% ^
--override database.user=%dbUser% --override database.password=%dbPassword% --override writer.target=%demoDir%\results.txt --runjson %demoDir%\CDR_trickle_load.dr
call %MYSQL%< c:\tmp\demo\tablePopulate.sql
timeout 10 /NOBREAK

call %DR% --override reader.source=%demoDir%\data\result9.txt.gz --override database.url=%dbURL% ^
--override database.user=%dbUser% --override database.password=%dbPassword% --override writer.target=%demoDir%\results.txt --runjson %demoDir%\CDR_trickle_load.dr
call %MYSQL%< c:\tmp\demo\tablePopulate.sql
timeout 10 /NOBREAK

call %DR% --override reader.source=%demoDir%\data\result10.txt.gz --override database.url=%dbURL% ^
--override database.user=%dbUser% --override database.password=%dbPassword% --override writer.target=%demoDir%\results.txt --runjson %demoDir%\CDR_trickle_load.dr
call %MYSQL%< c:\tmp\demo\tablePopulate.sql