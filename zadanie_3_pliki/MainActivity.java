package com.example.todo;

import androidx.fragment.app.Fragment;

import java.util.UUID;

public class MainActivity extends SingleFragmentAcivity {

    @Override
    protected Fragment createFragment() {

        UUID taskId = (UUID) getIntent().getSerializableExtra(TaskListFragment.KEY_EXTRA_TASK_ID);

        return TaskFragment.newInstance(taskId);
    }
}