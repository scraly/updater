# !/bin/sh
#######################################################################
##                                                                   ##
## Ce script remplace un mot par un autre mot sur plusieurs fichiers ##
##                                                                   ##
#######################################################################

FILES=`grep -rl titi /home/prod/conf /home/prod/bin /home/prod/local/install/*.crontab`
for i in $FILES
do
        echo "replacing titi by tutu in $i"
        sed -r "s:titi:tutu:g" $i > $i.new && mv -f $i.new $i
done
