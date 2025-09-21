package com.macortes;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class RestaTest {

    @Test
    void resta_dos_numeros() {
        assertEquals(1, App.resta(5, 4));
    }

    @Test
    void resta_resultado_negativo() {
        assertEquals(-3, App.resta(2, 5));
    }
}
