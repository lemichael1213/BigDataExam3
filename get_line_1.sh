#line x (specified by $2) of a file (specified by $1)
head -1 $1

head -"${2}" $1 | tail -1
