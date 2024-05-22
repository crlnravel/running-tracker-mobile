import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyPageState();
  }
}

class _MyPageState extends State<MyPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          String msg = "";

          switch (index) {
            case 0:
              msg = "Home";
              break;
            case 1:
              msg = "Lihat Buku";
              break;
            case 2:
              msg = "Tambah Buku";
              break;
            case 3:
              msg = "Profile";
              break;
          }
          ScaffoldMessenger.of(context).removeCurrentSnackBar();
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(msg)));
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.book), label: "Lihat Buku"),
          NavigationDestination(icon: Icon(Icons.add), label: "Tambah Buku"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile")
        ],
        selectedIndex: currentPageIndex,
        indicatorColor: Colors.blueAccent,
      ),
      body: <Widget>[
        Card(
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Home page',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Lihat Buku',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(
              child: Text(
                'Tambah Buku',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ),
        Card(
            margin: EdgeInsets.all(8.0),
            child: SizedBox.expand(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Aku logout")));
                  },
                  child: Text(
                    "Afkh ingin logout?",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
            ))
      ][currentPageIndex],
    );
  }
}
