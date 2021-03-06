read -r -p "Enter depth of pyramid: " n
echo "You enetered level: $n"

s=0
space=n

for((i=1;i<=n;i++))
do
        space=$((space-1)) #calculate how many spaces should be printed before *

        for((j=1;j<=space;j++))
        do
                echo -n " " #print spaces on the same line before printing *
        done
        for((k=1;k<=i;k++))
        do
                if((i==1 || i==2 || i==n))
                then
                        echo -n "*" #print * on the same line
                        echo -n " " #print space after * on the same line
                elif((k==1))
                then
                        echo -n "*" #print * on the same line
                elif((k==i))
                then
                        for((l=1;l<=k+s;l++))
                        do
                                                        echo -n " " #print spaces on the same line before printing *
                        done
                        s=$((s+1)) #as pyramid expands at bottom, so we need to recalculate inner spaces
                        echo -n "*" #print * on the same line
                fi
        done
        echo -e #print new line after each row
done