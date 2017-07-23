----------------------------------------------------------------------------------
-- Company: TBH Media Limited
-- Engineer: Sonikku
--
--                              ______
--	                      _.-*'"      "`*-._
--	                _.-*'                  `*-._
--	             .-'                            `-.
--	  /`-.    .-'                  _.              `-.
--	 :    `..'                  .-'_ .                `.
--	 |    .'                 .-'_.' \ .                 \
--	 |   /                 .' .*     ;               .-'"
--	 :   L                    `.     | ;          .-'
--	  \.' `*.          .-*"*-.  `.   ; |        .'
--	  /      \        '       `.  `-'  ;      .'
--	 : .'"`.  .       .-*'`*-.  \     .      (_
--	 |              .'        \  .             `*-.
--	 |.     .      /           ;                   `-.
--	 :    db      '       d$b  |                      `-.
--	 .   :PT;.   '       :P"T; :                         `.
--	 :   :bd;   '        :b_d; :                           \
--	 |   :$$; `'         :$$$; |                            \
--	 |    TP              T$P  '                             ;
--	 :                        /.-*'"`.                       |
--	.sdP^T$bs.               /'       \
--	$$$._.$$$$b.--._      _.'   .--.   ;
--	`*$$$$$$P*'     `*--*'     '  / \  :
--	   \                        .'   ; ;
--	    `.                  _.-'    ' /
--	      `*-.                      .'
--	          `*-._            _.-*'
--	               `*=--..--=*'
--
--
-- Create Date:    20:00:08 04/12/2016 
-- Design Name: 
-- Module Name:    UpDownCounter4Bit - Behavioral 
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
--
-- Library declarations
-----------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entity Declaration
---------------------
entity UpDownCounter4Bit is
		Port (
					count_out : out std_logic_vector(3 downto 0);
					dir : in std_logic;
					count_in : in std_logic);
end UpDownCounter4Bit;

-- Architectural Declaration
-----------------------------
architecture Behavioral of UpDownCounter4Bit is

signal 		        int_count : std_logic_vector(3 downto 0);   -- internal 4-bit counter


-- Circuit Description
------------------------
begin
	
	-- When input clock goes high, we do a count
	counter : process(count_in)
	begin
		--if (rising_edge(count_in)) then
		  if (count_in'Event and count_in='1') then
			if dir='1' then
			    int_count <= int_count + 1;
			else 
             int_count <= int_count - 1;
         end if;				 
		end if;	
   end process counter;
	
	count_out <= int_count;	-- this is placed outside of the process... so that it is NOT SYNCHRONIZED TO THE PROCESS which will cause double buffering and all sorts of shit.

end Behavioral;

