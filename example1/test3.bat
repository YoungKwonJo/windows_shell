
set CopyHour=10
echo %CopyHour%

:print_primes_loop
dir

for /f %%a in ('wmic os get LocalDateTime ^| findstr ^[0-9]') do (set ts=%%a)
ECHO %ts:~0,8%-%ts:~8,6%

set CurrentHour=%ts:~8,2%

echo %CurrentHour%


if %CopyHour%==%CurrentHour% (
  echo "The time is the time for copy"
  move C:\Users\youngkwonjo\Documents\test\*.* C:\Users\youngkwonjo\Documents\test2\
  dir C:\Users\youngkwonjo\Documents\test\
)

timeout 300

goto :print_primes_loop
