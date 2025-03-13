

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Four_Bit_Register is
    port(sw1, sw2, sw3, sw4, reset, clk_button, clk : in STD_LOGIC;
         led1, led2, led3, led4 : out STD_LOGIC);
end Four_Bit_Register;

architecture Behavioral of Four_Bit_Register is
signal clk_button_prev : STD_LOGIC := '0';
signal debounce : STD_LOGIC := '0';
signal flipflop_1, flipflop_2 : STD_LOGIC := '0';

begin
    
    dobouncer : process(clk, reset)
    begin
        if (rising_edge(clk)) then
            flipflop_1 <= clk_button;
            flipflop_2 <= flipflop_1;
            debounce <= flipflop_1 and flipflop_2;
        end if;
    end process;
    
    four_bit_register : process(clk, reset)
        begin
            if(reset = '1') then
                led1 <= '0';
                led2 <= '0';
                led3 <= '0';
                led4 <= '0';
            elsif(rising_edge(clk)) then 
                if(debounce = '1' and clk_button_prev = '0') then
                led1 <= sw1;
                led2 <= sw2;
                led3 <= sw3;
                led4 <= sw4;
                end if;
                clk_button_prev <= debounce;
            end if;
        end process;

end Behavioral;
