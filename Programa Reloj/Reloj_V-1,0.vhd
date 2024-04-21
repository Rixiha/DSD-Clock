-- Practica 2 DSD - Reloj
-- Autores: Olvera Olvera Oliver Jesus
-- Fecha: 2024-04-21
-- Versión: 1.0

    -- ========================================================================
    --              Declaración de la librería y paquetes a utilizar
    -- ========================================================================

    library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.NUMERIC_STD.ALL;

    -- ========================================================================
    --                         Declaración de la entidad
    -- ========================================================================
    entity Reloj is
        Port (
            CLK : in STD_LOGIC;
            RST : in STD_LOGIC;
            LED : out STD_LOGIC_VECTOR (3 downto 0)
        );
    end Reloj;