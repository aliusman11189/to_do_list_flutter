class ToDo{
  String? id;
  String todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false
  });

  static List<ToDo> todoList(){
    return [
      ToDo(id: '01', todoText: 'Create the sample project in Deno & React', isDone: true),
      ToDo(id: '02', todoText: 'Create the sample project in Deno & React'),
      ToDo(id: '03', todoText: 'Create the sample project in Deno & React', isDone: true),
      ToDo(id: '04', todoText: 'Create the sample project in Deno & React'),
      ToDo(id: '05', todoText: 'Create the sample project in Deno & React', isDone: true),
      ToDo(id: '06', todoText: 'Create the sample project in Deno & React'),
      ToDo(id: '07', todoText: 'Create the sample project in Deno & React'),
    ];
  }
}