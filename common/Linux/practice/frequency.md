# 内容统计

``` sh
# Write a bash script to calculate the frequency of each word in a text file words.txt.

# For simplicity sake, you may assume:

# words.txt contains only lowercase characters and space ' ' characters.
# Each word must consist of lowercase characters only.
# Words are separated by one or more whitespace characters.
# For example, assume that words.txt has the following content:

# the day is sunny the the
# the sunny is is
# Your script should output the following, sorted by descending frequency:
# the 4
# is 3
# sunny 2
# day 1
# Note:
# Don't worry about handling ties, it is guaranteed that each word's frequency count is unique.
```

``` sh
cat words.txt | tr -s ' ' '\n' | sort | uniq -c | sort -r | awk '{ print $2, $1 }'
cat words.txt | tr -s ' ' '\n' | sort | uniq -c | sort -nrk 1 | awk '{ print $2, $1 }'

# tr -s: truncate the string with target string, but only remaining one instance (e.g. multiple whitespaces)

# sort: To make the same string successive so that uniq could count the same string fully and correctly.

# uniq -c: uniq is used to filter out the repeated lines which are successive, -c means counting

# sort -r: -r means sorting in descending order

# awk '{ print $2, $1 }': To format the output, see here.


awk '{for(i=1;i<=NF;i++) a[$i]++} END {for(k in a) print k,a[k]}' words.txt | sort -k2 -nr



declare -A HashWord
File="words.txt"

function ReadTxtFile
{
    while read Line
    do
        Word=(${Line})
        for Var in ${Word[@]}
        do
            HashWord+=( [${Var}]='1')
            Word[${Var}]=
            for i in ${Word[@]}
            do
                if [[ ${Var} == ${i} ]];then
                    Value=${HashWord[${Var}]}
                fi
            done

        done
    done < ${File}


    for Key in ${!HashWord[*]}
    do
        echo "${Key} ${#HashWord[${Key}]}"
    done
}
```
