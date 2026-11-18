import 'package:get/get.dart';

class DetailController extends GetxController {
  late String namaProduk;
  late String harga; 
  late String deskripsi;
  late String image;
 
  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaProduk = arguments['nama'];
    harga = arguments['harga'];
    deskripsi = arguments['deskripsi'];
    image = arguments['image'];
    
  }
}