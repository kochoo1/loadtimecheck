void main() {
  print("=== LOAD TIME CHECK ===");

  int taskCount = 1000000;
  double averageTime = 2.5;
  String taskName = "Simulated Processing";
  bool isFast = true;

  DateTime startTime = DateTime.now();

  for (int i = 0; i < taskCount; i++) {}

  DateTime endTime = DateTime.now();

  Duration loadTime = endTime.difference(startTime);
  int loadTimeMs = loadTime.inMilliseconds;

  int remainingTasks = taskCount - 500000;
  int taskGroups = taskCount ~/ 1000;
  int remainder = taskCount % 1000;

  bool isWithinLimit = loadTimeMs < 1000;

  print("Task Name: $taskName");
  print("Task Count: $taskCount");
  print("Average Time: $averageTime ms");
  print("Is Fast: $isFast");

  print("Start Time: $startTime");
  print("End Time: $endTime");
  print("Load Time: $loadTimeMs ms");

  print("Remaining Tasks: $remainingTasks");
  print("Task Groups: $taskGroups");
  print("Remainder: $remainder");
  print("Load Time Under 1 Second: $isWithinLimit");
}
