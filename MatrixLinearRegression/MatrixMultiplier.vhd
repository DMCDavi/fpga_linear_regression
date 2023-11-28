library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.newtype.all;

entity MatrixMultiplier is
    Port (
        A : in matrix_type;  -- Matriz A
        B : in matrix_type;  -- Matriz B
        C : out matrix_type  -- Matriz C (resultado)
    );
end MatrixMultiplier;

architecture Behavioral of MatrixMultiplier is
    -- Convertendo entradas para integer
    signal a_int, b_int, c_int : int_matrix_type;
begin
    -- Conversão dos valores de entrada
    loop_conversion: for i in 1 to 2 generate
        loop_conversion_1: for j in 1 to 2 generate 
            a_int(i, j) <= to_integer(signed(A(i, j)));
            b_int(i, j) <= to_integer(signed(B(i, j)));
        end generate loop_conversion_1;
    end generate loop_conversion;

    -- Paralelizando as operações de multiplicação de matrizes
    loop_multiplication: for i in 1 to 2 generate
        loop_multiplication_1: for j in 1 to 2 generate
            c_int(i, j) <= a_int(i, 1) * b_int(1, j) + a_int(i, 2) * b_int(2, j);
        end generate loop_multiplication_1;
    end generate loop_multiplication;

    -- Conversão para saída
    loop_output: for i in 1 to 2 generate
        loop_output_1: for j in 1 to 2 generate
            C(i, j) <= std_logic_vector(to_signed(c_int(i, j), 16));
        end generate;
    end generate loop_output;
end Behavioral;
