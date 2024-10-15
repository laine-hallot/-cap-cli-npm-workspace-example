package com.example.workspace_plugin;

import android.util.Log;

public class ExampleWorkspacePlugin {

    public String echo(String value) {
        Log.i("Im a workspace plugin - Echo", value);
        return value;
    }
}
