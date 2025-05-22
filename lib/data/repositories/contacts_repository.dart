import 'dart:collection';

import 'package:contacts_flutter/models/contacts/contacts_model.dart';
import 'package:contacts_flutter/models/local_data/contacts_mock_data.dart';

class ContactsRepository {
  List<Contact> get contactList => _loadList();

  List<Contact> _loadList() {
    return UnmodifiableListView(listOfContacts);
  }

  void addContact(Contact contact) {
    listOfContacts.add(contact);
  }
}
