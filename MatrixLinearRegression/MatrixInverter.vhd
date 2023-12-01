library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.MatrixPackage.all;
use work.FixedPointOperations.all;

entity MatrixInverter is
    generic (
        N : integer := 2 -- Tamanho da matriz NxN
    );
    Port (
        A_in : in matrix_type;  -- Entrada da Matriz
        A_out : out matrix_type -- Saída da Matriz Invertida
    );
end MatrixInverter;

architecture Behavioral of MatrixInverter is
begin
    -- Processo de inversão de matriz (Método de Gauss-Jordan)
    matrix_inversion: process(A_in)
			variable A_int : int_matrix_type;
			variable I_int : int_matrix_type;
	     variable temp : integer;
		  variable factor : integer;
    begin
	     -- Inicialização da matriz de identidade
		  for i in 1 to N loop
			   for j in 1 to N loop
				 	 I_int(i, j) := 0;
			   end loop;
			   I_int(i, i) := 1 * FIXED_POINT_BASE;
		  end loop;
	 
	     -- Conversão de entrada
		  for i in 1 to N loop
			   for j in 1 to N loop
					 A_int(i, j) := to_integer(signed(A_in(i, j))) * FIXED_POINT_BASE;
			   end loop;
		  end loop;
	 
        for i in 1 to N loop
            -- Dividir a linha i pela diagonal A_int(i, i)
            temp := A_int(i, i);
            for j in 1 to N loop
                A_int(i, j) := divide_fixed_point(A_int(i, j), temp);
                I_int(i, j) := divide_fixed_point(I_int(i, j), temp);
            end loop;

            -- Tornar todos os outros elementos da coluna i zeros
            for k in 1 to N loop
                if k /= i then
                    factor := A_int(k, i);
                    for j in 1 to N loop
                        A_int(k, j) := A_int(k, j) - multiply_fixed_point(factor, A_int(i, j));
                        I_int(k, j) := I_int(k, j) - multiply_fixed_point(factor, I_int(i, j));
                    end loop;
                end if;
            end loop;
        end loop;

        -- Conversão para saída
        for i in 1 to N loop
            for j in 1 to N loop
                A_out(i, j) <= std_logic_vector(to_signed(I_int(i, j), NUMBER_BITS_WIDTH));
            end loop;
        end loop;
    end process matrix_inversion;

end Behavioral;
