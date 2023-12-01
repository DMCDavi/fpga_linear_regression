library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package newtype is
    -- Definindo o tipo de array para as matrizes e vetores
    type matrix_type is array (1 to 2, 1 to 2) of STD_LOGIC_VECTOR(7 downto 0);
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
		init_transmission: IN STD_LOGIC;
		rx			:	IN		STD_LOGIC;										--receive pin
		tx			:	OUT	STD_LOGIC;
		digit : OUT STD_LOGIC_VECTOR(7 downto 0));										--transmit pin
		
end MatrixLinearRegression;

architecture Behavioral of MatrixLinearRegression is
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
			tx_done : OUT STD_LOGIC;
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
    signal tx_busy, rx_ready, tx_ena, new_clk, tx_done : STD_LOGIC;

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
        tx_busy => tx_busy,
		  tx_done => tx_done,
		  tx_ena => tx_ena
    );
	 
	 p1: process(rx_data, rx_ready)
		variable i, j, z, index: integer := 1;
	 begin
		if rx_ready'EVENT AND rx_ready = '1' then
			if index mod 3 = 0 then
				Y(z,1) <= rx_data;
				z := z + 1;
				if z > 2 then
					z := 1;
				end if;
			else
				X(i,j) <= rx_data;
				j := j + 1;
				if j > 2 then
					j := 1;
					i := i + 1;
				end if;
				
				if i > 2 then
					i := 1;
					j := 1;
				end if;
			end if;
			index := index + 1;
		end if;

	 end process p1;
	 
	 mo: MatrixOperations port map(
			  X => X,
			  Y => Y,
			  B => B
		  );
	
	 p2: process(new_clk, B)
		variable i, j: integer := 1;
	 begin
		if rising_edge(new_clk) then
			digit <= B(i,j);
				j := j + 1;
				if j > 2 then
					j := 1;
					i := i + 1;
				end if;
				
				if i > 2 then
					i := 1;
					j := 1;
				end if;		
		end if;
	 end process p2;
	 
	 p3: process
		variable i, j: integer := 1;
	 begin
		tx_ena <= '1';
	 wait until tx_done = '1';
			tx_data <= B(i,j);
				j := j + 1;
				if j > 2 then
					j := 1;
					i := i + 1;
				end if;
				
				if i > 2 then
					i := 1;
					j := 1;
				end if;	
    end process p3;
	
end Behavioral;