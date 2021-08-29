import { WebPlugin } from '@capacitor/core';

import type { CapacitorContactsPlugin } from './definitions';

export class CapacitorContactsWeb
  extends WebPlugin
  implements CapacitorContactsPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
