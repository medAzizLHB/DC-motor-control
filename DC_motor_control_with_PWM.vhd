 --The following DC Motor Code generates PWM pulse to run DC motor.
 --To run the motor in Counter Clockwise direction invert output1 to LOW and Output2 to HIGH.
 --medAzizLHB
 library IEEE;         
            use IEEE.STD_LOGIC_1164.ALL;         
            use IEEE.STD_LOGIC_ARITH.ALL;         
            use IEEE.STD_LOGIC_UNSIGNED.ALL;
        
            entity first is
        
            port ( clk : in std_logic;
        
                   rst : in std_logic;
        

                           enable : out std_logic;
        
                           output1 : out std_logic;
        
                           output2 : out std_logic);
        

            end first;
                
            architecture Behavioral of first is
        
            begin
        
            process(rst,clk)
        
            variable i : integer := 0;
        
            begin
        
            if rst = '1' then
        
            if clk'event and clk = '1'  then
        
            enable <= '1';
        
            if i <= 1005000 then
        
            i := i + 1;
        
            output1 <= '0';
        
            output2 <= '0';
        
            elsif i > 1005000 and i < 1550000 then
        
            i := i + 1;
        
            output1 <= '1';
        
            output2 <= '0';
        
            elsif i = 1550000 then
        
            i := 0;
        
            end if;
        

            end if;
        
            end if;
        
            end process;
        
            end Behavioral;