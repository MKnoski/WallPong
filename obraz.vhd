----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:59:20 01/22/2015 
-- Design Name: 
-- Module Name:    obraz - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity obraz is
port(
		right : in std_logic;
		left :in std_logic;
		Clk50MHz : in std_logic;
		pix_x : in std_logic_vector  (9 downto 0);
		pix_y : in std_logic_vector (8 downto 0);
		kolor : out std_logic_vector (2 downto 0);
		score : out std_logic_vector (63 downto 0)
);
end obraz;

architecture Behavioral of obraz is
signal Clk25MHz : std_logic;
begin

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
variable horizontal_counter_VGA : integer := 0;
variable vertical_counter_VGA : integer := 0;
----------------------------------------
variable h_1_paletka : integer := 270; 
variable h_2_paletka : integer := 370; 
variable v_1_paletka : integer := 440; 
variable v_2_paletka : integer := 450; 
----------------------------------------
variable h_1_pilka : integer := 310; 
variable h_2_pilka : integer := 330; 
variable v_1_pilka : integer := 130; 
variable v_2_pilka : integer := 150; 
---------------------------------------
variable v_1_blok : integer := 5;
variable v_2_blok : integer := 25;

variable v_1_blok_2 : integer := 30;
variable v_2_blok_2 : integer := 50;

variable h_1_blok1 : integer := 0;
variable h_2_blok1 : integer := 120;
variable h_1_blok2 : integer := 130;
variable h_2_blok2 : integer := 250;
variable h_1_blok3 : integer := 260;
variable h_2_blok3 : integer := 380;
variable h_1_blok4 : integer := 390;
variable h_2_blok4 : integer := 510;
variable h_1_blok5 : integer := 520;
variable h_2_blok5 : integer := 640;

variable blok1 : integer := 2;
variable blok2 : integer := 2;
variable blok3 : integer := 2;
variable blok4 : integer := 2;
variable blok5 : integer := 2;

variable blok1_2 : integer := 2;
variable blok2_2 : integer := 2;
variable blok3_2 : integer := 2;
variable blok4_2 : integer := 2;
variable blok5_2 : integer := 2;

---------------------------------------
variable licznik : integer := 0;
variable wynik : integer :=0;


variable kierunek : integer :=1;
variable szybkosc_domyslna : integer := 4;
variable szybkosc_pilki_h : integer :=4;
variable szybkosc_pilki_v : integer :=4;

	begin
		
		if Clk25MHz'event and Clk25MHz = '1' then
			if licznik >= 1000000 then
			
			-----------RUCH PALETKI------------------			
				if right = '1' and h_2_paletka <= 635 then
					h_1_paletka := h_1_paletka + 5;
					h_2_paletka := h_2_paletka + 5;
				elsif left = '1' and h_1_paletka >= 5 then
					h_1_paletka := h_1_paletka - 5;
					h_2_paletka := h_2_paletka - 5;
				end if;
				
