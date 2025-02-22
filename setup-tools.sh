# updating package lists because yes
pkg update -y

setup_storage(){
	if ! command -v termux-info &>/dev/null; then
		echo "Installing termux-tools"
		pkg install -y termux-tools
	else
		echo "termux-tools already installed"
	fi

	if [ ! -d "$HOME/storage" ]; then

		echo "setting up storage access..."
		termux-setup-storage
	else
		echo "~/storage already exists"
	fi


}

if ! command -v termux-info &>/dev/null; then
	echo "Installing termux-tools"
	pkg install -y termux-tools
else
	echo "termux-tools already installed"
fi

if [ ! -d "$HOME/storage" ]; then

	echo "setting up storage access..."
	termux-setup-storage
else
	echo "~/storage already exists"
fi


