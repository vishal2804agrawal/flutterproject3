import 'package:flutter/material.dart';
import '../components/contactForm.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    var ContactInfo = [
      {"Email": "Support@gmail.com"},
      {"Phone": "11111111111"},
      {"Address": "123 Main Street, USA"},
    ];
    List<Map<String, dynamic>> socialMediaIcon = [
      {"title": "twitter", "icon": FontAwesomeIcons.xTwitter},
      {"title": "facebook", "icon": FontAwesomeIcons.facebookF},
      {"title": "instagram", "icon": FontAwesomeIcons.instagram},
    ];
    return Container(
      margin: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "We'd love to hear from you! Whether you have a question, feedback, or just want to say hello, please don't hesitate to reach out.",
            style: TextStyle(color: Colors.grey.shade900, fontSize: 19),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Contact Information",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10,),
              Column(
                children: ContactInfo.map((item) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.keys.first,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.shade900,
                          ),
                        ),
                        Text(
                          item.values.first,
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact Form",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 30),
                  ContactForm(),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: socialMediaIcon.map((item) {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                item["icon"],
                                size: 30,
                                color: Colors.grey.shade800,
                              ),
                            ),
                            Text(item["title"]),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}