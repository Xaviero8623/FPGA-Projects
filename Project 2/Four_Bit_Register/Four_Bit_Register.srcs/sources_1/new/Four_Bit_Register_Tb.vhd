


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Four_Bit_Register_Tb is
end Four_Bit_Register_Tb;

architecture Behavioral of Four_Bit_Register_Tb is
    Signal sw1_tb, sw2_tb, sw3_tb, sw4_tb, reset_tb, clk_button_tb, clk_tb, bit1_tb, bit2_tb, bit3_tb, bit4_tb : STD_LOGIC;
begin
    dut : entity work.Four_Bit_Register
        port map (sw1 => sw1_tb,
                  sw2 => sw2_tb,
                  sw3 => sw3_tb,
                  sw4 => sw4_tb,
                  reset => reset_tb,
                  clk_button => clk_button_tb,
                  clk => clk_tb,
                  led1 => bit1_tb,
                  led2 => bit2_tb,
                  led3 => bit3_tb,
                  led4 => bit4_tb);
                  
         fpga_clock : process
         begin
            clk_tb <= '1'; wait for 1 ns;
            clk_tb <= '0'; wait for 1 ns;
         end process;
         
         test_case : process
         begin
            clk_button_tb <= '0';
            reset_tb <= '0';
            sw1_tb <= '1';
            sw2_tb <= '0';
            sw3_tb <= '1';
            sw4_tb <= '0';
            wait for 10 ns;
            clk_button_tb <= '1';
            wait for 3 ns;
            clk_button_tb <= '0';
            
            wait for 20 ns;
            
            sw1_tb <= '0';
            sw3_tb <= '0';
            sw2_tb <= '1';
            wait for 11 ns;
            clk_button_tb <= '1';
            wait for 3 ns;
            clk_button_tb <= '0';
            
            wait for 20 ns;
            
            sw1_tb <= '1';
            sw2_tb <= '1';
            sw3_tb <= '1';
            sw4_tb <= '1';
            wait for 11 ns;
            clk_button_tb <= '1';
            wait for 3 ns;
            clk_button_tb <= '0';
            
            wait for 20 ns;
            
            reset_tb <= '1';
            
            wait for 20 ns;
            
        end process;
            
            
            


end Behavioral;
