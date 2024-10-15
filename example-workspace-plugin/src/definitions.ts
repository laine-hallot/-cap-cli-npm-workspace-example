export interface ExampleWorkspacePluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
