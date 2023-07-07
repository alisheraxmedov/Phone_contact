import 'package:flutter/material.dart';
import 'package:phonecontact/Pages/AddContactPage.dart';
import 'package:phonecontact/Pages/ContactListPage.dart';
import 'package:phonecontact/Pages/EditPage.dart';
import 'package:phonecontact/Pages/personPage.dart';
 

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case ContactListPage.routeName:
      return MaterialPageRoute(builder: (context) => ContactListPage());
    case AddContact.routeName:
      return MaterialPageRoute(builder: (context) => AddContact());
    case PersonConstPage.routeName:
      return MaterialPageRoute(builder: (context) =>  PersonConstPage(settings.arguments as int));
    case EditPage.routeName:
      return MaterialPageRoute(builder: (context) =>  EditPage(settings.arguments as int));
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text("Not Found"),
          ),
        ),
      );
  }
}

/*
Flutterda menga shunday kod yozib ber. 
birinchi pagedan va ikkinchi pagega 
navigator tarkibidagi arguments orqali 
ma'lumot yuborilsin
*/