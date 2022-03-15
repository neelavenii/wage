echo "Enter basic salary:"
read sal
if [ $sal -lt 1500 ]
then
hra=`echo "scale=3;$sal*10/100"|bc`
da=`echo "scale=3;$sal*90/100"|bc`
else 
hra=500
da=`echo "scale=3;$sal*98/100"|bc`
fi
gsal=`echo "scale=3;$sal * $hra * $da"`
echo gross salary=$gsal
