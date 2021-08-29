import { WebPlugin } from '@capacitor/core';

import type { CapacitorContactsPlugin, Contact } from './definitions';

export class CapacitorContactsWeb
  extends WebPlugin
  implements CapacitorContactsPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
  async open(): Promise<{ value: Contact | null }> {
    console.log('Capacitor contacts plugin not supported in web');
    return {value: null};
  }
}
