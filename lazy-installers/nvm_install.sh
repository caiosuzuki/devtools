git clone https://github.com/nvm-sh/nvm.git ~/.nvm &&
	cd ~/.nvm &&
	sh nvm.sh &&
	echo "" >> ~/.zshrc \
	&& echo "export NVM_DIR=\"\$HOME/.nvm\"" >> ~/.zshrc \
	&& echo "[ -s \"\$NVM_DIR/nvm.sh\" ] && \. \"\$NVM_DIR/nvm.sh\"" >> ~/.zshrc \
	&& echo "[ -s \"\$NVM_DIR/bash_completion\" ] && \. \"\$NVM_DIR/bash_completion\"" >> ~/.zshrc
