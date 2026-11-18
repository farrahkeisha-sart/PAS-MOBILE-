import 'package:pas_flutter/models/team_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class FeatController extends GetxController {
  var isLoading = false.obs;
  var produkModel = Rxn<PremierLeagueModel>();

  Future<void> getProduct() async {
    try {
      isLoading.value = true;

      final response = await http.get(
        Uri.parse('https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php? l=English%20Premier%20League'),
      );

      if (response.statusCode == 200) {
        produkModel.value = premierLeagueModelFromJson(response.body);
        Get.snackbar("Berhasil", "Data produk berhasil diambil");
      } else {
        Get.snackbar("Gagal", "Cek internet connection");
      }
    } catch (e) {
      Get.snackbar("Gagal", e.toString());
      print("error nya $e");
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    getProduct();
  }
}