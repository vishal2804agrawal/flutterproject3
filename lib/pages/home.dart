import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> highlights = [
      {
        "Icon": Icons.add_circle_outline_rounded,
        "title": "Explore",
        "subtitle": "Discover new content and features",
      },
      {
        "Icon": Icons.mail_outline_outlined,
        "title": "Contact",
        "subtitle": "Get in touch with us",
      },
    ];
    var w = MediaQuery.of(context).size.width;
    return Container(
      width: w,
      margin: EdgeInsetsGeometry.directional(top: 30),
      child: Column(
        children: [
          Column(
            children: [
              Text(
                "Welcome to Our App",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              Text(
                "Explore the features and information we offer.Stay updated with the latest news and insights.",
                style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 100),
          Container(
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("App Highlights", style: TextStyle(fontSize: 30)),
                SizedBox(height: 20),
                ...highlights.map(
                      (item) => Card(
                    child: ListTile(
                      leading: Icon(item['Icon'], color: Colors.blue),
                      title: Text(
                        item['title'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(item['subtitle']),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}