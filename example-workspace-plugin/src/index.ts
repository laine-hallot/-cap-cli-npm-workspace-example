import { registerPlugin } from '@capacitor/core';

import type { ExampleWorkspacePluginPlugin } from './definitions';

const ExampleWorkspacePlugin = registerPlugin<ExampleWorkspacePluginPlugin>('ExampleWorkspacePlugin', {
  web: () => import('./web').then((m) => new m.ExampleWorkspacePluginWeb()),
});

export * from './definitions';
export { ExampleWorkspacePlugin };
