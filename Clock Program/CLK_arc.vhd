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
			clk : in std_logic;																			-- Entrada de reloj
			clr : in std_logic;																			-- Entrada de clear (para resetear)

			-- Salidas
			HH_0 : out std_logic_vector(6 downto 0);			-- Display HEX0 de 0x a 2x horas
			HH_1 : out std_logic_vector(6 downto 0);			-- Display HEX1 de x0 a x9 horas
         MM_0 : out std_logic_vector(6 downto 0);			-- Display HEX2 de 0x a 5x minutos
         MM_1 : out std_logic_vector(6 downto 0);			-- Display HEX3 de x0 a x9 minutos
         SS_0 : out std_logic_vector(6 downto 0);				-- Display HEX4 de 0x a 5x segundos
         SS_1 : out std_logic_vector(6 downto 0);				-- Display HEX5 de x0 a x9 segundos
			LEDG8 : out std_logic															-- LED verde que enciende cada segundo
		);
	end entity;

-- *:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧
-- 		Declaración de la arquitectura
-- *:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧*:･ﾟ✧
	architecture Reloj of Pract2_reloj is
		-- Variables auxiliares internas
		signal counter : integer range 0 to 1 : = 0;					-- Para incrementar o decrementar en 1 cada pulso de reloj
		signal segundero : std_logic := "0";									-- Señal para pasar al LED de salida LEDG8
		
		constant clk_freq : integer := 100_000_000; 			-- Frecuencia del reloj de entrada (por ejemplo, 100 MHz)
		constant div_freq : integer := clk_freq - 1; 					-- Valor del divisor para 1 Hz
		
		-- Asignación de segmentos para display
		constant cero:		std_logic_vector(6 downto 0) := "1000000";		-- Constante para 0 en display
		constant uno:		std_logic_vector(6 downto 0) := "1111001";		-- Constante para 1 en display
		constant dos:		std_logic_vector(6 downto 0) := "0100100";		-- Constante para 2 en display
		constant tres:		std_logic_vector(6 downto 0) := "0110000";		-- Constante para 3 en display
		constant cuatro:	std_logic_vector(6 downto 0) := "0011001";		-- Constante para 4 en display
		constant cinco:	std_logic_vector(6 downto 0) := "0010010";		-- Constante para 5 en display
		constant seis:		std_logic_vector(6 downto 0) := "0000010";		-- Constante para 6 en display
		constant siete:		std_logic_vector(6 downto 0) := "0111000";		-- Constante para 7 en display
		constant ocho:		std_logic_vector(6 downto 0) := "0000000";		-- Constante para 8 en display
		constant nueve:	std_logic_vector(6 downto 0) := "0011000";		-- Constante para 9 en display
		constant N_D:		std_logic_vector(6 downto 0) := "0111111";		-- Constante para - en display
		
		-- Declaración del proceso
		begin	-- Main de la arquitectura
		process(clk, clr)													-- En la lista sensible van las entradas
			begin	-- Inicio del proceso
				if (clr = '1') then											-- Para resetear el reloj
					counter <= 0;
					segundero <= 0;
				elsif (rising_edge(clk)) then				-- Es lo mismo que (clk'event and clk = '1'), pero asegura que ocurra únicamente cuando clk cambie de 0 a 1
					if (counter = div_freq) then
						segundero <= not segundero;
						counter <= (others => '0');
					else
						counter <= counter + 1;
					end if;
				end if;
			end process;
	end architecture;
