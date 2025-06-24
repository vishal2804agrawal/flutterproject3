import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> content = [
      {
        "title": "Our Mission",
        "description":
        "Our mission is to provide users withcomprehensive and reliable source information on a wide range of topics. strive to make knowledge accessible everyone, fostering curiosity and lifelolearning.",
      },
      {
        "title": "Background",
        "description":
        "This app was developed by a team of passionate individuals dedicated to creating a valuable resource for users seeking information. We believe in the power of knowledge to empower individuals and contribute to a more informed society.",
      },
      {
        "title": "Contact Us",
        "description":
        "If you have any questions, feedback, or suggestions, please don't hesitate to reach ou to us at support@infoapp.com. We value your input and are committed to continuously improving our app.",
      },
    ];
    return Container(
      padding: EdgeInsetsGeometry.directional(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: content.asMap().entries.map((item) {
          int index = item.key;
          var data = item.value;

          return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${index + 1}. ${data["title"]}",
                    style:  TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(data["description"], style: TextStyle(fontSize: 17, color: Colors.grey.shade700)),
                  SizedBox(height: 25,)
                ],
              )
          );
        }).toList(),
      ),
    );
  }
}