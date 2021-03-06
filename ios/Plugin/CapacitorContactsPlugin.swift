import Foundation
import Capacitor
import ContactsUI

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorContactsPlugin)
public class CapacitorContactsPlugin: CAPPlugin, CNContactPickerDelegate {
    private let implementation = CapacitorContacts()

    var vc: CNContactPickerViewController?
    var id: String?

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func open(_ call: CAPPluginCall) {
        id = call.callbackId
        call.keepAlive = true
        DispatchQueue.main.async {
            self.vc = CNContactPickerViewController()
            self.vc!.delegate = self
            self.bridge?.viewController?.present(self.vc!, animated: true, completion: nil)
        }
    }
    
    func makeContact(_ contact: CNContact) -> JSObject {
        var res = JSObject()
        res["identifier"] = contact.identifier;
        res["givenName"] = contact.givenName;
        res["familyName"] = contact.familyName;
        res["nickname"] = contact.nickname;
        res["jobTitle"] = contact.jobTitle;
        res["departmentName"] = contact.departmentName;
        res["organizationName"] = contact.organizationName;
        res["note"] = contact.note;
        res["phoneNumbers"] = contact.phoneNumbers.map { $0.value.stringValue }
        res["emailAddresses"] = contact.emailAddresses.map { $0.value }
        return res
    }

    public func contactPicker(_ picker: CNContactPickerViewController, didSelect contact: CNContact) {
        picker.dismiss(animated: true, completion: nil)
        let call = self.bridge!.savedCall(withID: self.id!)
        if (call != nil) {
            call!.resolve([
                "value": makeContact(contact)
            ])
        }
    }

    public func contactPickerDidCancel(_ picker: CNContactPickerViewController) {
        picker.dismiss(animated: true, completion: nil)
    }
}
