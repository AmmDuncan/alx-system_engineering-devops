#!/usr/bin/python3
"""
Script to gather data from an API
"""
import sys
import requests


def main():
    BASE_URL = "https://jsonplaceholder.typicode.com/"
    TODOS_URL = BASE_URL + "todos?userId={userId}"
    USER_URL = BASE_URL + "users/{userId}"
    employee_id = sys.argv[1]
    user = requests.get(USER_URL.format(userId=employee_id)).json()
    todos = requests.get(TODOS_URL.format(userId=employee_id)).json()
    completed_tasks = [*filter(lambda t: t['completed'], todos)]

    name = user['name']
    num_of_completed_tasks = len(completed_tasks)
    num_of_tasks = len(todos)

    print(
        f"Employee {name} is done with " +
        "tasks({num_of_completed_tasks}/{num_of_tasks})"
    )
    for task in completed_tasks:
        print(f"\t {task.get('title')}")


if __name__ == "__main__":
    main()
