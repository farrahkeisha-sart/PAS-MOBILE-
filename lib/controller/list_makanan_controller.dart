import 'package:get/get.dart';
import 'package:pas_flutter/models/list_makanan_model.dart';

class ListMakananController extends GetxController {
  RxList<ModelMakanan> listProduk = <ModelMakanan>[].obs;

  final List<ModelMakanan> _initialProduk = [
    ModelMakanan(
      namaProduk: "Nasi Goreng Spesial",
      harga: "Rp25.000",
      deskripsi: "Nasi goreng bumbu rempah dengan telur mata sapi, ayam suwir, dan kerupuk",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFShTJU1TzBezsBhrjflX8i4O_dGey1nLS2uS8Tg-ng&s=10",
      
    ),
    ModelMakanan(
      namaProduk: "Ayam Bakar Madu",
      harga: "Rp30.000",
      deskripsi: "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFShTJU1TzBezsBhrjflX8i4O_dGey1nLS2uS8Tg-ng&s=10",
      
    ),
    ModelMakanan(
      namaProduk: "Sate Ayam Madura",
      harga: "Rp28.000",
      deskripsi: "10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFShTJU1TzBezsBhrjflX8i4O_dGey1nLS2uS8Tg-ng&s=10",
      
    ),

     ModelMakanan(
      namaProduk: "Mie Ayam Bakso",
      harga: "Rp20.000",
      deskripsi: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFShTJU1TzBezsBhrjflX8i4O_dGey1nLS2uS8Tg-ng&s=10",
      
    ),

    ModelMakanan(
      namaProduk: "Es Teh Manis Jumbo",
      harga: "Rp8.000",
      deskripsi: "Minuman teh melati segar dengan gula asli dan es batu kristal.",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXFShTJU1TzBezsBhrjflX8i4O_dGey1nLS2uS8Tg-ng&s=10",
      
    ),
  ];
   @override
  void onInit() {
    super.onInit();
    // Isi data awal saat controller pertama kali dimuat
    listProduk.assignAll(_initialProduk);
  }

  void hapusProduk(ModelMakanan produk) {
    listProduk.remove(produk);
  }

  // FUNGSI REFRESH YANG SUDAH DIPERBAIKI
  Future<void> refreshProduk() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulasi loading
    listProduk.assignAll(_initialProduk); // Memperbarui/mengembalikan daftar produk
  }
}