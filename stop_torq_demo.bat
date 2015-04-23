REM see README.txt
REM SET UP ENVIRONMENT VARIABLES

set KDBCODE=%cd%\code
set KDBCONFIG=%cd%\config
set KDBLOG=%cd%\logs
set KDBHTML=%cd%\html
set KDBLIB=%cd%\lib

set KDBBASEPORT=5000

set PATH=%PATH%;%KDBLIB%\w32

REM to kill it, run this:
start "kill" q torq.q -load code/processes/kill.q -proctype kill -procname killtick -.servers.CONNECTIONS rdb wdb tickerplant hdb gateway housekeeping monitor discovery sort reporter compression feed
