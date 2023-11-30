library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package newtype is
    -- Definindo o tipo de array para as matrizes e vetores
    type matrix_type is array (1 to 2, 1 to 2) of STD_LOGIC_VECTOR(7 downto 0);
    type vector_type is array (1 to 2) of STD_LOGIC_VECTOR(7 downto 0);
	 type int_matrix_type is array (1 to 2, 1 to 2) of integer;
end newtype;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.newtype.all;

entity MatrixLinearRegression is
	PORT(
		clk		:	IN		STD_LOGIC;										--system clock
		reset		:	IN		STD_LOGIC;										--ascynchronous reset
		rx			:	IN		STD_LOGIC;										--receive pin
		tx			:	OUT	STD_LOGIC;
		digit : OUT STD_LOGIC_VECTOR(6 downto 0));										--transmit pin
		
end MatrixLinearRegression;

architecture Behavioral of MatrixLinearRegression is
	TYPE segment_array IS ARRAY(0 TO 9) OF STD_LOGIC_VECTOR(6 DOWNTO 0); -- Define um tipo de array para representar segmentos.
	CONSTANT segments: segment_array := (       -- Define constantes para representação de segmentos dos números de 0 a 9.
		"0000001", -- 0
		"1001111", -- 1
		"0010010", -- 2
		"0000110", -- 3
		"1001100", -- 4
		"0100100", -- 5
		"0100000", -- 6
		"0001111", -- 7
		"0000000", -- 8
		"0000100"  -- 9
	);

    -- Adicionando o componente SerialUartCommunication
    component SerialUartCommunication
        Port (
			clk		:	IN		STD_LOGIC;										--system clock
			reset_n	:	IN		STD_LOGIC;										--ascynchronous reset
			tx_ena	:	IN		STD_LOGIC;										--initiate transmission
			tx_data	:	IN		STD_LOGIC_VECTOR(7 DOWNTO 0);  --data to transmit
			rx			:	IN		STD_LOGIC;										--receive pin
			rx_busy, rx_ready, os_pulse_out	:	OUT	STD_LOGIC;										--data reception in progress
			rx_error	:	OUT	STD_LOGIC;										--start, parity, or stop bit error detected
			rx_data	:	OUT	STD_LOGIC_VECTOR(7 DOWNTO 0);	--data received
			tx_busy	:	OUT	STD_LOGIC;  									--transmission in progress
			tx			:	OUT	STD_LOGIC
        );
    end component;
	 
	 component MatrixOperations
        Port (
			  X : in matrix_type;   -- Matriz X
			  Y : in matrix_type;   -- Vetor Y
			  B : out matrix_type   -- Resultado vetor B
		  );
    end component;
	 
	 component FrequencyDivider is
		 port (
			  clk: IN STD_LOGIC;
			  div_out: OUT STD_LOGIC
		 );
	end component;

    signal rx_data : STD_LOGIC_VECTOR(7 downto 0);
    signal tx_data : STD_LOGIC_VECTOR(7 downto 0);
    signal tx_busy, tx_start, rx_ready, new_clk : STD_LOGIC;

    -- Sinais para a matriz X e Y
	 signal X, Y, B : matrix_type;
	 signal teste: STD_LOGIC_VECTOR(7 DOWNTO 0);
begin

    freq: FrequencyDivider port map(
        clk => clk,
		  div_out => new_clk
    );

    uart_comm: SerialUartCommunication port map(
        clk => clk,
		  reset_n => reset,
        rx => rx,
        tx => tx,
        rx_data => rx_data,
        tx_data => tx_data,
        rx_ready => rx_ready,
        tx_ena => tx_start,
        tx_busy => tx_busy
    );
	 
	 p1: process(rx_data, rx_ready)
		variable counter: integer := 1;
	 begin
		if rx_ready'EVENT AND rx_ready = '1' and counter <= 2 then
			X(1,counter) <= rx_data;
			counter := counter + 1;
		end if;
		
		if counter > 2 then
			counter := 1;
		end if;
	 end process p1;
	 
	 p2: process(new_clk, X)
		variable counter: integer := 1;
	 begin
		if rising_edge(new_clk) then
			digit <= segments(to_integer(unsigned(X(1,counter)(3 downto 0))));
			counter := counter + 1;
		end if;
				if counter > 2 then
			counter := 1;
		end if;
	 end process p2;

	
end Behavioral;