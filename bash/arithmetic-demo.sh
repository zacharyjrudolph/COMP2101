#!/bin/bash
#
# this script demonstrates doing arithmetic

# Improve this script by asking the user to supply the two numbers
# Improve this script by demonstrating using subtraction and multiplication
# Improve this script by demonstrating the modulus operation
#   - the output should look something like:
#   - first divided by second gives X with a remainder of Y
# Improve this script by calculating and displaying the first number raised to the power of the second number
echo "please input a number"
read firstnum
echo "please put in another number"
read secondnum
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF


sum=$((firstnum - secondnum))
echo "$firstnum minus $secondnum is $sum"
sum=$((firstnum * secondnum))
echo "$firstnum multiplied by $secondnum is $sum"
sum=$((firstnum / secondnum))
sum2=$((firstnum % secondnum))
echo "$firstnum devided by $secondnum is $sum with a remainder of $sum2"
sum=$((firstnum ** secondnum))
echo "$firstnum to the power of $secondnum is $sum"
