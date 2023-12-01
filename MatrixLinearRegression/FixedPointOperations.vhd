library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

package FixedPointOperations is
    constant FIXED_POINT_BASE : integer := 1000;  -- Exemplo: ajuste conforme necessário

    function multiply_fixed_point(a : integer; b : integer) return integer;
    function divide_fixed_point(a : integer; b : integer) return integer;
end FixedPointOperations;

package body FixedPointOperations is

-- Função de Multiplicação em Ponto Fixo
function multiply_fixed_point(a : integer; b : integer) return integer is
    variable result : integer;
begin
    -- Multiplicar os números (a * b)
    result := a * b / FIXED_POINT_BASE;

    -- Ajustar o resultado para manter a precisão em ponto fixo
    return result;
end multiply_fixed_point;

-- Função de Divisão em Ponto Fixo
function divide_fixed_point(a : integer; b : integer) return integer is
    variable result : integer;
begin
    -- Ajustar o dividendo para a precisão em ponto fixo
	result := (a * FIXED_POINT_BASE) / b ;

    return result;
end divide_fixed_point;


end FixedPointOperations;
