library ieee;
use ieee.std_logic_1164.all;

entity D_Flip_Flop_load_32 is
  port (
    clock : in  std_logic;          
    reset : in  std_logic;            
    d     : in  std_logic_vector(31 downto 0); 
    q     : out std_logic_vector(31 downto 0); 
    load  : in  std_logic             
);
end D_Flip_Flop_load_32;

architecture rtl of D_Flip_Flop_load_32 is

  component D_Flip_Flop_Load is
  port (
    clock : in  std_logic;            
    reset : in  std_logic;              
    d     : in  std_logic;             
    q     : out std_logic;            
    load  : in  std_logic               
    );
end component;
  
begin  

c: for i IN 0 to 31 generate
dff32 : D_Flip_Flop_Load port map ( clock, reset, d(i),  q(i),  load );
end generate;


end rtl;
