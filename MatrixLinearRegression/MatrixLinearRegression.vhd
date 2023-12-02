library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.MatrixPackage.all;
use work.FixedPointOperations.all;

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
            B : out matrix_type    -- Resultado vetor B
        );
    end component;

    -- Sinais usados no design
    signal rx_data : STD_LOGIC_VECTOR(7 downto 0);
    signal tx_data : STD_LOGIC_VECTOR(7 downto 0);
    signal tx_busy, rx_ready, tx_ena, new_clk, tx_done : STD_LOGIC;

    -- Sinais para as matrizes X, Y e B
    signal X, Xr, Y, Yr, B : matrix_type;
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

    -- Processo para tratamento de dados recebidos
    receive_data: process(rx_ready, reset)
        variable i, j, z, index: integer := 1;
    begin
        if reset = '0' then
            -- Inicializa as matrizes e variáveis
            Yr <= (others => (others => (others => '0')));
            Xr <= (others => (others => (others => '0')));
            i := 1; j := 1; z := 1; index := 1;
        else
            if rx_ready'EVENT AND rx_ready = '1' then
                -- Armazena os dados recebidos nas matrizes Xr e Yr
                if index mod (COLUMNS_LENGTH + 1) = 0 then
                    Yr(z,1) <= std_logic_vector(resize(signed(rx_data), NUMBER_BITS_WIDTH));
                    z := z + 1;
                    if z > LINES_LENGTH then
                        z := 1;
                    end if;
                else
                    Xr(i,j) <= std_logic_vector(resize(signed(rx_data), NUMBER_BITS_WIDTH));
                    j := j + 1;
                    if j > COLUMNS_LENGTH then
                        j := 1;
                        i := i + 1;
                    end if;

                    if i > LINES_LENGTH then
                        i := 1;
                        j := 1;
                    end if;
                end if;
                index := index + 1;
            end if;
        end if;
    end process receive_data;

    -- Processo para conversão de dados para o formato de ponto fixo
    covertion_to_fixed: process(Xr, Yr, reset)
    begin
        if reset = '0' then
            -- Inicializa as matrizes X e Y
            Y <= (others => (others => (others => '0')));
            X <= (others => (others => (others => '0')));
        else
            -- Converte e armazena os dados em ponto fixo
            for i in 1 to LINES_LENGTH loop
                for j in 1 to COLUMNS_LENGTH loop
                    X(i,j) <= to_fixed_point_std(Xr(i,j));
                    if j = 1 then
                        Y(i,j) <= to_fixed_point_std(Yr(i,j));
                    else
                        Y(i,j) <= (others => '0');
                    end if;
                end loop;
            end loop;
        end if;
    end process covertion_to_fixed;

    -- Instância do componente de operações de matriz
    mo: MatrixOperations port map(
        X => X,
        Y => Y,
        B => B
    );

    -- Habilita a transmissão quando não estiver em transmissão inicial
    tx_ena <= not init_transmission;

    -- Processo para enviar dados através do UART
    send_results: process
        variable i, j: integer := 1;
    begin
        wait until tx_done = '1';
        tx_data <= B(i,j)(7 downto 0);
        j := j + 1;
        if j > COLUMNS_LENGTH then
            j := 1;
            i := i + 1;
        end if;

        if i > LINES_LENGTH then
            i := 1;
            j := 1;
        end if;	
    end process send_results;

end Behavioral;