------------RUCH PI£KI--------------------
CASE kierunek IS
   WHEN 0 => ---prawo, góra
      		if h_2_pilka <= 635 then
					h_1_pilka := h_1_pilka + szybkosc_pilki_h;
					h_2_pilka := h_2_pilka + szybkosc_pilki_h;
				else
					kierunek := 2;
					szybkosc_pilki_h := szybkosc_domyslna;
				end if;
				
				if v_1_pilka >= 5 then
					v_1_pilka := v_1_pilka - szybkosc_pilki_v;
					v_2_pilka := v_2_pilka - szybkosc_pilki_v;
				else
					kierunek := 1;
					szybkosc_pilki_h := szybkosc_domyslna;
				end if;
				
				if v_1_pilka <= 25 then
					if h_1_pilka >= h_1_blok1 and h_1_pilka <= h_2_blok1 and blok1 > 0 
					then
						blok1:=blok1 - 1;
						kierunek :=1;
					elsif h_2_pilka >= h_1_blok2 and h_1_pilka <= h_2_blok2 and blok2 > 0 
					then
						blok2:=blok2 - 1;
						kierunek :=1;
					elsif h_2_pilka >= h_1_blok3 and h_1_pilka <= h_2_blok3 and blok3 > 0 
					then
						blok3:=blok3 - 1;
						kierunek :=1;
					elsif h_2_pilka >= h_1_blok4 and h_1_pilka <= h_2_blok4 and blok4 > 0  
					then
						blok4:=blok4 - 1;
						kierunek :=1;
					elsif h_2_pilka >= h_1_blok5 and h_2_pilka <= h_2_blok5 and blok5 > 0  
					then
						blok5:=blok5 - 1;
						kierunek :=1;
					end if;
					szybkosc_pilki_h := szybkosc_domyslna;
				end if;
				
				if v_1_pilka <= 50 then
					if h_1_pilka >= h_1_blok1 and h_1_pilka <= h_2_blok1 and blok1_2 > 0 
					then
						blok1_2:=blok1_2 - 1;
						kierunek :=1;
					elsif h_2_pilka >= h_1_blok2 and h_1_pilka <= h_2_blok2 and blok2_2 > 0 
					then
						blok2_2:=blok2_2 - 1;
						kierunek :=1;
					elsif h_2_pilka >= h_1_blok3 and h_1_pilka <= h_2_blok3 and blok3_2 > 0 
					then
						blok3_2:=blok3_2 - 1;
						kierunek :=1;
					elsif h_2_pilka >= h_1_blok4 and h_1_pilka <= h_2_blok4 and blok4_2 > 0  
					then
						blok4_2:=blok4_2 - 1;
						kierunek :=1;
					elsif h_2_pilka >= h_1_blok5 and h_2_pilka <= h_2_blok5 and blok5_2 > 0  
					then
						blok5_2:=blok5_2 - 1;
						kierunek :=1;
					end if;
					szybkosc_pilki_h := szybkosc_domyslna;
				end if;
				
				
   WHEN 1 => ---prawo, dó³
            if h_2_pilka <= 635 then
					h_1_pilka := h_1_pilka + szybkosc_pilki_h;
					h_2_pilka := h_2_pilka + szybkosc_pilki_h;
				else
					kierunek := 3;
				end if;
				
				if (v_2_pilka > 440 and h_2_pilka > h_1_paletka and h_1_pilka < h_2_paletka)  then
					if ((h_1_pilka + 10 > h_1_paletka and h_1_pilka + 10 < h_1_paletka + 20) or (h_1_pilka + 10 > h_1_paletka + 80 and h_1_pilka + 10 < h_2_paletka)) then
						szybkosc_pilki_h:=szybkosc_pilki_h+2;
					end if;
					
					if ((h_1_pilka + 10 > h_1_paletka + 20 and h_1_pilka + 10 < h_1_paletka + 50) or (h_1_pilka + 10 > h_1_paletka + 60 and h_1_pilka + 10 < h_1_paletka + 80)) then
						szybkosc_pilki_h:=szybkosc_pilki_h+1;
					end if;
						
					kierunek := 0;
					wynik := wynik + 1;
					
				else
					v_1_pilka := v_1_pilka + szybkosc_pilki_v;
					v_2_pilka := v_2_pilka + szybkosc_pilki_v;
					if v_2_pilka = 470 then
						h_1_pilka := h_1_paletka + 40; 
						h_2_pilka := h_1_paletka + 60; 
						v_1_pilka := 130; 
						v_2_pilka := 150;
						kierunek := 1;
						blok1 := 2;
						blok2 := 2;
						blok3 := 2;
						blok4 := 2;
						blok5 := 2;
						blok1_2 := 2;
						blok2_2 := 2;
						blok3_2 := 2;
						blok4_2 := 2;
						blok5_2 := 2;
						wynik := 0;						
					end if;
				end if;
				
				
				
	WHEN 2 => -----lewo, góra
            if h_1_pilka >= 5 then
					h_1_pilka := h_1_pilka - szybkosc_pilki_h;
					h_2_pilka := h_2_pilka - szybkosc_pilki_h;
				else
					kierunek := 0;
					szybkosc_pilki_h := szybkosc_domyslna;
				end if;
				
				if v_1_pilka >= 5 then
					v_1_pilka := v_1_pilka - szybkosc_pilki_v;
					v_2_pilka := v_2_pilka - szybkosc_pilki_v;
				else
					kierunek := 3;
					szybkosc_pilki_h := szybkosc_domyslna;
				end if;
				
				if v_1_pilka <= 25 then
					if h_1_pilka >= h_1_blok1 and h_1_pilka <= h_2_blok1 and blok1 > 0 
					then
						blok1:=blok1 - 1;
						kierunek :=3;
					elsif h_2_pilka >= h_1_blok2 and h_1_pilka <= h_2_blok2 and blok2 > 0 
					then
						blok2:=blok2 - 1;
						kierunek :=3;
					elsif h_2_pilka >= h_1_blok3 and h_1_pilka <= h_2_blok3 and blok3 > 0
					then
						blok3:=blok3 - 1;
						kierunek :=3;
					elsif h_2_pilka >= h_1_blok4 and h_1_pilka <= h_2_blok4 and blok4 > 0
					then
						blok4:=blok4 - 1;
						kierunek :=3;
					elsif h_2_pilka >= h_1_blok5 and h_2_pilka <= h_2_blok5 and blok5 > 0 
					then
						blok5:=blok5 - 1;
						kierunek :=3;
					end if;	
					szybkosc_pilki_h := szybkosc_domyslna;
				end if;
				
				if v_1_pilka <= 50 then
					if h_1_pilka >= h_1_blok1 and h_1_pilka <= h_2_blok1 and blok1_2 > 0 
					then
						blok1_2:=blok1_2 - 1;
						kierunek :=3;
					elsif h_2_pilka >= h_1_blok2 and h_1_pilka <= h_2_blok2 and blok2_2 > 0 
					then
						blok2_2:=blok2_2 - 1;
						kierunek :=3;
					elsif h_2_pilka >= h_1_blok3 and h_1_pilka <= h_2_blok3 and blok3_2 > 0 
					then
						blok3_2:=blok3_2 - 1;
						kierunek :=3;
					elsif h_2_pilka >= h_1_blok4 and h_1_pilka <= h_2_blok4 and blok4_2 > 0  
					then
						blok4_2:=blok4_2 - 1;
						kierunek :=3;
					elsif h_2_pilka >= h_1_blok5 and h_2_pilka <= h_2_blok5 and blok5_2 > 0  
					then
						blok5_2:=blok5_2 - 1;
						kierunek :=3;
					end if;
					szybkosc_pilki_h := szybkosc_domyslna;
				end if;
				
				
	WHEN 3 =>   ----- lewo, dó³
            if h_1_pilka >= 5 then
					h_1_pilka := h_1_pilka - szybkosc_pilki_h;
					h_2_pilka := h_2_pilka - szybkosc_pilki_h;
				else
					kierunek := 1;
				end if;
				
				if (v_2_pilka > 440 and h_2_pilka > h_1_paletka and h_1_pilka < h_2_paletka)  then
					if ((h_1_pilka + 10 > h_1_paletka and h_1_pilka + 10 < h_1_paletka + 20) or (h_1_pilka + 10 > h_1_paletka + 80 and h_1_pilka + 10 < h_2_paletka)) then
						szybkosc_pilki_h:=szybkosc_pilki_h+2;
					end if;
						
					if ((h_1_pilka + 10 > h_1_paletka + 20 and h_1_pilka + 10 < h_1_paletka + 50) or (h_1_pilka + 10 > h_1_paletka + 60 and h_1_pilka + 10 < h_1_paletka + 80)) then
						szybkosc_pilki_h:=szybkosc_pilki_h+1;
					end if;
					kierunek := 2;
					wynik := wynik + 1;
				else
					v_1_pilka := v_1_pilka + szybkosc_pilki_v;
					v_2_pilka := v_2_pilka + szybkosc_pilki_v;
					if v_2_pilka = 470 then
						h_1_pilka := h_1_paletka + 40; 
						h_2_pilka := h_1_paletka + 60; 
						v_1_pilka := 130; 
						v_2_pilka := 150;
						kierunek := 3;
						blok1 := 2;
						blok2 := 2;
						blok3 := 2;
						blok4 := 2;
						blok5 := 2;
						blok1_2 := 2;
						blok2_2 := 2;
						blok3_2 := 2;
						blok4_2 := 2;
						blok5_2 := 2;
						wynik := 0;
					end if;
				end if;
	WHEN OTHERS =>
      
