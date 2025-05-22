import 'package:flutter/material.dart';
import 'package:contacts_flutter/models/contacts/contacts_model.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.emailAddress,
  });

  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String emailAddress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: Colors.amber.shade200,
        border: Border.all(color: Colors.black45),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$firstName $lastName', style: TextStyle(fontSize: 18.0)),
          Row(spacing: 5.0, children: [Icon(Icons.phone), Text(phoneNumber)]),
          Row(spacing: 5.0, children: [Icon(Icons.email), Text(emailAddress)]),
        ],
      ),
    );
  }
}
