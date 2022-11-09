package com.example.todo;

import androidx.fragment.app.Fragment;

public class TaskListActivity extends SingleFragmentAcivity {

    @Override
    protected Fragment createFragment() {
        return new TaskListFragment();
    }
}