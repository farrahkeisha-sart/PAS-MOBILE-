import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter/controller/feat_controller.dart';

class ListFeat extends StatelessWidget {
  ListFeat({super.key});

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
          controller.getProduct();
          await Future.delayed(const Duration(seconds: 1));
          },
          child: Obx(() {
            if (controller.isLoading.value &&
                controller.produkModel.value == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            final listfeat =
                controller.produkModel.value?.teams;

            if (listfeat.isEmpty) {

              return ListView(
                children: const [
                  SizedBox(height: 200),
                  Center(
                    child: Text("Data produk tidak tersedia"),
                  ),
                ],
              );
            }

            return ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: listfeat.length,
              itemBuilder: (context, index) {
                final produk = listfeat[index];

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
                    title: Text(produk.strTeam),
                    subtitle: Text("{produk.strTeam}"),
                    
                    
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