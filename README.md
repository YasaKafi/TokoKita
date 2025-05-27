# toko_kita

📦 TokoKita App – Setup Guide
Aplikasi manajemen toko sederhana yang mencatat pembelian, penjualan, serta laporan laba berbasis FIFO (First In First Out) dan HPP (Harga Pokok Penjualan).

🚀 Teknologi yang Digunakan
Flutter (Front-end)

Firebase Firestore (Back-end/Storage)

BLoC + Freezed (State Management)


🛠 Cara Install & Menjalankan Aplikasi
Clone repository:

git clone https://github.com/YasaKafi/TokoKita
cd tokokita


Install dependencies:  flutter pub get

Jalankan aplikasi: flutter run


✅ Menjalankan Test
Untuk menjalankan unit test (jika tersedia): flutter test

💾 Storage Explanation
Kami menggunakan Cloud Firestore sebagai pilihan storage karena:

Skalabilitas real-time untuk menampung transaksi harian.

Query yang fleksibel: sorting, where, limit, dsb.

Dukungan kuat terhadap struktur koleksi dokumen seperti:

products/

purchases/

sales/

Field penting seperti originalQuantity, quantity, purchasePrice disimpan agar memudahkan logika FIFO dan HPP.

🔧 Stub / Mock Service (Jika Offline Testing)
Jika ingin development tanpa Firestore:

Buat class MockPurchaseDatasource & MockSaleDatasource.

Implement interface yang sama, gunakan local memory (List) atau file JSON sebagai stub.

Inject ke Repository untuk development atau testing.

