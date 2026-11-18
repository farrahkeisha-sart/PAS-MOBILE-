import 'package:pas_flutter/controller/feat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeatPage extends StatelessWidget {
 FeatPage({super.key});

  final controller = Get.put(FeatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Produk API"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Container(
        margin: const EdgeInsets.all(10),
        child: RefreshIndicator(
          onRefresh: () async {
            await controller.getProduct();
          },

          child: Obx(() {
            if (controller.isLoading.value &&
                controller.produkModel.value == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (controller.produkModel.value == null ||
                controller.produkModel.value!.teams.isEmpty) {
              return ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: const [
                  SizedBox(height: 200),
                  Center(
                    child: Text("Data produk tidak tersedia"),
                  ),
                ],
              );
            }

            return ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              itemCount: controller.produkModel.value!.teams.length,

              itemBuilder: (context, index) {
                final produk = controller.produkModel.value!.teams[index];

                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.only(bottom: 10),

                  child: ListTile(
                    leading: Image.network(
                      produk.strBadge,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.image_not_supported);
                      },
                    ),

                    title: Text(produk.strBadge),

                    subtitle: Text("{produk.strBadged}"),
                  ),
                );
              },
            );
          }),
        ),
      ),
    );
  }
}