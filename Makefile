.DEFAULT_GOAL := backup-dotfiles

backup-dotfiles:
	./backup_dotfiles.sh
	echo "[INFO]: Backup done..."
	
mj-backup:
	./backup_dotfiles_mj.sh
	echo "[INFO]: Backup done..."


