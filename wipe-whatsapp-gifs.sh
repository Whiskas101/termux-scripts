# executes the setup crap
source ./setup-tools.sh

nuke_whatsapp_gifs(){
	WHTSAPPDIR=$HOME/storage/shared/Android/media/com.whatsapp/WhatsApp/Media/WhatsApp\ Animated\ Gifs
	echo "deleting from $WHTSAPPDIR"
	echo "executing : rm -rf $WHTSAPPDIR/*"
	rm -rf "$WHTSAPPDIR"/*

}

nuke_whatsapp_gifs
