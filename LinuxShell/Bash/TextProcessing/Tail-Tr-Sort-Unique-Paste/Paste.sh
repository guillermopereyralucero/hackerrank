#man paste 

<<COMMENT 
PASTE(1)                                              User Commands                                             PASTE(1)
NAME
       paste - merge lines of files
SYNOPSIS
       paste [OPTION]... [FILE]...
DESCRIPTION
       Write  lines  consisting  of  the sequentially corresponding lines from each FILE, separated by TABs, to standard
       output.
       With no FILE, or when FILE is -, read standard input.
       Mandatory arguments to long options are mandatory for short options too.
       -d, --delimiters=LIST
              reuse characters from LIST instead of TABs
       -s, --serial
              paste one file at a time instead of in parallel
       -z, --zero-terminated
              line delimiter is NUL, not newline
       --help 
              display this help and exit
       --version
              output version information and exit
AUTHOR
       Written by David M. Ihnat and David MacKenzie.
REPORTING BUGS
       GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
       Report paste translation bugs to <https://translationproject.org/team/>
COPYRIGHT
       Copyright  ©  2018  Free  Software  Foundation,  Inc.    License   GPLv3+:   GNU   GPL   version   3   or   later
       <https://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO WARRANTY, to the extent permitted
       by law.
SEE ALSO
       Full documentation at: <https://www.gnu.org/software/coreutils/paste>
       or available locally via: info '(coreutils) paste invocation'
GNU coreutils 8.30                                      July 2018                                               PASTE(1)
COMMENT 

<<COMMENT 
EJEMPLOS: 

Pegar dos archivos lado a lado:

paste file1.txt file2.txt

Pegar tres archivos lado a lado:

paste file1.txt file2.txt file3.txt

Pegar archivos separados por un delimitador personalizado (en este ejemplo, un tabulador):

paste -d'\t' file1.txt file2.txt

Pegar archivos de forma consecutiva en lugar de por columnas:

paste -s file1.txt file2.txt

Pegar archivos separados por un delimitador personalizado (en este ejemplo, un espacio en blanco):

paste -d' ' file1.txt file2.txt

Pegar dos archivos lado a lado, repitiendo la última línea del archivo más corto:

paste -d'\0' file1.txt file2.txt

Pegar dos archivos lado a lado, con una línea de separación en blanco entre cada par de líneas pegadas:

paste -d'\n\n' file1.txt file2.txt

Pegar archivos en una sola línea, con un delimitador personalizado (en este ejemplo, un guion):

paste -s -d'-' file1.txt file2.txt

Pegar dos archivos, utilizando la primera línea del archivo más largo como encabezado:

paste -d'\t' - - < file1.txt file2.txt

Pegar archivos lado a lado y separar las líneas con un delimitador personalizado (en este ejemplo, un guion):

paste -d'-' file1.txt file2.txt

Pegar el texto de un input en 3 columnas:

paste - - - 

COMMENT

#Paste 1 
#URL: https://www.hackerrank.com/challenges/paste-1/problem?isFullScreen=true
#In this challenge, we practice using the paste command to merge lines of a given file.
#You are given a CSV file where each row contains the name of a city and its state separated by a comma. 
#Your task is to replace the newlines in the file with semicolons as demonstrated in the sample.

paste -s -d';'

#Paste 2
#URL: https://www.hackerrank.com/challenges/paste-2/problem?isFullScreen=true
#In this challenge, we practice using the paste command to merge lines of a given file.
#You are given a CSV file where each row contains the name of a city and its state separated by a comma. 
#Your task is to restructure the file so that three consecutive rows are folded into one line and are separated by semicolons.

paste -d';' - - - 

#Paste 3
#URL: https://www.hackerrank.com/challenges/paste-3/problem?isFullScreen=true
#Given a CSV file where each row contains the name of a city and its state separated by a comma, 
#your task is to replace the newlines in the file with tabs as demonstrated in the sample.

paste -s -d'\t'

#Paste 4
#URL: https://www.hackerrank.com/challenges/paste-4/problem?isFullScreen=true
#Given a CSV file where each row contains the name of a city and its state separated by a comma, 
#your task is to restructure the file in such a way, that three consecutive rows are folded into one, and separated by tab.

paste - - -








