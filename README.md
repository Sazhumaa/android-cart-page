🛒 Simple Cart Page Implementation – Flutter App
📌 Deskripsi

Simple Cart Page Implementation adalah aplikasi Flutter sederhana untuk simulasi keranjang belanja.
Pengguna dapat:

Melihat daftar produk.

Menambahkan produk ke keranjang.

Melihat isi keranjang & menghapus produk.

App ini dibuat untuk mempelajari:
✅ Perbedaan StatelessWidget vs StatefulWidget
✅ Penerapan state management (Provider)
✅ Navigasi antar layar (MaterialApp + Navigator)
✅ Struktur widget tree yang rapi

🏗️ Widget Tree (Diagram Singkat)
MyApp (StatelessWidget)
│
└── MaterialApp
    │
    ├── HomePage (StatefulWidget)
    │   │
    │   ├── AppBar
    │   ├── Promo Banner
    │   ├── Category List (CategoryItem widgets)
    │   ├── Rekomendasi Produk (RekomendasiProduk widgets)
    │   └── BottomNavigationBar
    │
    └── CartScreen (StatelessWidget)
        │
        ├── AppBar (Delete All Button)
        └── Body
            ├── Empty State → Text("Keranjang masih kosong")
            └── CartList (ListView of CartItem widgets)

🔄 Pendekatan State Management

Aplikasi ini menggunakan Provider + ChangeNotifier (state global sederhana) untuk mengelola data keranjang.

Alasan Pemilihan:

Resmi direkomendasikan Flutter Docs untuk pemula.

Lebih bersih dibanding hanya setState, karena data keranjang bisa dipakai di banyak widget & layar.

Memisahkan logic (CartProvider) dari UI (Widget) → kode lebih terstruktur & mudah diperluas.

Reaktif: begitu ada item ditambah/dihapus, semua UI yang listen: true langsung update.

📂 Struktur Project
lib/
│
├── main.dart               # Root app + ThemeData (emas)
├── home_page.dart          # Halaman utama
│
├── models/
│   └── cart_item.dart      # Model data CartItem
│
├── providers/
│   └── cart_provider.dart  # State management keranjang
│
└── widgets/
    ├── product_item.dart   # UI 1 produk
    ├── cart_list.dart      # UI list keranjang
    └── cart_screen.dart    # Halaman keranjang

🚀 Cara Menjalankan

Clone repo / copy project ini.

Jalankan perintah:

flutter pub get
flutter run

