#!/bin/bash
display_menu()
{
    echo "1. View all tasks"
    echo "2. Add a new task"
    echo "3. Delete a task"
    echo "4. Exit the program"
    echo
}
[ ! -f ~/todo.txt ] && touch ~/todo.txt

option=0
while [ $option -ne 4 ]; do
display_menu
read -p "Tell your menu option by typing 1, 2, 3 or 4: " option_str
echo
 if [[ $option_str -ne "1" && $option_str -ne "2" && $option_str -ne "3" && $option_str -ne "4" ]]; then
 {
    echo "This option is not available"
 }
 else 
 {
    option=$((option_str))
    if [[ $option -eq 1 ]]; then #here we read the numbered tasks
    {
      nl -w2 -s'. ' ~/todo.txt
    }
    elif [[ $option -eq 2 ]]; then #here we add a new task
    {
        read -p "Add your new task " new_task
        echo "$new_task" >> ~/todo.txt
        echo "Your task has been added successfully"
    }
    elif [[ $option -eq 3 ]]; then #here we delete a task 
    {
        read -p "Type the number of the task to delete " line_to_delete
        sed -i "${line_to_delete}d" ~/todo.txt
        echo "Your task has been deleted successfully"
    }
    else #here we exit
    {
        exit
    }
    fi
    echo
 }
fi
done





