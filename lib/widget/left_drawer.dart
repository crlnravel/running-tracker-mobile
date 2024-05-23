import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget {
  final Function(int) changePageCallback;

  const LeftDrawer({super.key, required this.changePageCallback});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
            ),
            child: Column(
              children: [
                Text(
                  'Running Tracker',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Catat progress lari di aplikasi ini!",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              changePageCallback(0);
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text("Tambah Buku"),
            onTap: () {
              changePageCallback(2);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profil Saya"),
            onTap: () {
              changePageCallback(3);
            },
          )
        ],
      ),
    );
  }
}
