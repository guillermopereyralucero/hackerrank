#man uniq

<<COMMAND
UNIQ(1) User Commands UNIQ(1) 
NAME uniq - report or omit repeated lines 
SYNOPSIS uniq [OPTION]... [INPUT [OUTPUT]] 
DESCRIPTION Filter adjacent matching lines from INPUT (or standard input), writing to OUTPUT (or standard output). 
With no options, matching lines are merged to the first occurrence. 
Mandatory arguments to long options are mandatory for short options too. 
-c, --count prefix lines by the number of occurrences 
-d, --repeated only print duplicate lines, one for each group -D print all duplicate lines --all-repeated[=METHOD] like -D, but allow separating groups with an empty line; METHOD={none(default),prepend,separate} 
-f, --skip-fields=N avoid comparing the first N fields --group[=METHOD] show all items, separating groups with an empty line; METHOD={separate(default),prepend,append,both} 
-i, --ignore-case ignore differences in case when comparing 
-s, --skip-chars=N avoid comparing the first N characters 
-u, --unique only print unique lines 
-z, --zero-terminated line delimiter is NUL, not newline 
-w, --check-chars=N compare no more than N characters in lines 
--help display this help and exit 
--version output version information and exit 

A field is a run of blanks (usually spaces and/or TABs), then non-blank characters. 
Fields are skipped before chars. Note: 'uniq' does not detect repeated lines unless they are adjacent. 
You may want to sort the input first, or use 'sort -u' without 'uniq'. 
Also, comparisons honor the rules specified by 'LC_COLLATE'. 
AUTHOR Written by Richard M. Stallman and David MacKenzie. 
REPORTING BUGS GNU coreutils online help: <https://www.gnu.org/software/coreutils/> 
Report uniq translation bugs to <https://translationproject.org/team/> 
COPYRIGHT Copyright © 2018 Free Software Foundation, Inc. 
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>. 
This is free software: you are free to change and redistribute it. 
There is NO WARRANTY, to the extent permitted by law. 
SEE ALSO comm(1), join(1), sort(1) 
Full documentation at: <https://www.gnu.org/software/coreutils/uniq> 
or available locally via: info '(coreutils) uniq invocation' GNU coreutils 8.30 July 2018 UNIQ(1)

COMMAND

#EJEMPLOS: 

<<COMMENT
-c, --count:
Precede cada línea de salida con un recuento de ocurrencias de esa línea.
Ejemplo:

$ cat example.txt
apple
apple
banana
banana
banana
$ uniq -c example.txt
      2 apple
      3 banana

-d, --repeated:
Muestra solo líneas duplicadas.
Ejemplo:

$ cat example.txt
apple
apple
banana
banana
banana
$ uniq -d example.txt
apple
banana

-u, --unique:
Muestra solo líneas únicas (no duplicadas).
Ejemplo:

$ cat example.txt
apple
apple
banana
banana
banana
$ uniq -u example.txt
En este caso, como todas las líneas son duplicadas, no se muestra ninguna salida.

-i, --ignore-case:
Ignora las diferencias de mayúsculas y minúsculas al comparar líneas.
Ejemplo:

$ cat example.txt
apple
Apple
banana
Banana
$ uniq -i example.txt
apple
banana

-f N, --skip-fields=N:
Omite los primeros N campos de cada línea antes de comparar.
Ejemplo:

$ cat example.txt
apple green
apple red
banana yellow
banana blue
$ uniq -f 1 example.txt
apple green
banana yellow

-s N, --skip-chars=N:
Omite los primeros N caracteres de cada línea antes de comparar.
Ejemplo:

$ cat example.txt
123apple
456apple
789banana
123banana
$ uniq -s 3 example.txt
123apple
789banana

-w N, --check-chars=N:
Compara solo los primeros N caracteres de cada línea.
Ejemplo:

$ cat example.txt
applepie
applejuice
banana
bananasmoothie
$ uniq -w 5 example.txt
applepie
banana

--help:
Muestra la ayuda del comando uniq.

--version:
Muestra la información de versión del comando uniq.

COMMENT



#Uniq 1
#URL: https://www.hackerrank.com/challenges/text-processing-in-linux-the-uniq-command-1/problem?isFullScreen=true
#In this challenge, we practice using the uniq command to eliminate consecutive repetitions of a line when a text file is piped through it.
#Given a text file, remove the consecutive repetitions of any line.

uniq

#Uniq 2
#URL: https://www.hackerrank.com/challenges/text-processing-in-linux-the-uniq-command-2/problem?isFullScreen=true
#In this challenge, we practice using the uniq command to eliminate consecutive repetitions of a line when a text file is piped through it.
#Given a text file, count the number of times each line repeats itself. 
#Only consider consecutive repetitions. Display the space separated count and line, respectively. 
#There shouldn't be any leading or trailing spaces. 
#Please note that the uniq -c command by itself will generate the output in a different format than the one expected here.

uniq -c | awk '{print $1, $2, $3}'

#Uniq 3
#URL: https://www.hackerrank.com/challenges/text-processing-in-linux-the-uniq-command-3/problem?isFullScreen=true
#Given a text file, count the number of times each line repeats itself (only consider consecutive repetions). 
#Display the count and the line, separated by a space. There shouldn't be leading or trailing spaces. 
#Please note that the uniq -c command by itself will generate the output in a different format.
#This time, compare consecutive lines in a case insensitive manner. 
#So, if a line X is followed by case variants, the output should count all of them as the same (but display only the form X in the second column).
#So, as you might observe in the case below: aa, AA and Aa are all counted as instances of 'aa'.

uniq -c -i | awk '{print $1,$2,$3}'

#Uniq 4
#URL: https://www.hackerrank.com/challenges/text-processing-in-linux-the-uniq-command-4/problem?isFullScreen=true
#Given a text file, display only those lines which are not followed or preceded by identical replications.

uniq -u




