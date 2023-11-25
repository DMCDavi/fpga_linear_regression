library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MatrixLinearRegression is
    Port (
        -- Matriz X e vetor Y
        x11 : in STD_LOGIC_VECTOR(15 downto 0);
        x12 : in STD_LOGIC_VECTOR(15 downto 0);
        x21 : in STD_LOGIC_VECTOR(15 downto 0);
        x22 : in STD_LOGIC_VECTOR(15 downto 0);
        y1 : in STD_LOGIC_VECTOR(15 downto 0);
        y2 : in STD_LOGIC_VECTOR(15 downto 0);

        -- Resultado vetor B
        b1 : out STD_LOGIC_VECTOR(15 downto 0);
        b2 : out STD_LOGIC_VECTOR(15 downto 0)
    );
end MatrixLinearRegression;

architecture Behavioral of MatrixLinearRegression is

    component MatrixTranspose
        Port (
            a11 : in STD_LOGIC_VECTOR(15 downto 0);
            a12 : in STD_LOGIC_VECTOR(15 downto 0);
            a21 : in STD_LOGIC_VECTOR(15 downto 0);
            a22 : in STD_LOGIC_VECTOR(15 downto 0);
            b11 : out STD_LOGIC_VECTOR(15 downto 0);
            b12 : out STD_LOGIC_VECTOR(15 downto 0);
            b21 : out STD_LOGIC_VECTOR(15 downto 0);
            b22 : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

    component MatrixMultiplier
        Port (
            a11 : in STD_LOGIC_VECTOR(15 downto 0);
            a12 : in STD_LOGIC_VECTOR(15 downto 0);
            a21 : in STD_LOGIC_VECTOR(15 downto 0);
            a22 : in STD_LOGIC_VECTOR(15 downto 0);
            b11 : in STD_LOGIC_VECTOR(15 downto 0);
            b12 : in STD_LOGIC_VECTOR(15 downto 0);
            b21 : in STD_LOGIC_VECTOR(15 downto 0);
            b22 : in STD_LOGIC_VECTOR(15 downto 0);
            c11 : out STD_LOGIC_VECTOR(15 downto 0);
            c12 : out STD_LOGIC_VECTOR(15 downto 0);
            c21 : out STD_LOGIC_VECTOR(15 downto 0);
            c22 : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

    component MatrixInverter
        Port (
            a_in : in STD_LOGIC_VECTOR(15 downto 0);
            b_in : in STD_LOGIC_VECTOR(15 downto 0);
            c_in : in STD_LOGIC_VECTOR(15 downto 0);
            d_in : in STD_LOGIC_VECTOR(15 downto 0);
            a_out : out STD_LOGIC_VECTOR(15 downto 0);
            b_out : out STD_LOGIC_VECTOR(15 downto 0);
            c_out : out STD_LOGIC_VECTOR(15 downto 0);
            d_out : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

    -- Sinais intermediários
    signal xt11, xt12, xt21, xt22 : STD_LOGIC_VECTOR(15 downto 0);
    signal xtx11, xtx12, xtx21, xtx22 : STD_LOGIC_VECTOR(15 downto 0);
    signal inv11, inv12, inv21, inv22 : STD_LOGIC_VECTOR(15 downto 0);
    signal xty1, xty2 : STD_LOGIC_VECTOR(15 downto 0);

begin
    -- Transposição da matriz X
    transpose_x: MatrixTranspose port map(
        a11 => x11, a12 => x12, a21 => x21, a22 => x22,
        b11 => xt11, b12 => xt21, b21 => xt12, b22 => xt22
    );

    -- Multiplicação X^T * X
    multiply_xtx: MatrixMultiplier port map(
        a11 => xt11, a12 => xt12, a21 => xt21, a22 => xt22,
        b11 => x11, b12 => x12, b21 => x21, b22 => x22,
        c11 => xtx11, c12 => xtx12, c21 => xtx21, c22 => xtx22
    );

    -- Inversão de X^T * X
    invert_xtx: MatrixInverter port map(
        a_in => xtx11, b_in => xtx12, c_in => xtx21, d_in => xtx22,
        a_out => inv11, b_out => inv12, c_out => inv21, d_out => inv22
    );

    -- Multiplicação X^T * Y
    multiply_xty: MatrixMultiplier port map(
        a11 => xt11, a12 => xt12, a21 => xt21, a22 => xt22,
        b11 => y1, b12 => (others => '0'), b21 => y2, b22 => (others => '0'),
        c11 => xty1, c12 => open, c21 => xty2, c22 => open
    );

    -- Multiplicação final (X^T * X)^-1 * (X^T * Y)
    final_multiply: MatrixMultiplier port map(
        a11 => inv11, a12 => inv12, a21 => inv21, a22 => inv22,
        b11 => xty1, b12 => (others => '0'), b21 => xty2, b22 => (others => '0'),
        c11 => b1, c12 => open, c21 => b2, c22 => open
    );

end Behavioral;