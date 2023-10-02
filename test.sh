divider="----------------------------------------------------------------"
entry="c"
found=false
category[0]="a"; category[1]="a"; category[2]="c"

#######################################
echo $divider
#######################################

# increment
test=0 && echo $test
((test=test+1)) 
echo $test

#######################################
echo $divider
#######################################

# for i
len=3
for ((i=0; i<len; i++)); do
   echo "${category[$i]}"
done

#######################################
echo $divider
#######################################

# for in 
for currentKey in "${!category[@]}"; do
    currentCategory="${category[$currentKey]}"
    echo "Key is '$currentKey'  => Value is '${currentCategory}'"

    if [[ "${category[$currentKey]}" == $entry ]]; then
        found=true 
    fi
done

#######################################
echo $divider
#######################################

# if
if $found; then
    echo "success found value in array"
fi

#######################################
echo $divider
#######################################

if [[ "string" == $entry ]]; then
    echo "demo if block"
elif [[ "$entry" == *".json" ]]; then
    echo "demo elseif block"
else
    echo "demo else block"
fi
