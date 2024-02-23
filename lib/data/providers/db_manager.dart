import 'dart:async';
import 'package:lua_app/data/repositories/questions_answers.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbManager {
  Database? _database;

  Future openDb() async {
    _database ??= await openDatabase(
        join(await getDatabasesPath(), "favorites.db"),
        version: 1, onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE favorites (no INTEGER PRIMARY KEY)");
    });
  }

  Future<int> insertFavorite(Favorites favorite) async {
    await openDb();
    return await _database!.insert("favorites", favorite.toMap());
  }

  Future<List<Favorites>> getFavoriteList() async {
    await openDb();
    final List<Map<String, dynamic>> maps = await _database!.query("favorites");
    return List.generate(maps.length, (i) {
      return Favorites(
        no: maps[i]['no'],
      );
    });
  }

  Future<int> deleteFavorite(int no) async {
    await openDb();
    return await _database!
        .delete("favorites", where: "no = ?", whereArgs: [no]);
  }

  Future<bool> isFavorite(int no) async {
    await openDb();
    var queryResult =
        await _database!.rawQuery('SELECT * FROM favorites WHERE no="$no"');
    return queryResult.isNotEmpty;
  }
}

class Favorites {
  int no;

  Favorites({
    required this.no,
  });
  Map<String, dynamic> toMap() {
    return {
      'no': no,
    };
  }

  void toggleShown() {
    int i = 0;
    QuestionsAnswers.questionsList[i - 1]["shown"] =
        !QuestionsAnswers.questionsList[i - 1]["shown"];
  }
}
