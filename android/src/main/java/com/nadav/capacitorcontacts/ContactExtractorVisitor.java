package com.nadav.capacitorcontacts;

import android.database.Cursor;
import com.getcapacitor.JSObject;
import com.nadav.capacitorcontacts.contentQuery.ContentQueryService;
import com.nadav.capacitorcontacts.utils.Visitor;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ContactExtractorVisitor implements Visitor<Cursor> {

    private Map<String, String> projectionMap;

    private List<JSObject> contacts = new ArrayList<>();

    public ContactExtractorVisitor(Map<String, String> projectionMap) {
        this.projectionMap = projectionMap;
    }

    @Override
    public void visit(Cursor cursor) {
        JSObject contact = ContentQueryService.extractDataFromResultSet(cursor, projectionMap);
        contacts.add(contact);
    }

    public List<JSObject> getContacts() {
        return contacts;
    }

}
