# 内容转换

``` sh
# Given a text file file.txt, transpose its content.

# You may assume that each row has the same number of columns and each field is separated by the ' ' character.

# For example, if file.txt has the following content:

# name age
# alice 21
# ryan 30
# Output the following:

# name alice ryan
# age 21 30
```

``` sh
awk '
{
    for (i = 1; i <= NF; i++) {
        if(NR == 1) {
            s[i] = $i;
        } else {
            s[i] = s[i] " " $i;
        }
    }
}
END {
    for (i = 1; s[i] != ""; i++) {
        print s[i];
    }
}' file.txt

empty=" "
i=0
while read line
do
    if [ $i -eq 0 ]; then
        array=($line)
    else
        tmp=($line)
        len=${#tmp[@]}
        k=0
        while [ $k -lt $len ]
        do 
            array[$k]=${array[$k]}$empty${tmp[$k]}
            let k++
        done
    fi
    let i++
done < file.txt

#print result
for ((i=0;i<${#array[@]};i++));
do
    echo ${array[$i]}
done
```
