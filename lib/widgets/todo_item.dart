import 'package:flutter/material.dart';
import 'package:to_do_list/model/todo.dart';
import '../constants/colors.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.todo, this.onToDoChanged, this.onDeleteItem});
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
      },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(todo.isDone? Icons.check_box : Icons.check_box_outline_blank, color: tdBlue,),
        title: Text(
          todo.todoText,
          style: TextStyle(
            color: tdBlack,
            fontSize: 16,
            decoration: todo.isDone? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              onDeleteItem(todo);
            },
          ),
        ),
      ),
    );
  }
}
