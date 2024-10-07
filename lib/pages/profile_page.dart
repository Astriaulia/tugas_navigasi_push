import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/astri.jpg'),
            ),
            const SizedBox(height: 10),
            itemProfile(context, 'Name Lengkap', 'Astri Aulia Fajriati',
                CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile(context, 'NIM', '212225007', CupertinoIcons.cube_box),
            const SizedBox(height: 10),
            itemProfile(context, 'Program Studi', 'Informatika',
                CupertinoIcons.command),
            const SizedBox(height: 10),
            itemProfile(context, 'Fakultas', 'Matematika Dan Ilmu Komputer',
                CupertinoIcons.command),
            const SizedBox(height: 10),
            itemProfile(context, 'Alamat', 'Karang Maja Planjan Kesugihan',
                CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile(context, 'Email', 'astriauliafajriati@gmail.com',
                CupertinoIcons.mail),
          ],
        ),
      ),
    );
  }

  // Menambahkan context agar bisa menggunakan Navigator.push
  itemProfile(
      BuildContext context, String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 197, 202, 242),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 5),
                color: const Color.fromARGB(255, 63, 104, 165).withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        onTap: () {
          // Navigasi ke halaman detail saat item di-tap
        },
      ),
    );
  }
}
