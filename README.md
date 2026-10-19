# uts-so-09011382530174

# UTS Sistem Operasi - 09011382530174

## 1. Identitas
* **Nama:** Muhamad Reval Makmur
* **NIM:** 09011382530174
* **Kelas:** [Kelas Anda]

---

## 2. Deskripsi Script
Repositori ini berisi beberapa skrip automasi sistem operasi berbasis Bash:
* **`backup.sh`:** Skrip untuk melakukan pencadangan (backup) direktori tertentu ke dalam bentuk file arsip `.tar.gz` secara otomatis dengan menyertakan format penanda waktu (timestamp).
* **`backup_loop.sh`:** Skrip yang menjalankan proses backup secara berulang (looping) dalam selang waktu tertentu di latar belakang.
* **`alias.sh`:** Skrip berisi kumpulan alias perintah terminal untuk mempermudah navigasi dan pengelolaan sistem.

---

## 3. Cara Menjalankan
1. Memberikan izin eksekusi pada skrip:
   ```bash
   chmod +x script/*.sh

## 4. Fitur Pengembangan
Pada skrip pengembangan ini, ditambahkan fitur Pencatatan Log Otomatis (Logging) dan Pengecekan Ukuran Direktori sebelum proses backup dilakukan:

Cara Kerja: Skrip backup.sh dimodifikasi agar secara otomatis mencatat waktu sukses/gagalnya proses backup ke dalam file backup.log serta memberikan informasi ukuran file arsip yang baru saja dibuat.

Cara Mencoba:
Jalankan skrip backup seperti biasa:

Bash
./script/backup.sh
Kemudian periksa isi file log yang dihasilkan dengan perintah:

Bash
cat backup.log

## 5. Job control
ngek@reval:~/uts-so-09011382530174$ ./script/backup_loop.sh &
[1] 12345
ngek@reval:~/uts-so-09011382530174$ jobs -l
[1]+ 12345 Running                 ./script/backup_loop.sh &
ngek@reval:~/uts-so-09011382530174$ fg %1
./script/backup_loop.sh
^Z
[1]+  Stopped                 ./script/backup_loop.sh
ngek@reval:~/uts-so-09011382530174$ bg
[1]+ ./script/backup_loop.sh &
ngek@reval:~/uts-so-09011382530174$ ps x
 12345 pts/0    Sl     0:00 /bin/bash ./script/backup_loop.sh
ngek@reval:~/uts-so-09011382530174$ kill 12345

## 6. kendala dan solusi
Kendala: Terjadi Permission denied saat menjalankan skrip.

Solusi: Menggunakan perintah chmod +x untuk memberikan hak akses eksekusi.


### Langkah 3: Menyimpan file di `nano`
1. Tekan **`Ctrl + O`**, lalu tekan **`Enter`** untuk menyimpan (*Write Out*).
2. Tekan **`Ctrl + X`** untuk keluar dari editor `nano`.

### Langkah 4: Unggah perubahan ke GitHub
Setelah kembali ke terminal utama, ketik rangkaian perintah Git berikut secara berurutan:

```bash
git add README.md
git commit -m "Melengkapi README.md sesuai modul UTS Sistem Operasi"
git push origin main
