category[0]="a"; category[1]="b"; category[2]="c"
len=3

################################
################################
# increment
testIncrement=0 && echo counter: $testIncrement
((testIncrement=testIncrement+1)) 
echo counter: $testIncrement


################################
################################
# for i

for ((i=0; i<len; i++)); do
   echo "${category[$i]}"
done


################################
################################
# for in

for key in "${!category[@]}"; do
    value="${category[$key]}"
    echo "Key: '$key', value: '${value}'" 
done


################################
################################
# while

i=0;
while ((i<len)); do
   echo $i && ((i=i+1))
done