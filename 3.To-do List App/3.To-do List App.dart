import "dart:io";

void main(){
  var tasks = <String>[]; // Creates an empty List of String data-type
  var file = File("tasks.txt"); // Path to the file using File Class
  if(file.existsSync()){
    tasks = file.readAsLinesSync(); // If the file exists then write the contents to tasks Lists. Each Line becomes an element of the List.
  }

  while(true){ // Iterates until return.
    stdout.write("Enter a Command (Add/View/Delete/Exit) : ");
    var command = stdin.readLineSync()?.toLowerCase().trim(); // If the input is not null the convert it to LowerCase and Trim all the Whitespaces Left and Right.

    switch(command){
      case 'add':
        stdout.write("Enter a Task : ");
        var task = stdin.readLineSync();

        if(task != null){
          tasks.add(task);  // add an element to the List
          print("Task added.");
        }else{
          print("No task added.");
        }
        break;

      case 'view':
        print("Tasks : ");
        for(var i = 0 ; i < tasks.length ; i++){ // Iterating through a List
          print("$i. ${tasks[i]}");
        }
        break;

      case 'delete':
        stdout.write("Enter index of task to delete : ");
        var index = int.tryParse(stdin.readLineSync() ?? "");

        if(index == null){
          print("Do not play with me. Okay?!");
          break;
        }
        if(index >= 0 && index < tasks.length){
          tasks.removeAt(index);  // Removes an element at the specific index in List
        }else{
          print("Do not play with me. Okay?!");
        }
        break;

      case 'exit':
        print("Application Closed.");
        file.writeAsStringSync(tasks.join('\n')); // Write contents of List to the File by Iterating through each element and converts them to String and joining by a new line
        return; // Works As a Loop terminator

      default :
        print("Invalid Command");
        break;
    }
  }
}