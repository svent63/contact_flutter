import 'package:contacts_flutter/models/contacts/contacts_model.dart';
import 'package:contacts_flutter/ui/contacts_list/viewmodel/contacts_list_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:contacts_flutter/ui/contact_card.dart';

class ContactsListView extends StatefulWidget {
  const ContactsListView({super.key, required this.viewModel});

  final ContactsListViewmodel viewModel;

  @override
  State<ContactsListView> createState() => _ContactsListViewState();
}

class _ContactsListViewState extends State<ContactsListView> {
  List<Contact> contacts = [];

  @override
  void initState() {
    super.initState();
    widget.viewModel.loadContacts();
    contacts = widget.viewModel.contacts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
        backgroundColor: Colors.lightBlue.shade50,
      ),
      body: ListenableBuilder(
        listenable: widget.viewModel,
        builder:
            (context, _) => ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return ContactCard(
                  firstName: contacts[index].firstName,
                  lastName: contacts[index].lastName,
                  phoneNumber: contacts[index].phoneNumber,
                  emailAddress: contacts[index].emailAddress,
                );
              },
            ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.viewModel.addContact(
            Contact(
              id: contacts.length + 1,
              firstName: 'Bob',
              lastName: 'Builder',
              phoneNumber: '909-234-8923',
              emailAddress: 'bob@builder.com',
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
