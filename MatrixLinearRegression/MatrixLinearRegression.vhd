library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package newtype is
    -- Definindo o tipo de array para as matrizes e vetores
    type matrix_type is array (1 to 2, 1 to 2) of STD_LOGIC_VECTOR(15 downto 0);
    type vector_type is array (1 to 2) of STD_LOGIC_VECTOR(15 downto 0);
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
		rx_ready_t:OUT	STD_LOGIC;
		tx_busy_t :OUT	STD_LOGIC);										--transmit pin
		
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

    signal rx_data : STD_LOGIC_VECTOR(7 downto 0);
    signal tx_data : STD_LOGIC_VECTOR(7 downto 0);
    signal tx_busy, tx_start, rx_ready : STD_LOGIC;

    -- Sinais para a matriz X e Y
	 signal X, Y, B : matrix_type;
	 signal teste: STD_LOGIC_VECTOR(7 DOWNTO 0);
begin

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
rx_ready_t <= rx_ready;
tx_busy_t <= tx_busy;
    process(clk, rx_ready)
    begin
        if rising_edge(clk) then
            if rx_ready = '1' then
					if tx_busy = '0' then
                teste <= rx_data;
                tx_data <= teste;
                tx_start <= '1';
					 end if;
            else
                tx_start <= '0';
            end if;
        end if;
    end process;

end Behavioral;