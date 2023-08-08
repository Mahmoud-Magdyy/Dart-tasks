

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/cubit/sql_state.dart';
import 'package:sqflite/sqflite.dart';

class SqlCubit extends Cubit<SqlState> {
  SqlCubit() : super(SqlInitial());

  late Database db;

  void createDatabase()async{
    try {
      db = await openDatabase(
        'Todoapp.db',
        version: 1,
        onCreate: (Database db,int v){
          db.execute('''
          create table Tasks(
            id integer primary key,
            title text ,
            note text,
            date text
          )

      ''');
      print('done');
        }
        
      );
    }
    catch(e){
      print(e);
    }
  }


  // void dataInsert(){
  //   db.rawInsert()
  // }
}
