library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FrequencyDivider is
    port (
        clk: IN STD_LOGIC;
        div_out: OUT STD_LOGIC
    );
end FrequencyDivider;

architecture behavior of FrequencyDivider is
    signal local_out: STD_LOGIC := '0';
begin
    process(clk)
	 variable iterations: INTEGER RANGE 0 TO 49_999_999 := 0;
    begin
        if rising_edge(clk) then
            if iterations = 49_999_999 then
                iterations := 0;
                local_out <= NOT local_out;
            else
                iterations := iterations + 1;
            end if;
        end if;
    end process;

    div_out <= local_out;
end behavior;
