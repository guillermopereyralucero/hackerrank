#Tr 1: In a given fragment of text, replace all parentheses () with box brackets [].

 tr "(" "[" | tr ")" "]"

#Tr 2: In a given fragment of text, delete all the lowercase characters a-z.

 tr -d [:lower:]

#Tr 3: In a given fragment of text, replace all sequences of multiple spaces with just one space.
#URL: https://www.hackerrank.com/challenges/text-processing-tr-3/problem?isFullScreen=true

tr -s ' '





