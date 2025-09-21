package com.macortes.integration;

import com.macortes.App;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class IntegrationTest {

    @Test
    void sumaYresta_combinadas() {
        int suma = App.suma(10, 5);   // 15
        int resta = App.resta(suma, 3); // 12
        assertEquals(12, resta);
    }
}
