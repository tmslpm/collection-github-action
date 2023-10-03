divider="----------------------------------------------------------------"
entry="c"
found=false
category[0]="a"; category[1]="b"; category[2]="c"

##############################################################################
##############################################################################
echo $divider
##############################################################################

# increment
test=0 && echo $test
((test=test+1)) 
echo $test

##############################################################################
##############################################################################
echo $divider
##############################################################################

# for i
len=3
for ((i=0; i<len; i++)); do
   echo "${category[$i]}"
done

##############################################################################
##############################################################################
echo $divider
##############################################################################

# for in 
for currentKey in "${!category[@]}"; do
    currentCategory="${category[$currentKey]}"
    echo "Key is '$currentKey'  => Value is '${currentCategory}'"
   
    if [[ "${category[$currentKey]}" == $entry ]]; then
        found=true 
    fi

    category[$currentKey]="b${category[$currentKey]}"
done

for currentKey in "${!category[@]}"; do
    currentCategory="${category[$currentKey]}"
    echo "Key is '$currentKey'  => Value is '${currentCategory}'" 
done

##############################################################################
##############################################################################
echo $divider
##############################################################################

# if
if $found; then
    echo "success found value in array"
fi

##############################################################################
##############################################################################
echo $divider
##############################################################################

if [[ "string" == $entry ]]; then
    echo "demo if block"
elif [[ "$entry" == *".json" ]]; then
    echo "demo elseif block"
else
    echo "demo else block"
fi

##############################################################################
##############################################################################
echo $divider
##############################################################################

# define function Hello()
Hello () {
    echo "Called Hello()" 
}
 
Hello # call Hello()  

# define function HelloWithParam($str, $str)
HelloWithParam () {
    echo "Called HelloWithParam() with param: $1, $2" 
    return 10
}
 
HelloWithParam Pierre Paul # call HelloWithParam()

# define function HelloWithReturn(): number
HelloWithReturn () {
   echo "Called HelloWithReturn() With Return number: 10"
   return 10
}

HelloWithReturn # call HelloWithReturn()
ret=$?  # Capture value returnd by last command
echo "Called HelloWithReturn() and return value: $ret"

##############################################################################
##############################################################################
echo $divider
##############################################################################