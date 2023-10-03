#######################################
#######################################
# string

myString="my awesome string"
echo $myString

#######################################
#######################################
# number

myNumber=5
if [ $myNumber -lt 10 ]; then echo "myNumber < 10 "; fi

#######################################
#######################################
# boolean

myBoolean=false
myBoolean=true

if $myBoolean; then echo "myBoolean = ${myBoolean}"; fi


#######################################
#######################################
# array

arrayLength=3
myArray[0]="item 1"; myArray[1]="item 2"; myArray[2]="item 3"

echo "myArray[0] = ${myArray[0]}"
echo "myArray[1] = ${myArray[1]}"
for ((i=0; i<arrayLength; i++)); do
   echo "${myArray[$i]}"
done