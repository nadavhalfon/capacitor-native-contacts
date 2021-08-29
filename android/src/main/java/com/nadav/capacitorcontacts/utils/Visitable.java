package com.nadav.capacitorcontacts.utils;

public interface Visitable<T> {

    void accept(Visitor<T> visitor);
}
