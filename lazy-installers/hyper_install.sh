sudo wget https://releases.hyper.is/download/deb -P ~/Downloads &&
	mv ~/Downloads/deb ~/Downloads/hyper.deb &&
	sudo dpkg -i ~/Downloads/hyper.deb	
	sudo apt-get -f install &&	
	sudo dpkg -i ~/Downloads/hyper.deb
