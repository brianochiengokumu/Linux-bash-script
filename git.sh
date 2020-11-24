#bin/bash
#this is a shellscript to automatically git add push and commit in one go

function mygit() {
	git add .
	git commit -am "$1" # this is to allow for external input of your commit comment 
	git push 
}


