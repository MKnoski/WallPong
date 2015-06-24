--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ukladzik_drc.vhf
-- /___/   /\     Timestamp : 01/22/2015 14:56:33
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\14.7\ISE_DS\ISE\bin\nt\unwrapped\sch2hdl.exe -intstyle ise -family spartan3e -flat -suppress -vhdl ukladzik_drc.vhf -w C:/.Xilinx/lab13_czw/ukladzik.sch
--Design Name: ukladzik
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ukladzik is
   port ( Clk_50MHz : in    std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
end ukladzik;

architecture BEHAVIORAL of ukladzik is
   signal XLXN_1    : std_logic_vector (2 downto 0);
   component VGA_driver
      port ( Clk50MHz  : in    std_logic; 
             kolor     : in    std_logic_vector (2 downto 0); 
             red_out   : out   std_logic; 
             green_out : out   std_logic; 
             blue_out  : out   std_logic; 
             hs_out    : out   std_logic; 
             vs_out    : out   std_logic; 
             pix_x     : out   std_logic_vector (9 downto 0); 
             pix_y     : out   std_logic_vector (9 downto 0));
   end component;
   
begin
   XLXN_1(2 downto 0) <= b"000";
   XLXI_1 : VGA_driver
      port map (Clk50MHz=>Clk_50MHz,
                kolor(2 downto 0)=>XLXN_1(2 downto 0),
                blue_out=>VGA_B,
                green_out=>VGA_G,
                hs_out=>VGA_HS,
                pix_x=>open,
                pix_y=>open,
                red_out=>VGA_R,
                vs_out=>VGA_VS);
   
end BEHAVIORAL;


