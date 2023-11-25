library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MatrixTranspose is
    Port (
        -- Entradas da Matriz Original
        a11 : in STD_LOGIC_VECTOR(15 downto 0);
        a12 : in STD_LOGIC_VECTOR(15 downto 0);
        a21 : in STD_LOGIC_VECTOR(15 downto 0);
        a22 : in STD_LOGIC_VECTOR(15 downto 0);
        -- Saídas da Matriz Transposta
        b11 : out STD_LOGIC_VECTOR(15 downto 0);
        b12 : out STD_LOGIC_VECTOR(15 downto 0);
        b21 : out STD_LOGIC_VECTOR(15 downto 0);
        b22 : out STD_LOGIC_VECTOR(15 downto 0)
    );
end MatrixTranspose;

architecture Behavioral of MatrixTranspose is
begin
    -- Transposição de Matriz
    -- Elementos da diagonal principal permanecem iguais
    b11 <= a11;
    b22 <= a22;

    -- Elementos fora da diagonal principal são trocados
    b12 <= a21;
    b21 <= a12;
end Behavioral;
