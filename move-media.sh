
move_media(){
	MEGAPATH=$HOME/storage/downloads/MEGA\ Downloads
	REDDITPATH=$HOME/storage/shared/Pictures/Reddit
	DWNLDPATH=$HOME/storage/shared/Download
	
	DEST=$HOME/storage/shared/staging-area
	#ls `$MEGAPATH`
	#ls `$REDDITPATH`

	# match images and videos and move them to the staging-area folder
	
	# " . " char needs to be escaped in egrep because it is treated as special by default
	echo "Moving files from MEGA..."
	find "$MEGAPATH" -type f -print0 | grep -E -z "\.(txt|mp4|mkv|mov|avi|webm|png|jpg|jpeg|webp)" | xargs -0 -I {} mv {} "$DEST/{}"

	#echo "Moving files from REDDIT..."
	find "$REDDITPATH" -type f -print0 | grep -E -z "*\.txt|*\.mp4| *\.mkv|*\.mov|*\.avi|*\.webm|*\.png|*\.jpg|*\.jpeg|*\.webp" | xargs -0 -I {} mv {} "$DEST/{}"

	#echo "Moving files from Downloads..."
	#find "$DWNLDPATH" -type f -print0 | grep -E -z "*\.txt|*\.mp4| *\.mkv|*\.mov|*\.avi|*\.webm|*\.png|*\.jpg|*\.jpeg|*\.webp" | xargs -0 -I {} mv {} "$DEST/{}"

	echo "Finished"
	exit
}

move_media








