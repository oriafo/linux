!#/bin/bash

#This scipt demonstate how to send argument dynamicaally to the script and how to access those sent arguments

echo "The first Argument is: $1"
echo the second Argument is: $2
echo "The Third Arguent is: $3"
echo "All the Arguments are: $@"
echo "The script itself is: $0"
echo "All the Arguments are: $*"
echo "The number of Arguments are $#"

# use echo command to make a newline between the upper code and the code below. The above code is for understanding the concept, while the code below is implementing the concept 
echo

func_argument(){
echo "THe first Argument is : $1"
echo "THe second Argument is: $2"
echo "THe THird Argument is: $3"
echo "All the Arguments are: $@"
echo "The script itself is: $0"
echo "The number of Argument are $#"
echo "All the Argument are: $*"
}

func_argument This scripting is getting more interesting 
