#Sort 1: Given a text file, order the lines in lexicographical order.
#URL: https://www.hackerrank.com/challenges/text-processing-sort-1/problem?isFullScreen=true

sort 

#Sort 2: Given a text file, order the lines in reverse lexicographical order (i.e. Z-A instead of A-Z). 
#URL: https://www.hackerrank.com/challenges/text-processing-sort-2/problem?isFullScreen=true

sort -r

#Sort 3: In this challenge, we practice using the sort command to sort input in text or TSV formats. 
#You are given a text file where each line contains a number. The numbers may be either an integer or have decimal places. 
#There will be no extra characters other than the number or the newline at the end of each line. 
#Sort the lines in ascending order - so that the first line holds the numerically smallest number, and the last line holds the numerically largest number.
#URL: https://www.hackerrank.com/challenges/text-processing-sort-3/problem?isFullScreen=true

sort -n

#Sort 4: You are given a file of text, where each line contains a number (which may be either an integer or have decimal places). 
#There will be no extra characters other than the number or the newline at the end of each line. 
#Sort the lines in descending order - - such that the first line holds the (numerically) largest number and the last line holds the (numerically) smallest number.
#URL: https://www.hackerrank.com/challenges/text-processing-sort-4/problem?isFullScreen=true

sort -n -r

#Sort 5: You are given a file of text, which contains temperature information about American cities, in TSV (tab-separated) format. 
#The first column is the name of the city and the next four columns are the average temperature in the months of Jan, Feb, March and April (see the sample input). 
#Rearrange the rows of the table in descending order of the values for the average temperature in January.
#URL: https://www.hackerrank.com/challenges/text-processing-sort-5/problem?isFullScreen=true

sort -r -n -t$'\t' -k2

#Sort 6: You are given a file of tab separated weather data (TSV). There is no header column in this data file.
#The first five columns of this data are: (a) the name of the city (b) the average monthly temperature in Jan (in Fahreneit). 
#(c) the average monthly temperature in April (in Fahreneit). (d) the average monthly temperature in July (in Fahreneit). 
#(e) the average monthly temperature in October (in Fahreneit).
#You need to sort this file in ascending order of the second column (i.e. the average monthly temperature in January).
#URL: https://www.hackerrank.com/challenges/text-processing-sort-6/problem?isFullScreen=true

sort -n -t$'\t' -k2

#Sort 7: 
#You are given a file of pipe-delimited weather data (TSV). There is no header column in this data file. 
#The first five columns of this data are: (a) the name of the city (b) the average monthly temperature in Jan (in Fahreneit).
#(c) the average monthly temperature in April (in Fahreneit). (d) the average monthly temperature in July (in Fahreneit). 
#(e) the average monthly temperature in October (in Fahreneit).
#You need to sort this file in descending order of the second column (i.e. the average monthly temperature in January).
#URL: https://www.hackerrank.com/challenges/text-processing-sort-7/problem?isFullScreen=true

sort -n -r -t'|' -k2 




#man sort

<<COMMENT
SORT(1) User Commands SORT(1) 
NAME sort - sort lines of text files 
SYNOPSIS sort [OPTION]... [FILE]... sort [OPTION]... --files0-from=F 
DESCRIPTION Write sorted concatenation of all FILE(s) to standard output. 
With no FILE, or when FILE is -, read standard input. 
Mandatory arguments to long options are mandatory for short options too. 

Ordering options: 
-b, --ignore-leading-blanks ignore leading blanks 
-d, --dictionary-order consider only blanks and alphanumeric characters 
-f, --ignore-case fold lower case to upper case characters 
-g, --general-numeric-sort compare according to general numerical value 
-i, --ignore-nonprinting consider only printable characters 
-M, --month-sort compare (unknown) < 'JAN' < ... < 'DEC' 
-h, --human-numeric-sort compare human readable numbers (e.g., 2K 1G) 
-n, --numeric-sort compare according to string numerical value 
-R, --random-sort shuffle, but group identical keys. See shuf(1) --random-source=FILE get random bytes from FILE 
-r, --reverse reverse the result of comparisons 
--sort=WORD sort according to WORD: 
      general-numeric -g, 
      human-numeric -h, 
      month -M, 
      numeric -n, 
      random -R, 
      version -V 
-V, --version-sort natural sort of (version) numbers within text Other options: --batch-size=NMERGE merge at most NMERGE inputs at once; for more use temp files 
-c, --check, --check=diagnose-first check for sorted input; do not sort -C, --check=quiet, --check=silent like -c, but do not report first bad line --compress-program=PROG compress temporaries with PROG; decompress them with PROG -d --debug annotate the part of the line used to sort, and warn about questionable usage to stderr --files0-from=F read input from the files specified by NUL-terminated names in file F; If F is - then read names from standard input 
-k, --key=KEYDEF sort via a key; KEYDEF gives location and type 
-m, --merge merge already sorted files; do not sort 
-o, --output=FILE write result to FILE instead of standard output 
-s, --stable stabilize sort by disabling last-resort comparison 
-S, --buffer-size=SIZE use SIZE for main memory buffer 
-t, --field-separator=SEP use SEP instead of non-blank to blank transition 
-T, --temporary-directory=DIR use DIR for temporaries, not $TMPDIR or /tmp; multiple options specify multiple directories --parallel=N change the number of sorts run concurrently to N 
-u, --unique with -c, check for strict ordering; without -c, output only the first of an equal run 
-z, --zero-terminated line delimiter is NUL, not newline 
--help display this help and exit 
--version output version information and exit 
KEYDEF is F[.C][OPTS][,F[.C][OPTS]] for start and stop position, where F is a field number and C a character position in the field;
both are origin 1, and the stop position defaults to the line's end. 
If neither -t nor -b is in effect, characters in a field are counted from the beginning of the preceding whitespace. 
OPTS is one or more single-letter ordering options [bdfgiMhnRrV], which override global ordering options for that key. 
If no key is given, use the entire line as the key. 
Use --debug to diagnose incorrect key usage. 
SIZE may be followed by the following multiplicative suffixes: % 1% of memory, b 1, K 1024 (default), and so on for M, G, T, P, E, Z, Y. 
The locale specified by the environment affects sort order. 
Set LC_ALL=C to get the tradi‐ tional sort order that uses native byte values. 
AUTHOR Written by Mike Haertel and Paul Eggert. 
REPORTING BUGS GNU coreutils online help: <https://www.gnu.org/software/coreutils/> 
Report sort translation bugs to <https://translationproject.org/team/> 
COPYRIGHT Copyright © 2018 Free Software Foundation, Inc. 
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>. 
This is free software: you are free to change and redistribute it. 
There is NO WARRANTY, to the extent per‐ mitted by law. 
SEE ALSO shuf(1), uniq(1) Full documentation at: <https://www.gnu.org/software/coreutils/sort> 
or available locally via: info '(coreutils) sort invocation' GNU coreutils 8.30 July 2018 SORT(1)
COMMENT
