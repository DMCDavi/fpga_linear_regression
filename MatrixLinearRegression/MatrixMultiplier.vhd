library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.MatrixPackage.all;
use work.FixedPointOperations.all;

entity MatrixMultiplier is
    Port (
        A : in matrix_type;  -- Matriz A
        B : in matrix_type;  -- Matriz B
        C : out matrix_type  -- Matriz C (resultado)
    );
end MatrixMultiplier;

architecture Behavioral of MatrixMultiplier is
    signal a_int, b_int : int_matrix_type;
    signal c_int : int_matrix_type;
begin
    -- Conversão dos valores de entrada
    loop_conversion: for i in 1 to LINES_LENGTH generate
        loop_conversion_1: for j in 1 to COLUMNS_LENGTH generate 
            a_int(i, j) <= to_integer(signed(A(i, j)));
            b_int(j, i) <= to_integer(signed(B(j, i)));  -- Note a transposição de índices
        end generate loop_conversion_1;
    end generate loop_conversion;

    -- Paralelizando as operações de multiplicação de matrizes
    loop_multiplication: for i in 1 to LINES_LENGTH generate
        loop_multiplication_1: for j in 1 to COLUMNS_LENGTH generate
            process(a_int, b_int)
            variable sum : integer := 0;
            begin
					 sum := 0;
                for k in 1 to COLUMNS_LENGTH loop
                    sum := sum + multiply_fixed_point(a_int(i, k), b_int(k, j));
                end loop;
                c_int(i, j) <= sum;
            end process;
        end generate loop_multiplication_1;
    end generate loop_multiplication;

    -- Conversão para saída
    loop_output: for i in 1 to LINES_LENGTH generate
        loop_output_1: for j in 1 to COLUMNS_LENGTH generate
            C(i, j) <= std_logic_vector(to_signed(c_int(i, j), NUMBER_BITS_WIDTH));
        end generate loop_output_1;
    end generate loop_output;
end Behavioral;