END CASE;

-------------------------------------------------	
				score <= conv_std_logic_vector(wynik, 64);
-------------------------------------------------				
				licznik := 0;
			end if;
			licznik := licznik +1;
		
		horizontal_counter_VGA := conv_integer (pix_x);
		vertical_counter_VGA := conv_integer (pix_y);
		
		if (horizontal_counter_VGA >= h_1_paletka ) 
			and (horizontal_counter_VGA < h_2_paletka ) 
			and (vertical_counter_VGA >= v_1_paletka ) 
			and (vertical_counter_VGA < v_2_paletka ) 
		then	
			kolor(0)<='0';
			kolor(1)<='1';
			kolor(2)<='0';
		elsif (horizontal_counter_VGA >= h_1_pilka ) 
			and (horizontal_counter_VGA < h_2_pilka ) 
			and (vertical_counter_VGA >= v_1_pilka ) 
			and (vertical_counter_VGA < v_2_pilka ) 
		then
			kolor(0)<='0';
			kolor(1)<='0';
			kolor(2)<='1';
		elsif (horizontal_counter_VGA >= h_1_blok1 ) 
			and (horizontal_counter_VGA < h_2_blok1 ) 
			and (vertical_counter_VGA >= v_1_blok ) 
			and (vertical_counter_VGA < v_2_blok )
			and (blok1 > 0)
		then
			if blok1 = 2 then
				kolor(0)<='1';
				kolor(1)<='1';
				kolor(2)<='0';
			else
				kolor(0)<='1';
				kolor(1)<='0';
				kolor(2)<='0';
			end if;
		elsif (horizontal_counter_VGA >= h_1_blok2 ) 
			and (horizontal_counter_VGA < h_2_blok2 ) 
			and (vertical_counter_VGA >= v_1_blok ) 
			and (vertical_counter_VGA < v_2_blok )
			and (blok2 > 0)
		then	
			if blok2 = 2 then
				kolor(0)<='1';
				kolor(1)<='1';
				kolor(2)<='0';
			else
				kolor(0)<='1';
				kolor(1)<='0';
				kolor(2)<='0';
			end if;
		elsif (horizontal_counter_VGA >= h_1_blok3 ) 
			and (horizontal_counter_VGA < h_2_blok3 ) 
			and (vertical_counter_VGA >= v_1_blok ) 
			and (vertical_counter_VGA < v_2_blok )
			and (blok3 > 0)
		then	
			if blok3 = 2 then
				kolor(0)<='1';
				kolor(1)<='1';
				kolor(2)<='0';
			else
				kolor(0)<='1';
				kolor(1)<='0';
				kolor(2)<='0';
			end if;
		elsif (horizontal_counter_VGA >= h_1_blok4 ) 
			and (horizontal_counter_VGA < h_2_blok4 ) 
			and (vertical_counter_VGA >= v_1_blok ) 
			and (vertical_counter_VGA < v_2_blok )
			and (blok4 > 0)
		then	
			if blok4 = 2 then
				kolor(0)<='1';
				kolor(1)<='1';
				kolor(2)<='0';
			else
				kolor(0)<='1';
				kolor(1)<='0';
				kolor(2)<='0';
			end if;
		elsif (horizontal_counter_VGA >= h_1_blok5 ) 
			and (horizontal_counter_VGA < h_2_blok5 ) 
			and (vertical_counter_VGA >= v_1_blok ) 
			and (vertical_counter_VGA < v_2_blok )
			and (blok5 > 0)
		then	
			if blok5 = 2 then
				kolor(0)<='1';
				kolor(1)<='1';
				kolor(2)<='0';
			else
				kolor(0)<='1';
				kolor(1)<='0';
				kolor(2)<='0';
			end if;
		elsif (horizontal_counter_VGA >= h_1_blok1 ) 
			and (horizontal_counter_VGA < h_2_blok1 ) 
			and (vertical_counter_VGA >= v_1_blok_2 ) 
			and (vertical_counter_VGA < v_2_blok_2 )
			and (blok1_2 > 0)
		then	
			if blok1_2 = 2 then
				kolor(0)<='1';
				kolor(1)<='1';
				kolor(2)<='0';
			else
				kolor(0)<='1';
				kolor(1)<='0';
				kolor(2)<='0';
			end if;
		elsif (horizontal_counter_VGA >= h_1_blok2 ) 
			and (horizontal_counter_VGA < h_2_blok2 ) 
			and (vertical_counter_VGA >= v_1_blok_2 ) 
			and (vertical_counter_VGA < v_2_blok_2 )
			and (blok2_2 > 0)
		then	
			if blok2_2 = 2 then
				kolor(0)<='1';
				kolor(1)<='1';
				kolor(2)<='0';
			else
				kolor(0)<='1';
				kolor(1)<='0';
				kolor(2)<='0';
			end if;
		elsif (horizontal_counter_VGA >= h_1_blok3 ) 
			and (horizontal_counter_VGA < h_2_blok3 ) 
			and (vertical_counter_VGA >= v_1_blok_2 ) 
			and (vertical_counter_VGA < v_2_blok_2 )
			and (blok3_2 > 0)
		then	
			if blok3_2 = 2 then
				kolor(0)<='1';
				kolor(1)<='1';
				kolor(2)<='0';
			else
				kolor(0)<='1';
				kolor(1)<='0';
				kolor(2)<='0';
			end if;
		elsif (horizontal_counter_VGA >= h_1_blok4 ) 
			and (horizontal_counter_VGA < h_2_blok4 ) 
			and (vertical_counter_VGA >= v_1_blok_2 ) 
			and (vertical_counter_VGA < v_2_blok_2 )
			and (blok4_2 > 0)
		then	
			if blok4_2 = 2 then
				kolor(0)<='1';
				kolor(1)<='1';
				kolor(2)<='0';
			else
				kolor(0)<='1';
				kolor(1)<='0';
				kolor(2)<='0';
			end if;
		elsif (horizontal_counter_VGA >= h_1_blok5 ) 
			and (horizontal_counter_VGA < h_2_blok5 ) 
			and (vertical_counter_VGA >= v_1_blok_2 ) 
			and (vertical_counter_VGA < v_2_blok_2 )
			and (blok5_2 > 0)
		then	
			if blok5_2 = 2 then
				kolor(0)<='1';
				kolor(1)<='1';
				kolor(2)<='0';
			else
				kolor(0)<='1';
				kolor(1)<='0';
				kolor(2)<='0';
			end if;
			
			
		elsif blok1=0 and blok2=0 and blok3=0 and blok4=0 and blok5=0 then
			kolor(0)<='1';
			kolor(1)<='0';
			kolor(2)<='1';
		else 
			kolor(0)<='0';
			kolor(1)<='0';
			kolor(2)<='0';
		end if;
			
	end if;
end process;



end Behavioral;

