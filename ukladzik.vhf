--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ukladzik.vhf
-- /___/   /\     Timestamp : 05/19/2015 08:53:16
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/WALLPONG_v1.0/ukladzik.vhf -w C:/Users/lab/Desktop/WALLPONG_v1.0/ukladzik.sch
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
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          LCD_E     : out   std_logic; 
          LCD_RS    : out   std_logic; 
          LCD_RW    : out   std_logic; 
          SF_CE     : out   std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic; 
          LCD_D     : inout std_logic_vector (3 downto 0));
end ukladzik;

architecture BEHAVIORAL of ukladzik is
   attribute BOX_TYPE   : string ;
   signal XLXN_20                  : std_logic_vector (2 downto 0);
   signal XLXN_26                  : std_logic_vector (9 downto 0);
   signal XLXN_27                  : std_logic_vector (8 downto 0);
   signal XLXN_47                  : std_logic_vector (7 downto 0);
   signal XLXN_48                  : std_logic;
   signal XLXN_49                  : std_logic;
   signal XLXN_50                  : std_logic;
   signal XLXN_52                  : std_logic;
   signal XLXN_53                  : std_logic;
   signal XLXN_54                  : std_logic;
   signal XLXN_82                  : std_logic_vector (63 downto 0);
   signal XLXI_13_Blank_openSignal : std_logic_vector (15 downto 0);
   signal XLXI_13_Reset_openSignal : std_logic;
   component obraz
      port ( right    : in    std_logic; 
             left     : in    std_logic; 
             Clk50MHz : in    std_logic; 
             pix_x    : in    std_logic_vector (9 downto 0); 
             pix_y    : in    std_logic_vector (8 downto 0); 
             kolor    : out   std_logic_vector (2 downto 0); 
             score    : out   std_logic_vector (63 downto 0));
   end component;
   
   component VGA_driver
      port ( Clk50MHz  : in    std_logic; 
             kolor     : in    std_logic_vector (2 downto 0); 
             red_out   : out   std_logic; 
             green_out : out   std_logic; 
             blue_out  : out   std_logic; 
             hs_out    : out   std_logic; 
             vs_out    : out   std_logic; 
             pix_x     : out   std_logic_vector (9 downto 0); 
             pix_y     : out   std_logic_vector (8 downto 0));
   end component;
   
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component KBD_driver
      port ( D0_Rdy : in    std_logic; 
             E0     : in    std_logic; 
             D0     : in    std_logic_vector (7 downto 0); 
             right  : out   std_logic; 
             left   : out   std_logic);
   end component;
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
   end component;
   
begin
   XLXI_3 : obraz
      port map (Clk50MHz=>Clk_50MHz,
                left=>XLXN_49,
                pix_x(9 downto 0)=>XLXN_26(9 downto 0),
                pix_y(8 downto 0)=>XLXN_27(8 downto 0),
                right=>XLXN_50,
                kolor(2 downto 0)=>XLXN_20(2 downto 0),
                score(63 downto 0)=>XLXN_82(63 downto 0));
   
   XLXI_4 : VGA_driver
      port map (Clk50MHz=>Clk_50MHz,
                kolor(2 downto 0)=>XLXN_20(2 downto 0),
                blue_out=>VGA_B,
                green_out=>VGA_G,
                hs_out=>VGA_HS,
                pix_x(9 downto 0)=>XLXN_26(9 downto 0),
                pix_y(8 downto 0)=>XLXN_27(8 downto 0),
                red_out=>VGA_R,
                vs_out=>VGA_VS);
   
   XLXI_5 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_47(7 downto 0),
                DO_Rdy=>XLXN_48,
                E0=>XLXN_52,
                F0=>XLXN_53);
   
   XLXI_7 : KBD_driver
      port map (D0(7 downto 0)=>XLXN_47(7 downto 0),
                D0_Rdy=>XLXN_48,
                E0=>XLXN_54,
                left=>XLXN_49,
                right=>XLXN_50);
   
   XLXI_9 : AND2B1
      port map (I0=>XLXN_53,
                I1=>XLXN_52,
                O=>XLXN_54);
   
   XLXI_13 : LCD1x64
      port map (Blank(15 downto 0)=>XLXI_13_Blank_openSignal(15 downto 0),
                Clk_50MHz=>Clk_50MHz,
                Line(63 downto 0)=>XLXN_82(63 downto 0),
                Reset=>XLXI_13_Reset_openSignal,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
end BEHAVIORAL;


