library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

package FixedPointOperations is
    constant FIXED_POINT_BASE : integer := 10;  -- Exemplo: ajuste conforme necessário

    function multiply_fixed_point(a : integer; b : integer) return integer;
    function divide_fixed_point(a : integer; b : integer) return integer;
end FixedPointOperations;

package body FixedPointOperations is

function to_fixed_point(a : integer) return integer is
begin
    return a * FIXED_POINT_BASE;
end to_fixed_point;

-- Função de Multiplicação em Ponto Fixo
function multiply_fixed_point(a : integer; b : integer) return integer is
begin
    return a * b / FIXED_POINT_BASE;
end multiply_fixed_point;

-- Função de Divisão em Ponto Fixo
function divide_fixed_point(a : integer; b : integer) return integer is
begin
    return (a * FIXED_POINT_BASE) / b ;
end divide_fixed_point;


end FixedPointOperations;
