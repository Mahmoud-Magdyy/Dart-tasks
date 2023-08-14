

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui/cubit/sql_state.dart';
import 'package:flutter_ui/task_model.dart';
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

      '''

);
      
        }
        
      );
      // dataInsert();
      getDataDb();
      
      print('done');
    }
    catch(e){
      print(e);
    }
  }


  void dataInsert()async{
    await db.rawInsert(
      '''
        insert into Tasks(title, note,date) values ('flutter','sqlflite','8/8')
      '''
    ).then((value) => {
      print('data success + $value')
    });
  }

  void getDataDb()async{
    List<Map<String, Object?>> data= await db.rawQuery(
      '''
      select * from Tasks
      '''
    );
  List<TaskModel>taskList=  data.map((e) => TaskModel.fromJsom(e)).toList();

    print(taskList[0].title);
    print('geted');
  }
}
