----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/07/01 20:01:41
-- Design Name: 
-- Module Name: logic1 - Behavioral
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

entity logic1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           out_and : out STD_LOGIC;
           out_or : out STD_LOGIC;
           out_not_A :out std_logic );
end logic1;

architecture Behavioral of logic1 is

begin
 out_and <= A and B;
 out_or <= A or B;
 out_not_A <= not A;
 
end Behavioral;

