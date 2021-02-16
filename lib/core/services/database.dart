import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseSQL {
  static Future<Database> openDB({bool recreate = false}) async {
    if (recreate) {
      deleteDatabase(join(await getDatabasesPath(), 'keep_track.db'));
      print(' [ DatabaseSQL ] DB has been deleted');
    }

    return await openDatabase(
      join(await getDatabasesPath(), 'keep_track.db'),
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE categories (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            emoji TEXT
          );
        ''');

        db.insert('categories', {'name': 'food', 'emoji': '🍉'});
        db.insert('categories', {'name': 'work', 'emoji': '⛏'});
        db.insert('categories', {'name': 'study', 'emoji': '⌨️'});
        db.insert('categories', {'name': 'body', 'emoji': '🏋️'});
        db.insert('categories', {'name': 'relations', 'emoji': '🤗'});
        db.insert('categories', {'name': 'play', 'emoji': '🏓'});

        db.execute('''
          CREATE TABLE targets (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            target_type_id INTEGER,
            quantity INTEGER,
            unit TEXT,
            FOREIGN KEY(target_type_id) REFERENCES target_types(id) ON DELETE CASCADE
          );
        ''');

        db.execute('''
          CREATE TABLE target_types (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT
          );
        ''');

        db.insert('target_types', {'name': 'bool'});
        db.insert('target_types', {'name': 'at_least'});
        db.insert('target_types', {'name': 'less_than'});
        db.insert('target_types', {'name': 'exactly'});

        db.execute('''
          CREATE TABLE frequency_types (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT
          );
        ''');

        db.insert('frequency_types', {'name': 'every_day'});
        db.insert('frequency_types', {'name': 'some_day'});
        db.insert('frequency_types', {'name': 'few_times'});
        db.insert('frequency_types', {'name': 'repeat'});

        db.execute('''
          CREATE TABLE frequencies (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            frequency_type_id INTEGER,
            content TEXT,
            FOREIGN KEY(frequency_type_id) REFERENCES frequency_types(id) ON DELETE CASCADE
          );
        ''');

        db.execute('''
          CREATE TABLE priorities (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT
          );
        ''');

        db.insert('priorities', {'name': 'high'});
        db.insert('priorities', {'name': 'normal'});
        db.insert('priorities', {'name': 'low'});

        db.execute('''
          CREATE TABLE habits (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            description TEXT,
            category_id INTEGER,
            start_date INTEGER,
            targeted_date INTEGER,
            target_id INTEGER,
            frequency_id INTEGER,
            priority_id,
            FOREIGN KEY(category_id) REFERENCES categories(id) ON DELETE CASCADE,
            FOREIGN KEY(target_id) REFERENCES targets(id) ON DELETE CASCADE,
            FOREIGN KEY(frequency_id) REFERENCES frequencies(id) ON DELETE CASCADE,
            FOREIGN KEY(priority_id) REFERENCES priorities(id) ON DELETE CASCADE
          );
        ''');
      },
    );
  }
}
