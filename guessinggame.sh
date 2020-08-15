#! /usr/bin/bash


# using function to get the no of files(only files , not directory)
func_files_pwd(){
    file_cnt=`ls -la | grep ^- | wc -l` 
}
# Calling the function (pwd_files)
func_files_pwd

echo "Please guess the file count in current directory: \c"
read num


while [ $file_cnt -ne $num ];do
    if [ $(( $file_cnt - $num )) -gt 0 -a $(( $file_cnt - $num )) -lt 5 ]  # if - 2            
    then    
        echo "Too close!! Please try again:"
        read num
    elif [ $(( $file_cnt - $num )) -lt 0 -a $(( $file_cnt - $num )) -gt -5 ] # if - 2            
    then
        echo "Too close!! Please try again:"
        read num
    elif [ $num -gt $file_cnt ];then       
        echo "You entered too higher number!! Please try again:"
        read num
    else
        echo "You entered too lower number!! Please try again:"
        read num
    fi   
done
echo "Congratulations!! your guess is correct"
 

