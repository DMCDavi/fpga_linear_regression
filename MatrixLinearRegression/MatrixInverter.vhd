library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.newtype.all;

entity MatrixInverter is
    Port (
        A_in : in matrix_type;  -- Entrada da Matriz
        A_out : out matrix_type -- Saída da Matriz Invertida
    );
end MatrixInverter;

architecture Behavioral of MatrixInverter is
    signal a, b, c, d : integer;
    signal det : integer;
begin
    -- Conversão de entrada
    a <= to_integer(signed(A_in(1, 1)));
    b <= to_integer(signed(A_in(1, 2)));
    c <= to_integer(signed(A_in(2, 1)));
    d <= to_integer(signed(A_in(2, 2)));

    -- Cálculo do determinante
    det <= a * d - b * c;

    -- Verificar se a matriz é invertível (det != 0)
    process(a, b, c, d)
    begin
        if det /= 0 then
            -- Cálculo da matriz inversa
            A_out(1, 1) <= std_logic_vector(to_signed(2*d / det, 16));
            A_out(1, 2) <= std_logic_vector(to_signed(2*(-b) / det, 16));
            A_out(2, 1) <= std_logic_vector(to_signed(2*(-c) / det, 16));
            A_out(2, 2) <= std_logic_vector(to_signed(2*a / det, 16));
        else
            -- Matriz não invertível, setar todos os elementos para zero
            A_out <= (others => (others => (others => '0')));
        end if;
    end process;
end Behavioral;
