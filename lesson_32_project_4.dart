// 1-implement getAllCompletedTask
// 2-implement getAllMatchPriority ; mean you will pass the priority
// 3-implement findTask by id
// 4-implement findTask by title
// 5-implement getOnlyTaskTitle=>["Buy groceries,Finish coding project"]
// 6-implement toggleTheTaskCompletion
// 7-implement updateTheRepeatedTask
// 8-implement addNewTask

// New methods to do
// 9-implement searchByName
// 10-implement removeTaskById

enum TaskPriority {
  Low,
  Medium,
  High,
}

List<Map<String, dynamic>> tasks = [
  {
    'id': 1,
    'title': 'Buy groceries',
    'description': 'Milk, eggs, bread, and vegetables',
    'priority': TaskPriority.High,
    'dueDate': '2023-08-15',
    'isCompleted': false,
    "repeated": 1,
  },
  {
    'id': 2,
    'title': 'Finish coding project',
    'description': 'Complete the user interface',
    'priority': TaskPriority.Medium,
    'dueDate': '2023-08-20',
    'isCompleted': false,
    "repeated": 2,
  },
  {
    'id': 3,
    'title': 'Go for a run',
    'description': 'Run for 30 minutes in the park',
    'priority': TaskPriority.Low,
    'dueDate': '2023-08-12',
    'isCompleted': true,
  },
  {
    'id': 4,
    'title': 'Read a book',
    'description': 'Start reading "The Great Gatsby"',
    'priority': TaskPriority.Medium,
    'dueDate': '2023-08-18',
    'isCompleted': false,
  },
  {
    'id': 5,
    'title': 'Prepare presentation',
    'description': 'Gather data and create slides for the presentation',
    'priority': TaskPriority.Low,
    'dueDate': '2023-08-25',
    'isCompleted': false,
  },
  {
    'id': 6,
    'title': 'Call mom',
    'description': 'Check up on mom and discuss weekend plans',
    'priority': TaskPriority.High,
    'dueDate': '2023-08-14',
    'isCompleted': true,
  },
  {
    'id': 7,
    'title': 'Clean the garage',
    'description': 'Organize and clean the garage space',
    'priority': TaskPriority.Medium,
    'dueDate': '2023-08-17',
    'isCompleted': false,
  },
  {
    'id': 8,
    'title': 'Write blog post',
    'description': 'Write a blog post about time management techniques',
    'priority': TaskPriority.Low,
    'dueDate': '2023-08-22',
    'isCompleted': false,
  },
  {
    'id': 9,
    'title': 'Attend webinar',
    'description': 'Join the webinar on AI and machine learning',
    'priority': TaskPriority.High,
    'dueDate': '2023-08-16',
    'isCompleted': false,
  },
  {
    'id': 10,
    'title': 'Pay bills',
    'description': 'Pay utility bills and credit card bill',
    'priority': TaskPriority.High,
    'dueDate': '2023-08-14',
    'isCompleted': true,
  },
];

