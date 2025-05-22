import 'package:contacts_flutter/data/repositories/contacts_repository.dart';
import 'package:contacts_flutter/ui/contacts_list/view/contacts_list_view.dart';
import 'package:contacts_flutter/ui/contacts_list/viewmodel/contacts_list_viewmodel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ContactsListViewmodel viewmodel = ContactsListViewmodel(
    contactsRepository: ContactsRepository(),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: ContactsListView(viewModel: viewmodel)),
    );
  }
}
