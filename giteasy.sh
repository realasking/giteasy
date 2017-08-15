#!/bin/bash 
#simplify the way of create or update a project for github usage,no branch in consideration
#Haven't been Tested!!!
#Author: realasking
#LICENSE:GPLv3
#2017-08-15

#$1 is the char for function chose
#$2 is the name of private key of ssh
#$3 is the project folder 
#$4 is user of github 
#$5 is the project name in github 
eval `ssh-agent`
cd $3

sfile="$HOME/.ssh/""$2"
echo $sfile

#init
echo -n "Security settings..."
ssh-add $sfile 
echo "done"

if [ "$1"x=="new"x ];then
   echo -n "Project initializing..."
   git init 
fi

ssh -T git@github.com 

if [ "$1"x=="new"x ];then 
   git remote add origin git@github.com:"$4"/"$5".git 
   echo "done"
fi

#start update 
echo -n "add changes..."
git add .
echo "done"
echo -n "sync to remote..."
git pull origin master 
echo "done"
read -p "Enter commit info:" cm
git commit -m "$cm"
echo -n "updating remote..."
git push -u origin master
eval `ssh-agent -k`
echo "done"
