import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Your Name',
              filled: true,
              fillColor:  Colors.blue.shade50,
              hintStyle:  TextStyle(color: Colors.blueGrey),
              border: border,
            ),
          ),
          SizedBox(height: 12),

          TextField(
            decoration: InputDecoration(
              hintText: 'Your Email',
              filled: true,
              fillColor: Colors.blue.shade50,
              hintStyle:  TextStyle(color: Colors.blueGrey),
              border: border,
            ),
          ),
          SizedBox(height: 12),

          TextField(
            maxLines: 5,
            decoration: InputDecoration(
              hintText: 'Your Message',
              filled: true,
              fillColor:  Colors.blue.shade50,
              hintStyle:  TextStyle(color: Colors.blueGrey),
              border: border,
            ),
          ),
          SizedBox(height: 20),

          Container(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:  Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                print("Submitted");
              },
              child:  Text(
                'Send Message',
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}