import 'dart:collection';

import 'package:contacts_flutter/data/repositories/contacts_repository.dart';
import 'package:contacts_flutter/models/contacts/contacts_model.dart';
import 'package:flutter/material.dart';

class ContactsListViewmodel extends ChangeNotifier {
  ContactsListViewmodel({required ContactsRepository contactsRepository})
    : _contactsRepository = contactsRepository;

  final ContactsRepository _contactsRepository;
  List<Contact> _contacts = [];

  void loadContacts() {
    _contacts = _contactsRepository.contactList;
  }

  UnmodifiableListView<Contact> get contacts => UnmodifiableListView(_contacts);

  void addContact(Contact contact) {
    _contactsRepository.addContact(contact);
    notifyListeners();
  }
}
