library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LinearRegression is
    Port (
        x_in : in  STD_LOGIC_VECTOR(15 downto 0); -- entrada X
        y_out : out STD_LOGIC_VECTOR(15 downto 0) -- saída Y
    );
end LinearRegression;

architecture Behavioral of LinearRegression is
    -- Convertendo os valores de entrada para integer
    signal x_int : integer range -32768 to 32767;
    signal y_int : integer range -32768 to 32767;

    -- Coeficientes da regressão (m e b)
    constant m : integer := 2; -- exemplo de inclinação
    constant b : integer := 3; -- exemplo de intercepto y
begin
    x_int <= to_integer(signed(x_in));
    y_int <= m * x_int + b;
    y_out <= std_logic_vector(to_signed(y_int, 16));
end Behavioral;
