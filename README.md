![Pipeline Status](https://github.com/fikriazain/covindox/actions/workflows/main.yml/badge.svg)


# :syringe: Covindox Flutter :syringe:


## :computer: TK PBP C03 - PBP-C 2021/2022 :computer:


## :raising_hand: Daftar Anggota Kelompok :raising_hand:
> Muhammad Imam Luthfi Balaka 2006524290  
> Elang Permana 2006520405  
> Denny Johannes Hasea 2006531264  
> Fauzan Andri 2006524593  
> Agastya Kenzo Nayandra 2006535905  
> Fikri Aufaa Zain 2006484040  
> Michael Daw Balma 2006520746  

## :newspaper: Deskripsi Aplikasi :newspaper: 
Di masa pandemi ini, kita dipaksa untuk melakukan semua kegiatan di rumah dengan tujunan untuk mengurangi korban Covid-19 di Indonesia. Oleh karena itu, tingkat penggunaan teknologi seperti _smartphone_ dan komputer akan meningkat yang dikarenakan semua kegiatan akan berbasis _online_. Dengan adanya semua aspek tersebut, kelompok kami membuat suatu aplikasi yang dimana masyarakat dapat menggunakan aplikasi ini untuk mendaptkan informasi tentang Covid-19 yang terbaru dan memberikan sebuah artikel tentang apa yang harus dilakukan di masa pandemi ini. Tidak hanya memberikan informasi, aplikasi ini dapat menyediakan jadwal vaksinasi seseorang jika ingin melakukan vaksinasi dan terdapat _hotline_ yang dimana pengguna dapat melapor ke pihak staff dan admin jika ada laporan mengenai Covid-19.


## :link: Link Download APK :link:

[Download here](https://github.com/fikriazain/covindox/releases)


## :white_check_mark: List Modul :white_check_mark:
- Berita: Elang Permana  
- Landing Page, User Profile, Login/Registration systems: Fikri Aufaa Zain  
- Jadwal Vaksinasi: Fauzan Andri  
- Halaman Pengaduan: Agastya Kenzo Nayandra  
- Pendaftaran Vaksinasi: Muhammad Imam Luthfi Balaka  
- Text generator penyemangat: Michael Daw Balma  


## :scroll: Cerita Daftar Modul :scroll:

**1. Modul berita (Elang Permana)**  
**2. Modul Landing Page, User Profile, Login/Registration systems (Fikri Aufaa Zain.)**  
Modul ini memberikan akun kepada user yang mendaftar pada website covindox yang dimana data yang disimpan akan terhubung ke *database* yang ada pada django. Semua yang terintegrasikan di *website* akan diimplementasikan ke dalam bentuk aplikasi seperti *profile page*, *login page*, *registration page*.  
**3. Modul jadwal vaksinasi (Fauzan Andri)**  
Modul ini bersinergi dengan modul daftar vaksin untuk menyediakan tanggal dan waktu vaksin yang dapat dipilih oleh pengguna. Dengan memanfaatkan event calendar, admin dapat menambahkan jadwal vaksin yang selanjutnya akan ditampilkan kepada pengguna agar dapat memilih jadwal vaksin yang sesuai.  
**4. Modul artikel (Denny Johannes Hasea)**  
Modul ini berisi tentang kumpulan artikel yang dapat dibaca orang ketika senggang yang mungkin dapat menambah wawasan.  
**5. Modul halaman pangaduan (Agastya Kenzo Nayandra)**  
Modul ini akan berisi feedback dari pengguna yang dapat berupa laporan bug di aplikasi atau masukan yang dapat di implementasikan kedepanya  
**6. Modul Form Pendaftaran (Muhammad Imam Luthfi Balaka)**  
Modul ini berkaitan dengan modul jadwal vaksinasi, yaitu dalam hal menyediakan form untuk mendaftar pada jadwal yang sudah dipilih pada modul jadwal vaksinasi. Jika sudah mendaftar, ditampilkan datanya, jika belum, diberikan form untuk mengisi data.  
**7. Modul text generator penyemangat (Michael Daw Balma)**  
Modul ini bertujuan agar kita tetap dapat semangat di masa pandemi. Implementasinya yaitu user yang sudah login dapat memasukkan kata-kata random sebagai penyemangat, lalu kata-kata tersebut akan disimpan pada database. Setelah itu akan dimunculkan dalam bentuk acak (muncul katanya yang acak).

## :electric_plug: Integrasi dengan Web Service Django :electric_plug:

Secara umum, kami mengimplementasikan dua method di views.py pada [aplikasi web proyek tengah semester](https://gitlab.com/fikriazain/tk-pbp-c03). Method pertama berfungsi mengembalikan data models yang spesifik ke pengguna yang login dalam bentuk JSON. Method kedua berfungsi menerima data dalam bentuk JSON untuk menambahkan instance models baru. Mobile app yang kami buat akan mengakses method-method tersebut secara async untuk menampilkan dan meng-_submit_ data.
