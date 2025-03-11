----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2025 09:55:49 PM
-- Design Name: 
-- Module Name: LED_and_Gate - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LED_and_Gate is
  Port(SW1, SW2, clk: in STD_LOGIC;
       led1, led2, led3: out STD_LOGIC);
end LED_and_Gate;

architecture Behavioral of LED_and_Gate is
signal SW_bus : STD_LOGIC_VECTOR(1 downto 0);
begin
    SW_bus(0) <= SW1;
    SW_bus(1) <= SW2;
    
    and_gate :process(clk)  
        begin
            if (rising_edge(clk)) then
                case SW_bus is
                    when "00" =>
                        led1 <= '0';
                        led2 <= '0';
                        led3 <= '0';
                    when "01" =>
                        led1 <= '1';
                        led2 <= '0';
                        led3 <= '0';
                    when "10" =>
                        led1 <= '0';
                        led2 <= '1';
                        led3 <= '0';
                    when "11" =>
                        led1 <= '0';
                        led2 <= '0';
                        led3 <= '1';
                    when others =>
                        led1 <= '0';
                        led2 <= '0';
                        led3 <= '0';                    
                end case;
            end if;

    end process and_gate;
end Behavioral;
