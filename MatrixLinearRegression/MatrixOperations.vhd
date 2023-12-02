library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.MatrixPackage.all;

entity MatrixOperations is
    Port (
        X : in matrix_type;   -- Matriz X
        Y : in matrix_type;   -- Vetor Y
        B : out matrix_type   -- Resultado vetor B
    );
end MatrixOperations;

architecture Behavioral of MatrixOperations is

    -- Atualizando as definições dos componentes para usar arrays
    component MatrixTranspose
        Port (
            A : in matrix_type;
            B : out matrix_type
        );
    end component;

    component MatrixMultiplier
        Port (
            A : in matrix_type;
            B : in matrix_type;
            C : out matrix_type
        );
    end component;

    component MatrixInverter
        Port (
            A_in : in matrix_type;
            A_out : out matrix_type
        );
    end component;

    -- Sinais intermediários
    signal XT, XTX, Inv, XTY : matrix_type;

begin
    -- Transposição da matriz X
    transpose_x: MatrixTranspose port map(
        A => X,
        B => XT
    );

    -- Multiplicação X^T * X
    multiply_xtx: MatrixMultiplier port map(
        A => XT,
        B => X,
        C => XTX
    );

    -- Inversão de X^T * X
    invert_xtx: MatrixInverter port map(
        A_in => XTX,
        A_out => Inv
    );

    -- Multiplicação X^T * Y (adaptando Y para ser uma matriz 2x2)
    multiply_xty: MatrixMultiplier port map(
        A => XT,
        B => Y,  -- Transformando Y em uma matriz 2x2
        C => XTY
	);

    -- Multiplicação final (X^T * X)^-1 * (X^T * Y)
    final_multiply: MatrixMultiplier port map(
        A => Inv,
        B => XTY,
        C => B  -- Apenas as primeiras linhas de C são relevantes para o vetor B
    );
	 --B <= XTY;

end Behavioral;