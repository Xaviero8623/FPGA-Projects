----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2025 10:31:47 PM
-- Design Name: 
-- Module Name: LED_and_Gate_TB - Behavioral
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

entity LED_and_Gate_TB is
end LED_and_Gate_TB;

architecture Behavioral of LED_and_Gate_TB is
    signal SW1_tb, SW2_tb, clk_tb, led1_tb, led2_tb, led3_tb : STD_LOGIC;
begin
    dut : entity work.LED_and_Gate
          port map ( SW1 => SW1_tb,
                     SW2 => SW2_tb,
                     clk => clk_tb,
                     led1 => led1_tb,
                     led2 => led2_tb,
                     led3 => led3_tb);
                     
        clock : process
            begin
                clk_tb <= '1'; wait for 10 ns;
                clk_tb <= '0'; wait for 10 ns;
        end process;
                
        test_cases : process
            begin
                SW1_tb <= '0';
                SW2_tb <= '0';
                wait for 15 ns;
                
                SW1_tb <= '1';
                SW2_tb <= '0';
                wait for 20 ns;
                
                SW1_tb <= '0';
                SW2_tb <= '1';
                wait for 20 ns;
                
                SW1_tb <= '1';
                SW2_tb <= '1';
                wait for 20 ns;
            end process;

end Behavioral;
