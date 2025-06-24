import 'package:flutter/material.dart';
import 'pages/about.dart';
import 'pages/contact.dart';
import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  List<Map<String, dynamic>> appBarItems = [
    {"title": "Home", "Icon": Icons.settings_outlined, "direction": "right"},
    {"title": "About", "Icon": Icons.arrow_back, "direction": "left"},
    {"title": "Contact", "Icon": Icons.arrow_back, "direction": "left"},
  ];

  List<Map<String, dynamic>> bottomNavigationBarItems = [
    {"label": "Home", "Icon": Icons.home_outlined},
    {"label": "About", "Icon": Icons.info_outline_rounded},
    {"label": "Contact", "Icon": Icons.mail_outline_outlined},
  ];

  List<dynamic> content = [Home(), About(), Contact()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            appBarItems[_selectedIndex]["title"],
            style: TextStyle(color: Colors.grey.shade800),
          ),
          centerTitle: true,
          leading: appBarItems[_selectedIndex]["direction"] == "left"
              ? Icon(
            appBarItems[_selectedIndex]["Icon"],
            color: Colors.grey.shade600,
          )
              : null,
          actions: appBarItems[_selectedIndex]["direction"] == "right"
              ? [
            Icon(
              appBarItems[_selectedIndex]["Icon"],
              color: Colors.grey.shade600,
            ),
            Padding(padding: EdgeInsetsGeometry.directional(end: 14)),
          ]
              : null,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.0),
            child: Container(color: Colors.grey.shade300, height: 1),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: content[_selectedIndex],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey.shade300, width: 1),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // shadow color
                blurRadius: 6,
                offset: Offset(0, -1), // shadow goes upward
              ),
            ],
          ),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey.shade500,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: bottomNavigationBarItems
                .map(
                  (item) => BottomNavigationBarItem(
                icon: Icon(item['Icon']),
                label: item['label'],
              ),
            )
                .toList(),
          ),
        ),
      ),
    );
  }
}