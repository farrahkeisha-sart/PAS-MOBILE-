import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter/models/list_makanan_model.dart';


class TransaksiMakananController extends GetxController {
  late ModelMakanan makanan;
  TextEditingController txtJumlah = TextEditingController();

  var subtotal = 0.0.obs;
  var ppn = 0.0.obs;
  var totalBayar = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments as ModelMakanan;
  }

  void hitungBayar() {
    int jumlah = int.tryParse(txtJumlah.text) ?? 0;
    if (jumlah <= 0) {
      Get.snackbar("Peringatan", "Masukkan jumlah makanan minimal 1!");
      return;
    }

    String angkaSaja = makanan.harga.replaceAll(RegExp(r'[^0-9]'), '');
    double hargaMakanan = double.tryParse(angkaSaja) ?? 0;

    subtotal.value = hargaMakanan * jumlah;
    ppn.value = subtotal.value * 0.05; 
    totalBayar.value = subtotal.value + ppn.value;
  }
}