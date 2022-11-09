package com.example.todo;

import java.util.ArrayList;
import java.util.UUID;


public class TaskStorage {
    private static final TaskStorage taskStorage = new TaskStorage();

    private final ArrayList<Task> tasks;

    public static TaskStorage getInstance() {
        return taskStorage;
    }

    private TaskStorage() {
        this.tasks = new ArrayList<>();
        for (int i = 1; i<=120; i++) {
            Task task = new Task();
            task.setName("Pilne zadanie #" + i);
            task.setDone(i % 3 == 0);
            if (i % 3 == 0 && i % 2 != 0) {
                task.setCategory(Category.STUDIES);
            } else if (i % 3 == 0 && i % 2 == 0) {
                task.setCategory(Category.WORK);
            } else {
                task.setCategory(Category.HOME);
            }
            tasks.add(task);
        }
    }

    public ArrayList<Task> getTasks() {
        return tasks;
    }

    public Task getTask(UUID index) {
        Task task = null;
        for (int i = 0; i < tasks.size(); i++) {
            if (tasks.get(i).getId().compareTo(index) == 0 ) {
                task = tasks.get(i);
            }
        }
        return task;
    }



    public void addTask(Task task) {
        tasks.add(task);
    }
}
