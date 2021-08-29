export interface CapacitorContactsPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  open(): Promise<Contact[]>;
}

export interface Contact {
  identifier?: string;
  givenName?: string;
  familyName?: string;
  nickname?: string;
  jobTitle?: string;
  departmentName?: string;
  organizationName?: string;
  note?: string;
  phoneNumbers: string[];
  emailAddresses: string[]
}

export const ERROR_NO_PERMISSION = "User denied permission";