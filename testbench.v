LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

ENTITY logictest IS
END logictest;

ARCHITECTURE behavior OF logictest IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT logic1
    PORT(
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           out_and : out STD_LOGIC;
           out_or : out STD_LOGIC;
           out_not_A :out std_logic 
        );
    END COMPONENT;


   --Inputs
   signal  A :  STD_LOGIC :='0' ;
   signal  B :  STD_LOGIC :='0' ;
   
   
   signal  out_and : STD_LOGIC;
   signal  out_or :  STD_LOGIC;
   signal  out_not_A :std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
   uut: logic1 PORT MAP (
          A => A,
          B => B,
          out_and  => out_and,
          out_not_A => out_not_A,
          out_or => out_or
        );


   -- Stimulus process
   process
   begin
      -- hold for 100 ns.
        wait for 100ns;
        A <= '0';
        B <= '0';
        wait for 100ns;
        A <= '1';
        B <= '0';   
        wait for 100ns;
        A <= '0';
        B <= '1';
        wait for 100ns;
        A <= '1';
        B <= '1';
      -- insert stimulus here

      wait;
   end process;

END;