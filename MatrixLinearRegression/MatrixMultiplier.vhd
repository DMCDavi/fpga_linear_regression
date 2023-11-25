library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MatrixMultiplier is
    Port (
        -- Matriz A
        a11 : in STD_LOGIC_VECTOR(15 downto 0);
        a12 : in STD_LOGIC_VECTOR(15 downto 0);
        a21 : in STD_LOGIC_VECTOR(15 downto 0);
        a22 : in STD_LOGIC_VECTOR(15 downto 0);
        -- Matriz B
        b11 : in STD_LOGIC_VECTOR(15 downto 0);
        b12 : in STD_LOGIC_VECTOR(15 downto 0);
        b21 : in STD_LOGIC_VECTOR(15 downto 0);
        b22 : in STD_LOGIC_VECTOR(15 downto 0);
        -- Resultado da Matriz C = A x B
        c11 : out STD_LOGIC_VECTOR(15 downto 0);
        c12 : out STD_LOGIC_VECTOR(15 downto 0);
        c21 : out STD_LOGIC_VECTOR(15 downto 0);
        c22 : out STD_LOGIC_VECTOR(15 downto 0)
    );
end MatrixMultiplier;

architecture Behavioral of MatrixMultiplier is
    -- Convertendo entradas para integer
    signal a11_int, a12_int, a21_int, a22_int : integer;
    signal b11_int, b12_int, b21_int, b22_int : integer;
    signal c11_int, c12_int, c21_int, c22_int : integer;
begin
    -- Conversão dos valores de entrada
    a11_int <= to_integer(signed(a11));
    a12_int <= to_integer(signed(a12));
    a21_int <= to_integer(signed(a21));
    a22_int <= to_integer(signed(a22));
    b11_int <= to_integer(signed(b11));
    b12_int <= to_integer(signed(b12));
    b21_int <= to_integer(signed(b21));
    b22_int <= to_integer(signed(b22));

    -- Paralelizando as operações de multiplicação de matrizes
    c11_int <= a11_int * b11_int + a12_int * b21_int;
    c12_int <= a11_int * b12_int + a12_int * b22_int;
    c21_int <= a21_int * b11_int + a22_int * b21_int;
    c22_int <= a21_int * b12_int + a22_int * b22_int;

    -- Conversão para saída
    c11 <= std_logic_vector(to_signed(c11_int, 16));
    c12 <= std_logic_vector(to_signed(c12_int, 16));
    c21 <= std_logic_vector(to_signed(c21_int, 16));
    c22 <= std_logic_vector(to_signed(c22_int, 16));
end Behavioral;
