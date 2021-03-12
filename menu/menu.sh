echo -e #new line
echo "************"
echo "1. Add"
echo "2. Substract"
echo "3. Multiply"
echo "4. Divide"
echo "5. Exit"
echo "************"
echo -e #new line
read -r -p "Enter your choice: " c
echo -e #new line

if((c != 5))
then
 while true
 do
 case $c in
 1)
 echo "You chose to add two numbers"
 read -r -p "Enter number one: " x
 read -r -p "Enter number two: " y
 add=$((x+y))
 echo "Addition of numbers $x and $y: " $add
 ;;
 2)
 echo "You chose to subtract one number from another number"
 read -r -p "Enter number one: " x
 read -r -p "Enter number two: " y
 subtract=$((x-y))
 echo "Substraction of numbers $x and $y: " $subtract
 ;;
 3)
 echo "You chose to multiply two numbers"
 read -r -p "Enter number one: " x
 read -r -p "Enter number two: " y
 multiply=$((x*y))
 echo "Multiplication of numbers $x and $y: " $multiply
 ;;
 4)
 echo "You chose to divide one number by another number"
 read -r -p "Enter number one: " x
 read -r -p "Enter number two: " y
 divide=`echo "$x/$y" | bc -l`
 echo "Division of numbers $x and $y: " $divide
 ;;
 5)
 echo "You chose to exit"
 break
 ;;
 esac                                

 echo -e #new line
 echo "************"
 echo "1. Add"
 echo "2. Substract"
 echo "3. Multiply"
 echo "4. Divide"
 echo "5. Exit"
 echo "************"
 echo -e #new line
 read -r -p "Enter your choice: " c
 echo -e #new line
 done
fi