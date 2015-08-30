
echo please, see a link https://en.wikibooks.org/wiki/Windows_Batch_Scripting

:print_primes_loop
dir

set ww=abcde
echo %ww%

timeout 4

move C:\Users\youngkwonjo\Documents\test\*.* C:\Users\youngkwonjo\Documents\test2\
dir C:\Users\youngkwonjo\Documents\test\

timeout 4

move C:\Users\youngkwonjo\Documents\test2\*.* C:\Users\youngkwonjo\Documents\test\
dir C:\Users\youngkwonjo\Documents\test2\

goto :print_primes_loop
