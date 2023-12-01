library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

package MatrixPackage is
    constant NUMBER_BITS_WIDTH : integer := 16;  -- Exemplo: ajuste conforme necessário
    -- Definindo o tipo de array para as matrizes e vetores
    type matrix_type is array (1 to 2, 1 to 2) of STD_LOGIC_VECTOR(NUMBER_BITS_WIDTH-1 downto 0);
	 type int_matrix_type is array (1 to 2, 1 to 2) of integer;
end MatrixPackage;