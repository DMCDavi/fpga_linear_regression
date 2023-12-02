library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

package MatrixPackage is
    constant NUMBER_BITS_WIDTH : integer := 16;  -- Exemplo: ajuste conforme necessário
	 constant COLUMNS_LENGTH : integer := 2;
	 constant LINES_LENGTH : integer := 2;
    -- Definindo o tipo de array para as matrizes
    type matrix_type is array (1 to LINES_LENGTH, 1 to COLUMNS_LENGTH) of STD_LOGIC_VECTOR(NUMBER_BITS_WIDTH-1 downto 0);
	 type int_matrix_type is array (1 to LINES_LENGTH, 1 to COLUMNS_LENGTH) of integer;
end MatrixPackage;