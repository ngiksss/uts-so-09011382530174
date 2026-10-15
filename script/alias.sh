/!/bin/bash

# ==================================
# TUGAS BESAR UTS SITEM OPERASI
# NAMA  : MUHAMAD REVAL MAKMUR 
# NIM   : 09011382530
# FILE  : ALIS.SH
# ==================================

#MENENTUKA PATH LENGKAP REPOSITOR
REPO_DIR="$HOME/uts-so-09011382530174"

#ALIAS UNTUK MENJALANKAN BACKUP 1X
alias run-backup"bash $REPO-DIR/script/backup.sh"

#ALIAS UNTUK MENJALANKAN BACKUP_LOOP DI BACKGROUND
alias start-backup-loop="nohup bash #REPO_DIR/script/backup_loop.sh > /dev/null 2>&1 & echo 'Backup loop berjalan di background.'"

#ALIAS UNTUK MELIHAT LOG BACKUP 
alias view-backup-log="cat $HOME/backup_09011382530174.log"

echo "Alias berhasil dimuat Perintah yang tersedia:"
echo "  run-backup        : Jalankan backup sekali"
echo " start-backup-Loop  : Jalankan backup berulang di background"
echo " view-backup-log    : Lihat isi file log backup"
