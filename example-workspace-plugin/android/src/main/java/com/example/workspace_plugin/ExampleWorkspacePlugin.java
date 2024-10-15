package com.example.workspace_plugin;

import android.util.Log;

public class ExampleWorkspacePlugin {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }
}
