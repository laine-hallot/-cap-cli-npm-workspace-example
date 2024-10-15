import { WebPlugin } from '@capacitor/core';

import type { ExampleWorkspacePluginPlugin } from './definitions';

export class ExampleWorkspacePluginWeb extends WebPlugin implements ExampleWorkspacePluginPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
