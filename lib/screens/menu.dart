import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:running_tracker/form/form.dart';
import 'package:running_tracker/screens/list_item.dart';
import 'package:running_tracker/screens/login.dart';
import 'package:running_tracker/widget/left_drawer.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyPageState();
  }
}

class _MyPageState extends State<MyPage> {
  int currentPageIndex = 0;

  void changePage(int page) {
    setState(() {
      currentPageIndex = page;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(),
      drawer: LeftDrawer(
        changePageCallback: changePage,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          String msg = "";

          switch (index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context) => Card(
                margin: const EdgeInsets.all(8.0),
                child: SizedBox.expand(
                  child: Center(
                    child: Text(
                      'Home page',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ),));
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

        const ItemPage(),

        const Padding(
          padding: EdgeInsets.all(8.0),
          child: FormWidget(),
        ),

        Card(
            margin: const EdgeInsets.all(8.0),
            child: SizedBox.expand(
              child: Center(
                child: ElevatedButton(
                  onPressed: () async {
                    final response = await request.logout(
                        "http://localhost:8000/auth/logout/");
                    String message = response["message"];
                    if (context.mounted) {
                      if (response['status']) {
                        String uname = response["username"];
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("$message Sampai jumpa, $uname."),
                        ));
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message),
                          ),
                        );
                      }
                    }
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
