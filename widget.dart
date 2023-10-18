import 'package:flutter/material.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({super.key, required this.title});
  final String title;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ]),
      body: Container(
          //Code
          ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.grey),
                child: Text('Menu')),
            ListTile(
              leading: Icon(Icons.account_circle_rounded),
              title: Text("Tài khoản"),
            ),
            ListTile(
              leading: Icon(Icons.bar_chart_rounded),
              title: Text("Thống kê"),
            ),
            ListTile(
              leading: Icon(Icons.list_alt),
              title: Text("Đơn hàng"),
            ),
            ListTile(
              leading: Icon(Icons.more_horiz),
              title: Text("Khác"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        fixedColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              label: "Thống kê",
              icon: Icon(Icons.bar_chart_rounded, color: Colors.black)),
          BottomNavigationBarItem(
              label: "Thông tin cá nhân",
              icon: Icon(Icons.account_circle_rounded, color: Colors.black)),
          BottomNavigationBarItem(
              label: "Lịch sử đơn hàng",
              icon: Icon(Icons.list_alt, color: Colors.black)),
          BottomNavigationBarItem(
              label: "khác",
              icon: Icon(Icons.more_horiz_rounded, color: Colors.black))
        ],
        onTap: (int indexOfiem) {},
      ),
    );
  }
}