void main() {
  print("Getting all completed tasks:");
  List<Map<String, dynamic>> completedTasks = getAllCompletedTask();
  print(completedTasks);
  print("-" * 5);

  print("Getting all tasks with high priority:");
  List<Map<String, dynamic>> highPriorityTasks =
      getAllMatchPriority(TaskPriority.High);
  print(highPriorityTasks);
  print("-" * 5);

  print("Finding task by ID: Exist");
  Map<String, dynamic> taskById = findTaskById(3);
  print(taskById);
  print("-" * 5);
  print("Finding task by ID: Not Exist");
  Map<String, dynamic> taskById2 = findTaskById(30);
  print(taskById2);
  print("-" * 5);

  print("Finding task by title: Exist");
  Map<String, dynamic> taskByTitle = findTaskByTitle('Buy groceries');
  print(taskByTitle);
  print("-" * 5);
  print("Finding task by title: Not Exist");
  Map<String, dynamic> taskByTitle2 =
      findTaskByTitle('asdasdasdasd Buy groceries');
  print(taskByTitle2);
  print("-" * 5);

  print("Getting only task titles:");
  List<String> taskTitles = getOnlyTaskTitle();
  print(taskTitles);
  print("-" * 5);

  print("Toggling task completion: Exist");
  int taskIdToToggle = 2;
  bool toggled = toggleTheTaskCompletion(taskIdToToggle);
  print(toggled);
  print(tasks);
  print("-" * 5);

  print("Toggling task completion: Not Exist");
  int taskIdToToggle2 = 200;
  bool toggled2 = toggleTheTaskCompletion(taskIdToToggle2);
  print(toggled2);
  print(tasks);
  print("-" * 5);

  print("Updating repeated task: Exist");
  int taskIdToUpdate = 1;
  Map<String, dynamic> updatedTask = updateTheRepeatedTask(taskIdToUpdate);
  print(updatedTask);
  print(tasks);
  print("-" * 5);
  print("Updating repeated task: Exist test 2");
  int taskIdToUpdate2 = 8;
  Map<String, dynamic> updatedTask2 = updateTheRepeatedTask(taskIdToUpdate2);
  print(updatedTask2);
  print(tasks);
  print("-" * 5);

  print("Adding a new task:");
  Map<String, dynamic> newTask = {
    'title': 'Write thank you notes',
    'description': 'Express gratitude to friends and family',
    'priority': TaskPriority.Medium,
    'dueDate': '2023-08-30',
    'isCompleted': false,
    'repeated': 1,
  };
  addNewTask(newTask);
  print(tasks);
  print("-" * 5);

  print("Search Task by title test 1");
  List<Map<String, dynamic>> tasksMatches = searchTaskByName("abc");
  print(tasksMatches);
  print("-" * 5);
  print("Search Task by title test 2");
  List<Map<String, dynamic>> tasksMatches2 = searchTaskByName("Write");
  print(tasksMatches2);
  print("-" * 5);


  print("remove Task by id test1 ");
  removeTaskById(1);
  print(tasks);
  print("-" * 5);
  print("remove Task by id test 2");
  removeTaskById(1);
  print(tasks);
  print("-" * 5);
}

List<Map<String, dynamic>> getAllCompletedTask() {
  return tasks.where((task) => task["isCompleted"]).toList();
}

List<Map<String, dynamic>> getAllMatchPriority(TaskPriority priority) {
  return tasks.where((task) => task["priority"] == priority).toList();
}

Map<String, dynamic> findTaskById(int taskId) {
  return tasks.firstWhere((task) => task["id"] == taskId, orElse: () => {});
}

List<Map<String, dynamic>> searchTaskByName(String searchTerm) {
  return tasks.where((task) => task["title"].contains(searchTerm)).toList();
}

Map<String, dynamic> findTaskByTitle(String title) {
  return tasks.firstWhere((task) => task["title"] == title, orElse: () => {});
}

List<String> getOnlyTaskTitle() {
  return tasks.map((task) => task["title"] as String).toList();
}

bool toggleTheTaskCompletion(int taskId) {
  final keyTask = findTaskById(taskId);
  if (keyTask.isEmpty) return false;
  keyTask.update("isCompleted", (value) => !value, ifAbsent: () => false);
  return true;
}

Map<String, dynamic> updateTheRepeatedTask(int taskId) {
  final keyTask = findTaskById(taskId);
  if (keyTask.isEmpty) return {};
  keyTask.update("repeated", (value) => value + 1, ifAbsent: () => 1);
  return keyTask;
}

void addNewTask(Map<String, dynamic> newTask) {
  newTask["id"] = tasks.length + 1;
  tasks.add(newTask);
}

void removeTaskById(int taskId) {
  tasks.removeWhere((task) => task["id"] == taskId);
}
