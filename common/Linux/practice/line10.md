# 输出内容

``` sh
# How would you print just the 10th line of a file?

# For example, assume that file.txt has the following content:

# Line 1
# Line 2
# Line 3
# Line 4
# Line 5
# Line 6
# Line 7
# Line 8
# Line 9
# Line 10
# Your script should output the tenth line, which is:
# Line 10
```

``` sh
# Solution 1 O(k)
cnt=0
while read line && [ $cnt -le 10 ]; do
  let 'cnt = cnt + 1'
  if [ $cnt -eq 10 ]; then
    echo $line
    exit 0
  fi
done < file.txt

# Solution 2 O(n)
awk 'FNR == 10 {print }'  file.txt
# OR
awk 'NR == 10' file.txt

# Solution 3 O(n)
sed -n 10p file.txt

# Solution 4 O(k)
tail -n+10 file.txt|head -1

# Solution 2 good timing O(k)
awk 'NR==10{print; exit}' file.txt

# Solution 3 good timing O(k)
sed -n '10p;11q' file.txt
```
