library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.MatrixPackage.all;

entity MatrixTranspose is
    Port (
        A : in matrix_type;  -- Entrada da Matriz Original
        B : out matrix_type  -- Saída da Matriz Transposta
    );
end MatrixTranspose;

architecture Behavioral of MatrixTranspose is
begin
    -- Processo de transposição da matriz usando loops aninhados
    loop_transpose: for i in 1 to LINES_LENGTH generate
        loop_transpose_1: for j in 1 to COLUMNS_LENGTH generate
            B(i, j) <= A(j, i); -- Troca os elementos para transposição
        end generate loop_transpose_1;
    end generate loop_transpose;
end Behavioral;
