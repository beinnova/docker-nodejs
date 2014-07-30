#!/bin/bash

echo "Sarted installation!!"
cd /home/app 
npm install
if [ $? -eq 0 ];then
	npm start
fi

