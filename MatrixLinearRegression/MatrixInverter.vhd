library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MatrixInverter is
    Port (
        a_in : in STD_LOGIC_VECTOR(15 downto 0); -- Elemento a da matriz
        b_in : in STD_LOGIC_VECTOR(15 downto 0); -- Elemento b
        c_in : in STD_LOGIC_VECTOR(15 downto 0); -- Elemento c
        d_in : in STD_LOGIC_VECTOR(15 downto 0); -- Elemento d
        -- Saídas para a matriz invertida
        a_out : out STD_LOGIC_VECTOR(15 downto 0); -- Elemento a'
        b_out : out STD_LOGIC_VECTOR(15 downto 0); -- Elemento b'
        c_out : out STD_LOGIC_VECTOR(15 downto 0); -- Elemento c'
        d_out : out STD_LOGIC_VECTOR(15 downto 0)  -- Elemento d'
    );
end MatrixInverter;

architecture Behavioral of MatrixInverter is
    signal a, b, c, d : integer;
    signal det : integer;
begin
    -- Conversão de entrada
    a <= to_integer(signed(a_in));
    b <= to_integer(signed(b_in));
    c <= to_integer(signed(c_in));
    d <= to_integer(signed(d_in));

    -- Cálculo do determinante
    det <= a * d - b * c;

    -- Verificar se a matriz é invertível (det != 0)
    process(a, b, c, d)
    begin
        if det /= 0 then
            -- Cálculo da matriz inversa
            a_out <= std_logic_vector(to_signed(d / det, 16));
            b_out <= std_logic_vector(to_signed(-b / det, 16));
            c_out <= std_logic_vector(to_signed(-c / det, 16));
            d_out <= std_logic_vector(to_signed(a / det, 16));
        else
            -- Matriz não invertível
            a_out <= (others => '0');
            b_out <= (others => '0');
            c_out <= (others => '0');
            d_out <= (others => '0');
        end if;
    end process;
end Behavioral;
