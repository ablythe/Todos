TODO one of three.

First version of a TODO list manager that is run only through a command line.

Was written as practice with mySQL and sqlite3.

Allows a user to create a task list and then add taks to the list. Can mark tasks as done, can set due dates, and can view and sort tasks by due dates and completion.

Accepts the following commands
ruby todo add "LISTNAME" "TASK NAME"

ruby todo due "TASK NAME" "DUE_DATE"

ruby todo done "TASK NAME" 

ruby todo list  all #lists all tasks

ruby todo list "LIST NAME"  #lists all tasks in that list

ruby todo next # shows a random incomplete task

ruby search "SEARCH STRING" # searches for a task with that string.