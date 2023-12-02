library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.MatrixPackage.all;

package FixedPointOperations is
    constant FIXED_POINT_BASE : integer := 10; -- Base para operações de ponto fixo

    function to_fixed_point_std(a : std_logic_vector) return std_logic_vector;
    function to_fixed_point_int(a : integer) return integer;
    function multiply_fixed_point(a : integer; b : integer) return integer;
    function divide_fixed_point(a : integer; b : integer) return integer;
end FixedPointOperations;

package body FixedPointOperations is

    function to_fixed_point_std(a : std_logic_vector) return std_logic_vector is
        variable a_int: integer;
        variable result: integer;
    begin
        a_int := to_integer(unsigned(a));
        result := a_int * FIXED_POINT_BASE;
        return std_logic_vector(to_unsigned(result, NUMBER_BITS_WIDTH));
    end to_fixed_point_std;

    function to_fixed_point_int(a : integer) return integer is
    begin
        return a * FIXED_POINT_BASE;
    end to_fixed_point_int;

    function multiply_fixed_point(a : integer; b : integer) return integer is
    begin
        return (a * b) / FIXED_POINT_BASE;
    end multiply_fixed_point;

    function divide_fixed_point(a : integer; b : integer) return integer is
    begin
        return (a * FIXED_POINT_BASE) / b;
    end divide_fixed_point;

end FixedPointOperations;
