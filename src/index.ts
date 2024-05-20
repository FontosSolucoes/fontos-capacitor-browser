import { registerPlugin } from '@capacitor/core';

import type { FontosCapacitorBrowserPlugin } from './definitions';

const FontosCapacitorBrowser = registerPlugin<FontosCapacitorBrowserPlugin>('FontosCapacitorBrowser', {
  web: () => import('./web').then(m => new m.BrowserWeb()),
});

export * from './definitions';
export { FontosCapacitorBrowser };
