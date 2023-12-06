library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.MatrixPackage.all;

-- Entidade para realizar operações de regressão linear com matrizes
entity MatrixLinearRegression is
    PORT(
        clk               : IN  STD_LOGIC;  -- clock do sistema
        reset             : IN  STD_LOGIC;  -- reset assíncrono
        init_transmission : IN  STD_LOGIC;  -- inicia a transmissão
        rx                : IN  STD_LOGIC;  -- pino de recepção
        tx                : OUT STD_LOGIC   -- pino de transmissão
    );	
end MatrixLinearRegression;

architecture Behavioral of MatrixLinearRegression is
    -- Componente para comunicação serial UART
    component SerialUartCommunication
        Port (
            clk         : IN  STD_LOGIC;  -- clock do sistema
            reset_n     : IN  STD_LOGIC;  -- reset assíncrono
            tx_ena      : IN  STD_LOGIC;  -- iniciar transmissão
            tx_data     : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);  -- dados para transmitir
            rx          : IN  STD_LOGIC;  -- pino de recepção
            rx_busy, rx_ready, os_pulse_out : OUT STD_LOGIC;  -- status da recepção
            rx_error    : OUT STD_LOGIC;  -- erro de recepção detectado
            rx_data     : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);  -- dados recebidos
            tx_busy     : OUT STD_LOGIC;  -- transmissão em progresso
            tx_done     : OUT STD_LOGIC;  -- transmissão finalizada
            tx          : OUT STD_LOGIC
        );
    end component;

    -- Componente para operações de matriz
    component MatrixOperations
        Port (
            X : in  matrix_type;   -- Matriz X
            Y : in  matrix_type;   -- Vetor Y
            B : out matrix_type;    -- Resultado vetor B
			   XTOut : out matrix_type;
			   XTXOut : out matrix_type;
			   InvOut : out matrix_type;
			   XTYOut : out matrix_type
        );
    end component;
	 
	 component DataTransmitter
        port(
			   X : in matrix_type;
			   Y : in matrix_type;
			   B : in matrix_type;
			   XT : in matrix_type;
			   XTX : in matrix_type;
			   Inv : in matrix_type;
			   XTY : in matrix_type;
            tx_done : in std_logic;
            tx_data : out std_logic_vector(7 downto 0)
        );
    end component;
	 
	 component DataReceiver
        port(
            rx_ready : in std_logic;
            rx_data : in std_logic_vector(7 downto 0);
            reset : in std_logic;
            X : out matrix_type;
            Y : out matrix_type
        );
    end component;

    -- Sinais usados no design
    signal rx_data : STD_LOGIC_VECTOR(7 downto 0);
    signal tx_data : STD_LOGIC_VECTOR(7 downto 0);
    signal tx_busy, rx_ready, tx_ena, new_clk, tx_done : STD_LOGIC;

    -- Sinais para as matrizes X, Y e B
    signal X, Xr, Y, Yr, B, XT, XTX, Inv, XTY : matrix_type;
begin
    -- Instância do componente de comunicação UART
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

    dr : DataReceiver
        port map(
            rx_ready => rx_ready,
            rx_data => rx_data,
            reset => reset,
            X => X,
            Y => Y
        );

    -- Instância do componente de operações de matriz
    mo: MatrixOperations port map(
        X => X,
        Y => Y,
        B => B,
		  XTOut => XT,
		  XTXOut => XTX,
		  InvOut => Inv,
		  XTYOut => XTY
    );

    -- Habilita a transmissão quando não estiver em transmissão inicial
    tx_ena <= not init_transmission;

    dt: DataTransmitter
			port map(
				 X => X,
				 Y => Y,
				 B => B,
				 XT => XT,
				 XTX => XTX,
				 Inv => Inv,
				 XTY => XTY,
				 tx_done => tx_done,
				 tx_data => tx_data
			);

end Behavioral;
