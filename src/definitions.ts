export interface CapacitorContactsPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
