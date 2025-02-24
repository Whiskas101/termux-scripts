
move_media(){
	MEGAPATH=$HOME/storage/downloads/MEGA\ Downloads
	REDDITPATH=$HOME/storage/shared/Pictures/Reddit
	DWNLDPATH=$HOME
	
	DEST=$HOME/storage/shared/staging-area
	#ls `$MEGAPATH`
	#ls `$REDDITPATH`

	# match images and videos and move them to the staging-area folder
	
	# " . " char needs to be escaped in egrep because it is treated as special by default
	find "$HOME" | egrep "*\.txt|*\.lua"
}

move_media








