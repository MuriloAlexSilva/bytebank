import 'package:bytebank/models/contact.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> createDataBase() {
  return getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'bytebank.db');
    return openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE contacts('
          'id INTERGER PRIMARY KEY, '
          'name TEXT, '
          'account_number INTERGER)');
    }, version: 1);
  });
}

void save(Contact contact) {
  createDataBase().then((db) {
    final Map<String, dynamic> contactMap = Map();
    contactMap['id'] = contact.id;
    contactMap['name'] = contact.name;
    contactMap['account_number'] = contact.accountNumber;
    return db.insert('contacts', contactMap);
  });
}

Future<List<Contact>> findAll() {
  return createDataBase().then(
    (db) {
      final List<Contact> contacts = List();
      return db.query('contacts').then(
        (maps) {
          for (Map<String, dynamic> map in maps) {
            final Contact contact = Contact(
              map['id'],
              map['name'],
              map['account_number'],
            );
            contacts.add(contact);
          }
          return contacts;
        },
      );
    },
  );
}
