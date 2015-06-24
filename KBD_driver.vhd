----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:38:43 03/10/2015 
-- Design Name: 
-- Module Name:    KBD_driver - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity KBD_driver is
port(
		D0_Rdy : in std_logic;
		D0 : in std_logic_vector (7 downto 0);
		E0 : in std_logic;
		right :out std_logic;
		left :out std_logic
		
);
end KBD_driver;

architecture Behavioral of KBD_driver is

begin
	process (D0_Rdy)
	begin
		if D0_Rdy = '1' then
			if D0 = x"74" and E0 = '1' then
				right <= '1';
			else
				right <= '0';
			end if;
			
			if D0 = x"6B" and E0 = '1' then
				left <= '1';
			else
				left <= '0';
			end if;
		end if;
	end process;
end Behavioral;

