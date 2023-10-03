found=false
category="pierre"

##########################
##########################
# if ... 

if [[ $category == "pierre" ]]; then
    found=true
    echo "success category equal to pierre"
fi

# or
if $found; then echo "success found value"; fi

##########################
##########################
# if ... else ....

if $found; then
    echo "success found value"
else
    echo "aie not found value"
fi

# or
if $found; then echo "success found value"; else echo "aie not found value"; fi

##########################
##########################
# if ... else if ... else ...

if $found; then
    echo "demo if block"
elif [[ $category == *".json" ]]; then
    echo "demo elseif block"
elif [[ $category == "pierre" ]]; then
    echo "demo elseif block"
else
    echo "demo else block"
fi

##########################
##########################
# Ternary Expression

echo $([ "$category" == "pierre" ] && echo "true" || echo "false")

[ "$category" == "paul" ] && result="true" || result="false"
echo $result

result=$((5 > 3 ? 5 : 3))
echo "maximun(5,3) ${result}"

result=$((5 < 3 ? 5 : 3))
echo "minimun(5,3) ${result}"
 