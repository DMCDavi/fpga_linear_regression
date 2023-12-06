library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.MatrixPackage.all;

entity DataTransmitter is
    Port (
	     X : in matrix_type;
        Y : in matrix_type;
        B : in matrix_type;
		  XT : in matrix_type;
		  XTX : in matrix_type;
		  Inv : in matrix_type;
		  XTY : in matrix_type;
        tx_done : in std_logic;
        tx_data : out std_logic_vector(7 downto 0)
    );
end DataTransmitter;

architecture Behavioral of DataTransmitter is
begin

    -- Processo para enviar dados através do UART
    send_results: process
        variable i, j, matrix_index: integer := 1;
		  variable byte_index: integer := NUMBER_BITS_WIDTH/8 - 1;
		  variable data: std_logic_vector(NUMBER_BITS_WIDTH - 1 downto 0);
    begin
        wait until tx_done = '1';

		  case matrix_index is
			 when 1 =>
				data := X(i,j);
			 when 2 =>
				data := Y(i,j);
			 when 3 =>
				data := XT(i,j);
			 when 4 =>
				data := XTX(i,j);
			 when 5 =>
				data := Inv(i,j);
			 when 6 =>
				data := XTY(i,j);
			 when others =>
				data := B(i,j);
		  end case;

        tx_data <= data(byte_index*8+7 downto byte_index*8);

		  byte_index := byte_index - 1;
		  if byte_index < 0 then
			  byte_index := NUMBER_BITS_WIDTH/8 - 1;
			  j := j + 1;
			  if j > COLUMNS_LENGTH then
					j := 1;
					i := i + 1;
					if i > LINES_LENGTH then
						i := 1;
						j := 1;
						matrix_index := matrix_index + 1;
						if matrix_index > 7 then
							matrix_index := 1;
					  end if;
					end if;
			  end if;
		  end if;
    end process send_results;
end Behavioral;
