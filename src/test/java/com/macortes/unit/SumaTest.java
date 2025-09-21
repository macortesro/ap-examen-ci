package com.macortes.unit;

import org.junit.jupiter.api.Test;

import com.macortes.App;

import static org.junit.jupiter.api.Assertions.*;

class SumaTest {

    @Test
    void suma_dos_positivos() {
        assertEquals(7, App.suma(3, 4));
    }

    @Test
    void suma_con_cero() {
        assertEquals(5, App.suma(5, 0));
    }
}
