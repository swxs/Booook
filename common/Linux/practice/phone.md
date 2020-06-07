# 匹配电话

``` sh
# Given a text file file.txt that contains list of phone numbers (one per line), write a one liner bash script to print all valid phone numbers.

# You may assume that a valid phone number must appear in one of the following two formats: (xxx) xxx-xxxx or xxx-xxx-xxxx. (x means a digit)

# You may also assume each line in the text file must not contain leading or trailing white spaces.

# For example, assume that file.txt has the following content:

# 987-123-4567
# 123 456 7890
# (123) 456-7890
# Your script should output the following valid phone numbers:
# 987-123-4567
# (123) 456-7890
```

``` sh
# Using grep:

grep -P '^(\d{3}-|\(\d{3}\) )\d{3}-\d{4}$' file.txt

# -P 正则

# Using sed:

sed -n -r '/^([0-9]{3}-|\([0-9]{3}\) )[0-9]{3}-[0-9]{4}$/p' file.txt

# -r 正则

# Using awk:

awk '/^([0-9]{3}-|\([0-9]{3}\) )[0-9]{3}-[0-9]{4}$/' file.txt
awk '/^([[:digit:]]{3}-|\([[:digit:]]{3}\) )[[:digit:]]{3}-[[:digit:]]{4}$/' file.txt

# points
# ) ) 两个右括号之间有空格
```
