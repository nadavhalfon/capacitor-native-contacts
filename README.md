# capacitor-native-contacts

Capacitor plugin for picking contact from native contacts list

## Install

```bash
npm install capacitor-native-contacts
npx cap sync
```

## API

<docgen-index>

* [`echo(...)`](#echo)
* [`open()`](#open)
* [Interfaces](#interfaces)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### echo(...)

```typescript
echo(options: { value: string; }) => any
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ value: string; }</code> |

**Returns:** <code>any</code>

--------------------


### open()

```typescript
open() => any
```

**Returns:** <code>any</code>

--------------------


### Interfaces


#### Contact

| Prop                   | Type                |
| ---------------------- | ------------------- |
| **`identifier`**       | <code>string</code> |
| **`givenName`**        | <code>string</code> |
| **`familyName`**       | <code>string</code> |
| **`nickname`**         | <code>string</code> |
| **`jobTitle`**         | <code>string</code> |
| **`departmentName`**   | <code>string</code> |
| **`organizationName`** | <code>string</code> |
| **`note`**             | <code>string</code> |
| **`phoneNumbers`**     | <code>{}</code>     |
| **`emailAddresses`**   | <code>{}</code>     |

</docgen-api>
