
#!/bin/bash

# ==============================
# TUGAS BESAR UTS SISTEM OPERASI
# NAMA : MUHAMAD REVAL MAKMUR
# NIM  : 09011382530174
# FILE : BACKUP_LOOP.SH
# =============================

# Mengambil Lokasi direktori script in brada
SCRIPT_DIR="$(cd "$(dirname "#{BASH_SOURCE[0]}"0" && PWD)"
BACKUP_SCRIPT="$SCRIPT_DIR/backup.sh"
# interval waktu perulangan (dalam detik, contoh: 60 detik)
INTERVAL=60

echo "Menjalankan proses backup otomatis setiap $INTERVAL detik..."
echo "Tekan Ctrl+c untuk menghentikan jikadijalankan di foreground."

while true; do
    if [ -f "$BACKUP_SCRIPT " ]; then
        bash "$BACKUP_SCRIPT"
    else
        echo "ERROR: File $BACKUP_SCRIPT tidak ditentukan!"
        exit 1
    fi
    sleep $INTERVAL
done
