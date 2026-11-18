import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: SingleChildScrollView(
        child: Column(
          children: [  
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 40, bottom: 30, left: 20, right: 20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 138, 174, 206),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const CircleAvatar(
                      radius: 55,
                      backgroundColor: Color(0xFFE3ECF5),
                      // Jika pakai foto aset lokal, ganti child ini dengan:
                      // backgroundImage: AssetImage('assets/foto_profil.jpg'),
                      child: Icon(
                        Icons.person,
                        size: 65,
                        color: Color.fromARGB(255, 138, 174, 206),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Keisha Farrah Az-zahra", 
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "XI PPLG 1 / No. Absen: 00", // Ganti dengan kelas & no absenmu
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color(0xFFE3ECF5),
                          child: Icon(
                            Icons.badge_outlined,
                            color: Color.fromARGB(255, 138, 174, 206),
                          ),
                        ),
                        title: Text(
                          "Nama Lengkap",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        subtitle: Text(
                          "Keisha Farrah Az-zahra", 
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      const Divider(),
                      const ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color(0xFFE3ECF5),
                          child: Icon(
                            Icons.class_outlined,
                            color: Color.fromARGB(255, 138, 174, 206),
                          ),
                        ),
                        title: Text(
                          "Kelas / No. Absen",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        subtitle: Text(
                          "11 PPLG 1 / Absen 00", // Ganti sesuai datamu
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      const Divider(),
                      const ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color(0xFFE3ECF5),
                          child: Icon(
                            Icons.school_outlined,
                            color: Color.fromARGB(255, 138, 174, 206),
                          ),
                        ),
                        title: Text(
                          "Sekolah",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        subtitle: Text(
                          "SMK Raden Umar Said Kudus",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      const Divider(),
                      const ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color(0xFFE3ECF5),
                          child: Icon(
                            Icons.info_outline,
                            color: Color.fromARGB(255, 138, 174, 206),
                          ),
                        ),
                        title: Text(
                          "Bio Singkat",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Text(
                            "Pelajar jurusan Pengembangan Perangkat Lunak dan Gim (PPLG) yang fokus mempelajari pengembangan aplikasi mobile menggunakan Flutter dan GetX.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}