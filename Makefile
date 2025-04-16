.PHONY: install backup brew

BACKUP_DIR := $(HOME)/dotfiles_backup

backup:
	@echo "Creando directorio de backup (si no existe) en $(BACKUP_DIR)"
	mkdir -p $(BACKUP_DIR)
	@if [ -d "$(HOME)/.config/nvim" ]; then \
		echo "Respaldando ~/.config/nvim en $(BACKUP_DIR)/nvim_$$(date +%Y%m%d%H%M%S)..."; \
		mv $(HOME)/.config/nvim $(BACKUP_DIR)/nvim_$$(date +%Y%m%d%H%M%S); \
	fi
	@if [ -d "$(HOME)/.config/ghostty" ]; then \
		echo "Respaldando ~/.config/ghostty en $(BACKUP_DIR)/ghostty_$$(date +%Y%m%d%H%M%S)..."; \
		mv $(HOME)/.config/ghostty $(BACKUP_DIR)/ghostty_$$(date +%Y%m%d%H%M%S); \
	fi
	@if [ -d "$(HOME)/.config/zellij" ]; then \
		echo "Respaldando ~/.config/zellij en $(BACKUP_DIR)/zellij_$$(date +%Y%m%d%H%M%S)..."; \
		mv $(HOME)/.config/zellij $(BACKUP_DIR)/zellij_$$(date +%Y%m%d%H%M%S); \
	fi
	@if [ -f "$(HOME)/.gitignore" ]; then \
		echo "Respaldando ~/.gitignore en $(BACKUP_DIR)/gitignore_$$(date +%Y%m%d%H%M%S)..."; \
		mv $(HOME)/.gitignore $(BACKUP_DIR)/gitignore_$$(date +%Y%m%d%H%M%S); \
	fi

install: backup
	@echo "Instalando dotfiles..."
	mkdir -p $(HOME)/.config
	ln -sfn $(PWD)/nvim $(HOME)/.config/nvim
	ln -sfn $(PWD)/ghostty $(HOME)/.config/ghostty
	ln -sfn $(PWD)/zellij $(HOME)/.config/zellij
	ln -sfn $(PWD)/.gitignore $(HOME)/.gitignore
	@echo "Instalación de dotfiles finalizada."

brew:
	@echo "Instalando los paquetes de Brewfile..."
	brew bundle --file=$(PWD)/Brewfile
	@echo "Instalación de paquetes completada."
