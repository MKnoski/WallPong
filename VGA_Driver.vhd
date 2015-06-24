library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity VGA_driver is
	port(
		kolor : in std_logic_vector (2 downto 0);
		Clk50MHz : in std_logic;
		red_out : out std_logic;
		green_out : out std_logic;
		blue_out : out std_logic;
		hs_out : out std_logic;
		vs_out : out std_logic;
		pix_x : out std_logic_vector  (9 downto 0);
		pix_y : out std_logic_vector (8 downto 0));
end VGA_driver;

architecture Behavioral of VGA_driver is
signal Clk25MHz : std_logic;
--signal horizontal_counter : std_logic_vector (9 downto 0) := "0000000000";
--signal vertical_counter : std_logic_vector (9 downto 0) := "0000000000";

begin

--tb_clk : process -- proces dla sygna³u CLK
--	begin	
--		Clk25MHz <= '0';
--		wait for 75 us; -- czas pierwszego zbocza narastaj¹cego
--		for i in 1 to 50000 loop -- pêtla okreœlaj¹ca liczbê impulsów
--			Clk25MHz <= '1';
--			wait for 25 us; -- czas poziomu wysokiego impulsu
--			Clk25MHz <= '0';
--			wait for 25 us; -- czas poziomu niskiego impulsu
--		end loop;
--		wait; -- aby nie powtarzaæ sekwencji
--	end process;

-- dzielnik clocka

process (Clk50MHz)
	begin
		if Clk50MHz'event and Clk50MHz='1' then
				if (Clk25MHz = '0') then
					Clk25MHz <= '1';
				else
					Clk25MHz <= '0';
				end if;
		end if;
end process;

process (Clk25MHz)
variable horizontal_counter : integer := 0;
variable vertical_counter : integer :=0;
variable h1 : integer := 144;
variable h2 : integer := 784;
variable v1 : integer := 39;
variable v2 : integer := 519;

	begin
		
		if Clk25MHz'event and Clk25MHz = '1' then

			if (horizontal_counter >= h1 ) -- 144
				and (horizontal_counter < h2 ) -- 784
				and (vertical_counter >= v1 ) -- 39
				and (vertical_counter < v2 ) -- 519
				then
				
				pix_x <= conv_std_logic_vector(horizontal_counter - 144, 10);
				pix_y <= conv_std_logic_vector(vertical_counter - 39, 9);
				
				red_out <= kolor(0);
				green_out <= kolor(1);
				blue_out <= kolor(2);
			else
				red_out <= '0';
				green_out <= '0';
				blue_out <= '0';
				
				pix_x <= conv_std_logic_vector(641, 10);
				pix_y <= conv_std_logic_vector(481, 9);
				
				--pix_y <= "111100001";  --481
				--pix_x <= "1010000001";  --641
				
				--pix_y <= "111100000";  --480
				--pix_x <= "1010000000";  --640
				
			end if;

			if (horizontal_counter > 0 ) and (horizontal_counter < 97 ) -- 96+1 
			then
				hs_out <= '0';
			else
				hs_out <= '1';
			end if;

			if (vertical_counter > 0 ) and (vertical_counter < 3) -- 2+1
			then
				vs_out <= '0';
			else
				vs_out <= '1';
			end if;
			
		horizontal_counter := horizontal_counter+1;
		
		if (horizontal_counter=800) then --800
			vertical_counter := vertical_counter+1;
			horizontal_counter := 0;
		end if;

		if (vertical_counter = 521) then  --521
			vertical_counter := 0;
		end if;
		
	end if;
end process;
end Behavioral;

