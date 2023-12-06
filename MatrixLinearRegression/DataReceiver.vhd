library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MatrixPackage.all;
use work.FixedPointOperations.all;

entity DataReceiver is
    port(
        rx_ready : in std_logic;
        rx_data : in std_logic_vector(7 downto 0);
        reset : in std_logic;
        X : out matrix_type;
        Y : out matrix_type
    );
end DataReceiver;

architecture Behavioral of DataReceiver is
    -- Declaração de sinais internos
    signal Xr, Yr : matrix_type;
begin
    -- Processo para tratamento de dados recebidos
    receive_data: process(rx_ready, reset)
        variable i, j, z, index: integer := 1;
		  variable byte_index: integer := NUMBER_BITS_WIDTH/8 - 1;
		  variable data: std_logic_vector(NUMBER_BITS_WIDTH - 1 downto 0);
    begin
        if reset = '0' then
            -- Inicializa as matrizes e variáveis
            Yr <= (others => (others => (others => '0')));
            Xr <= (others => (others => (others => '0')));
            i := 1; j := 1; z := 1; index := 1;
				byte_index := NUMBER_BITS_WIDTH/8 - 1;
        else
            if rx_ready'EVENT AND rx_ready = '1' then
					 data(byte_index*8+7 downto byte_index*8) := rx_data;
                byte_index := byte_index - 1;
					 if byte_index < 0 then
						 byte_index := NUMBER_BITS_WIDTH/8 - 1;
						 -- Armazena os dados recebidos nas matrizes Xr e Yr
						 if index mod (COLUMNS_LENGTH + 1) = 0 then
							  Yr(z,1) <= data;
							  z := z + 1;
							  if z > LINES_LENGTH then
									z := 1;
							  end if;
						 else
							  Xr(i,j) <= data;
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
                    X(i,j) <= Xr(i,j);
                    if j = 1 then
                        Y(i,j) <= Yr(i,j);
                    else
                        Y(i,j) <= (others => '0');
                    end if;
                end loop;
            end loop;
        end if;
    end process covertion_to_fixed;
end architecture;
