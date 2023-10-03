################################
################################
# define function Hello()
Hello () {
    echo "Called Hello()" 
}
 
Hello # call Hello()  


################################
################################
# define function HelloWithParam($str, $str)
HelloWithParam () {
    echo "Called HelloWithParam() with param: $1, $2" 
    return 10
}
 
HelloWithParam Pierre Paul # call HelloWithParam()


################################
################################
# define function HelloWithReturn(): number
HelloWithReturn () {
   echo "Called HelloWithReturn() With Return number: 10"
   return 10
}

HelloWithReturn # call HelloWithReturn()
ret=$?  # Capture value returnd by last command
echo "Called HelloWithReturn() and return value: $ret"