-- Programa reloj 
-- Elaborado por: Mejía Avianeda Avril Paola
-- Fecha: Miércoles de 5 de mayo, 2024

-- *:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧
-- 		Declaración de bibliotecas y paquetes
-- *:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧
	library IEEE;
	use IEEE.std_logic_1164.all;

-- *:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧
-- 		Declaración de la entidad
-- *:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧
	entity Pract2_reloj is
		port(
			-- Entradas
			clk, clr : in std_logic;							-- Entradas de reloj y clear (reset)
			inicio : in std_logic; 								-- Estado inicial 00:00:00
			-- Salidas
			HH_0 : out std_logic_vector(6 downto 0);			-- Display HEX0 de 0x a 2x horas
			HH_1 : out std_logic_vector(6 downto 0);			-- Display HEX1 de x0 a x9 horas
            MM_0 : out std_logic_vector(6 downto 0);			-- Display HEX2 de 0x a 5x minutos
            MM_1 : out std_logic_vector(6 downto 0);			-- Display HEX3 de x0 a x9 minutos
            SS_0 : out std_logic_vector(6 downto 0);			-- Display HEX4 de 0x a 5x segundos
            SS_1 : out std_logic_vector(6 downto 0)				-- Display HEX5 de x0 a x9 segundos
		);
	end entity;

-- *:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧
-- 		Declaración de la arquitectura
-- *:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧
	architecture Reloj of Pract2_reloj is
		-- Asignación de segmentos para display
		constant cero:		std_logic_vector(6 downto 0) := "1000000";		-- Constante para 0 en display
		constant uno:		std_logic_vector(6 downto 0) := "1111001";		-- Constante para 1 en display
		constant dos:		std_logic_vector(6 downto 0) := "0100100";		-- Constante para 2 en display
		constant tres:		std_logic_vector(6 downto 0) := "0110000";		-- Constante para 3 en display
		constant cuatro:	std_logic_vector(6 downto 0) := "0011001";		-- Constante para 4 en display
		constant cinco:	    std_logic_vector(6 downto 0) := "0010010";		-- Constante para 5 en display
		constant seis:		std_logic_vector(6 downto 0) := "0000010";		-- Constante para 6 en display
		constant siete:		std_logic_vector(6 downto 0) := "0111000";		-- Constante para 7 en display
		constant ocho:		std_logic_vector(6 downto 0) := "0000000";		-- Constante para 8 en display
		constant nueve:	    std_logic_vector(6 downto 0) := "0011000";		-- Constante para 9 en display
		constant N_D:		std_logic_vector(6 downto 0) := "0111111";		-- Constante para - en display
		
		-- Declaración del proceso
		begin	-- Main de la arquitectura
		process()
			begin	-- Inicio del proceso
			end process;
	end architecture;
