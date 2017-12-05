# Author: NattN
# Creation Date: Dec 5, 2017

# push origin master
echo -n "Do you want to proceed (y/n)? :  "
read answer
case ${answer:0:1} in
    y|Y )
        echo -n "Enter commit comment:  " 
		read commit_comment
		git add --all
		git commit -m ${commit_comment}
		git push origin master
    ;;
    * )
        echo Bye!
    ;;
esac




# pull origin master
echo -n "Do you want to proceed (y/n)? :  "
read answer
case ${answer:0:1} in
    y|Y )
        git push origin master
    ;;
    * )
        echo Bye!
    ;;
esac




# status check
git fetch
git status -s






