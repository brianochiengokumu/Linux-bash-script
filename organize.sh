#/bin/bash/

#initialize all variables (images music/audio video docs )
# my downloads contain: jpeg jpg png mp4 mp3 pdf epub zip
img=0
msc=0
vid=0
doc=0
zipy=0

#select all files from current directory
for i in *
do
    #check file extension one by one
    if [[ $i == *.mp3 || $i == *.wav || $i == *.flac ]]
    then
        # create the music directory only if it doesn't exist
        if [ $msc == 0 ]
        then
            mkdir -p music;
            msc=`expr $msc+1`
        fi
        # move the file from downloads to the music folder
        #NB DO MOT FORGET THE " " AS FILES WITH SPACES IN THE NAMES WILL NOT BE MOVED
        mv "$i" $pwd music;
    fi
    
    #create the video directory only if it doesn't exist
    if [[ $i == *.webm || $i == *.mpg || $i == *.mp2 || $i == *.mpeg || $i == *.mp4 || $i == *.m4p || $i == *.m4v || $i == *.avi || $i == *.mov ]]
    then
        # create the respective directories only if they dont exist
        if [ $vid == 0 ]
        then
            mkdir -p video;
            vid=`expr $vid+1`
        fi
        # move the file from downloads to the music folder
        #NB DO MOT FORGET THE " " AS FILES WITH SPACES IN THE NAMES WILL NOT BE MOVED
        mv "$i" $pwd video;
    fi
    
    #create the images directory only if it doesn't exist
    if [[ $i == *jpeg || $i == *.jpg || $i == *.png  ]]
    then
        # create the respective directories only if they dont exist
        if [ $img == 0 ]
        then
            mkdir -p images;
            img=`expr $img+1`
        fi
        # move the file from downloads to the images folder
        #NB DO MOT FORGET THE " " AS FILES WITH SPACES IN THE NAMES WILL NOT BE MOVED
        mv "$i" $pwd images;
    fi
    
    #create a compressed&disk_media_file_extension directory only if it doesn't exist
    if [[ $i == *.zip || $i == *.rar || $i == *.tar.gz || $i == *.z || $i == *.pkg || $i == *.7z || $i == *.bin || $i == *.iso || $i == *.tar ]]
    then
        # create the respective directories only if they dont exist
        if [ $zipy == 0 ]
        then
            mkdir -p zips-and-iso;
            zipy=`expr $zipy+1`
        fi
        # move the file from downloads to the compressedsipy folder
        #NB DO MOT FORGET THE " " AS FILES WITH SPACES IN THE NAMES WILL NOT BE MOVED
        mv "$i" $pwd zips-and-iso;
    fi
    
    #create a documents directory only if it doesn't exist
    if [[ $i == *.pdf || $i == *.epub || $i == *.txt || $i == *.docx || $i == *.doc || $i == *.odt || $i == *.ppt || $i == *.rtf || $i == *.pptx ]]
    then
        # create the respective directories only if they dont exist
        if [ $doc == 0 ]
        then
            mkdir -p documents;
            doc=`expr $doc+1`
        fi
        # move the file from downloads to the documents folder
        #NB DO MOT FORGET THE " " AS FILES WITH SPACES IN THE NAMES WILL NOT BE MOVED
        mv "$i" $pwd documents;
    fi
done


