import { WebPlugin } from '@capacitor/core';

import type { FontosCapacitorBrowserPlugin } from './definitions';

export class FontosCapacitorBrowserWeb
  extends WebPlugin
  implements FontosCapacitorBrowserPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
