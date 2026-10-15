#!/bin/bash

# =============================================
# Tugas Besar UTS Sistem Operasi
# Nama : Muhammad Reval Makmur
# NIM  : 09011382530174
# File : backup.sh
# ============================================

#Definisi direktori sumber, tujuan backup, dan file log
SOURCE_DIR="$HOME/data_09011382530174"
BACKUP_DIR="$HOME/backup_09011382530174"
LOG_FILE="$HOME/backup_09011382530174.log"

#format waktu untuk penamaan file backup dan pesan log
TIMESTAP=$(date +"%Y%m%d_%H%M%S")
LOG_TIME=$(date +"%Y-%m-%d %H:%M:%S")

#1. cek apakah direktori sumber ada
if [ ! -d "$SOURCE_DIR" ]; then
echo "[$LOG_TIME] ERROR: Direktori sumber $SOURCE_DIR tidak ditemukan!" >> "$LOG_FILE"
echo "ERROR: Direktori sumber $SOURCE_DIR tidak ditemukan!"
exit 1
fi

#2. buat direktori tujuan backup jika belum ada
mkdir -p "$BACKUP_DIR"

#nama file arsip  backup
ARCHIVE_NAME="backup_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="$BACKUP_DIR /$ARCHIVE_NAME"

#3. proses pengarsipab dan kompresi
tar -czf "$ARCHIVE_PATH" -C "$SOURCE_DIR" . 2>/dev/null

#4. cek keberhasilan proses backup dan catat ke log
if [ $? -eq 0 ]; then
FILE_SIZE=$(du -h "ARCHIVE_PATH" | cut -f1)
echo "[$LOG_TIME] SUCCESS: Backup berhasil disimpan di $ARCHIVE_PATH (Ukuran: $FILE_SIZE)" >> "$LOG_FILE"
echo "SUCCESS: Backup berhasil dibuat: $ARCHIVE_NAME"
else
echo "[$LOG_TIME] ERROR: Gagal membuat backup!" >> "$LOG_FILE"
echo "ERROR: Gagal membuat backup!"
exit 1
fi
